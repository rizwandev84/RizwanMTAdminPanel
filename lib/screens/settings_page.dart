import 'package:flutter/material.dart';

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'General Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          SettingsTile(icon: Icons.settings, title: 'General Settings'),
          SettingsTile(icon: Icons.contact_mail, title: 'Contact Us'),
          SettingsTile(icon: Icons.question_answer, title: 'FAQ'),
          Divider(height: 20, thickness: 1),
          SettingsTile(icon: Icons.delete_forever, title: 'Account Delete'),
        ],
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;

  SettingsTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1),
          ],
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.black54),
          title: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.black54,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
