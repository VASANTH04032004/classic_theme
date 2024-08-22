import 'package:flutter/material.dart';

import 'notes_page.dart'; // Import the NotesPage

class ProfilePage extends StatefulWidget {
  final String content;

  ProfilePage({required this.content});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = "User";
  Map<String, String> savedNotes = {};

  @override
  void initState() {
    super.initState();
    loadNotes();
  }

  void loadNotes() {

    savedNotes = {};
  }

  void _navigateToNotesPage() async {
    final noteContent = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotesPage()),
    );
    if (noteContent != null && noteContent is String) {
      setState(() {

        savedNotes[userName] = noteContent;
      });
    }
  }

  void _changeUserName() async {
    String? newName = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        TextEditingController controller = TextEditingController(text: userName);
        return AlertDialog(
          title: Text("Change Name"),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Enter new name"),
          ),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Save"),
              onPressed: () {
                Navigator.pop(context, controller.text);
              },
            ),
          ],
        );
      },
    );
    if (newName != null && newName.isNotEmpty) {
      setState(() {
        userName = newName;
        // Save notes with the new name
        savedNotes[userName] = savedNotes.remove(userName) ?? "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: isDark ? Colors.grey[850] : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _navigateToNotesPage,
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: _changeUserName,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Text(
            "Notes for $userName",
            style: _textTheme.headlineMedium?.copyWith(
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
          if (widget.content.isNotEmpty)
            Text(
              widget.content,
              style: _textTheme.bodyMedium?.copyWith(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
          ...savedNotes.entries.map((entry) => ListTile(
            title: Text(entry.value),
            subtitle: Text(entry.key),
          )),
        ],
      ),
    );
  }
}
