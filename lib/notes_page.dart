import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final TextEditingController _noteController = TextEditingController();
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Notes Page"),
        backgroundColor: isDark ? Colors.grey[850] : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // Implement save functionality
              String noteContent = _noteController.text;
              // Save the noteContent with user-defined name here
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Note saved!')),
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {

          FocusScope.of(context).unfocus();
        },
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: EditableText(
              controller: _noteController,
              focusNode: _focusNode,
              style: _textTheme.bodyMedium!.copyWith(
                color: isDark ? Colors.white : Colors.black,
              )!,
              cursorColor: Colors.blue,
              backgroundCursorColor: Colors.blue,
              maxLines: null,
            ),
          ),
        ),
      ),
    );
  }
}
