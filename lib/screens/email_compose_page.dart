import 'package:flutter/material.dart';

class EmailComposeScreen extends StatelessWidget {
  const EmailComposeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.send, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From: rizwan16@frsharmail.com",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "To:",
                border: InputBorder.none,
              ),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                hintText: "Subject:",
                border: InputBorder.none,
              ),
            ),
            Divider(),
            Expanded(
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            Divider(),
            Row(
              children: [
                IconButton(icon: Icon(Icons.format_bold), onPressed: () {}),
                IconButton(icon: Icon(Icons.format_italic), onPressed: () {}),
                IconButton(
                  icon: Icon(Icons.format_underline),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.format_align_left),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.format_list_bulleted),
                  onPressed: () {},
                ),
                Text("12"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
