import 'package:flutter/material.dart';
import 'package:classic/theme/theme_manager.dart';
import 'package:classic/theme/theme_constants.dart';

class NotesPage extends StatelessWidget {
  final String name;
  final ThemeManager themeManager;

  const NotesPage({Key? key, required this.name, required this.themeManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Notes for $name"),
        backgroundColor: isDark ? Colors.grey[850] : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.wb_sunny : Icons.nights_stay),
            onPressed: () {
              themeManager.toggleTheme(!isDark);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          maxLines: null,
          keyboardType: TextInputType.multiline,
          style: TextStyles.bodyText.copyWith(color: isDark ? Colors.white : Colors.black),
          decoration: InputDecoration.collapsed(
            hintText: "Write your notes here...",
          ),
        ),
      ),
    );
  }
}
