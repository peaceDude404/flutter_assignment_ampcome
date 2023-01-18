import 'package:flutter/material.dart';
import '../genre_screen.dart';

class Genres extends StatelessWidget {
  const Genres({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Genres*",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton( 
            style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(
                        color: Colors.white54,
                        style: BorderStyle.solid))),
            onPressed: () {
              creation();
              CircularProgressIndicator();
              Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) => GenreScreen()),  
            );  
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon( Icons.arrow_downward_outlined, color: Colors.white54, size: 40,),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
