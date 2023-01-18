import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
                "Email*",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.orange.shade400,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white54,),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
      ],
    );
  }
}