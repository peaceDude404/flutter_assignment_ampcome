import 'package:flutter/material.dart';
import '../genre_screen.dart';

class SelectedGenre extends StatefulWidget {
  const SelectedGenre({super.key});

  @override
  State<SelectedGenre> createState() => _SelectedGenreState();
}

class _SelectedGenreState extends State<SelectedGenre> {
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
        Wrap(
          // alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ...List.generate(pickedGenre.length + 1, (index) {
              if (index == pickedGenre.length) {
                return IconButton(
                  icon: Icon(Icons.add, color: Colors.orange.shade400),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GenreScreen()),
                    );
                  },
                );
              }
              else 
                return ElevatedButton(
                    onPressed: (() {
                      genreList[pickedGenre[index]].isSelect = false;
                      pickedGenre.remove(pickedGenre[index]);
                      setState(() {
                        
                      });
                    }),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              side: BorderSide(color: Colors.black))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orange.shade400),
                    ),
                    child: Text(
                      genreList[pickedGenre[index]].name,
                      style: TextStyle(color: Colors.black),
                    ));
              // return Container(width: 0, height: 0,);
            }),
            // SizedBox(height: 40),
          ],
        ),
      ],
    );
  }
}