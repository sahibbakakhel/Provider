import 'package:flutter/material.dart';
import 'package:myproject/provider/Theme_changer_provider.dart';
import 'package:provider/provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChangerProvider= Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Subscribe')),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light, 
            groupValue: themeChangerProvider.themeMode, 
            onChanged: themeChangerProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
            value: ThemeMode.dark, 
            groupValue: themeChangerProvider.themeMode, 
            onChanged: themeChangerProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('System Mode'),
            value: ThemeMode.dark, 
            groupValue: themeChangerProvider.themeMode, 
            onChanged: themeChangerProvider.setTheme,
          ),
          Icon(Icons.favorite),
        ],
      ),
    );
  }
}