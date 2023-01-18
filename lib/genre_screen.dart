import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:flutter_assignment/create_account.dart';

class GenreScreen extends StatefulWidget {
  const GenreScreen({super.key});

  @override
  State<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black87,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: AppBar(
            toolbarHeight: 120,
            backgroundColor: Colors.black,
            title: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: CloseButton(
                          color: Colors.black,
                          onPressed: (() {}),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Let's create your ",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.orange.shade400,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Genres',
                  style: TextStyle(color: Colors.orange.shade400),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                  child: Container(
                    color: Colors.black,
                    height: 600,
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 10,
                        // scrollDirection: Axis.vertical,
                        // direction: Axis.vertical,
                        children: [
                          ...List.generate(
                              genreList.length,
                              (index) => ElevatedButton(
                                  onPressed: (() {
                                    if (genreList[index].isSelect == true) {
                                      pickedGenre.remove(index);
                                      genreList[index].isSelect = false;
                                      genreList[index]._color = Colors.white;
                                    } else {
                                      pickedGenre.add(index);
                                      genreList[index].isSelect = true;
                                      genreList[index]._color =
                                          Colors.orange.shade400;
                                    }
                                    setState(() {});
                                  }),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            side: BorderSide(
                                                color: Colors.black))),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            genreList[index]._color),
                                  ),
                                  child: Text(
                                    genreList[index].name,
                                    style: TextStyle(color: Colors.black),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                              color: Colors.orange.shade400, fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Text(
                          'OK',
                          style: TextStyle(
                              color: Colors.orange.shade400, fontSize: 20),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Gen {
  String name;
  bool isSelect;
  Color _color;
  Gen(this.name, this.isSelect, this._color);
}

List<int> pickedGenre = [];
List<Gen> genreList = [];

var datares = json.decode(dataJson);

void creation() {
  datares.forEach((k, v) {
    for (var i = 0; i < v['genres'].length; i++) {
      v['genres'][i].forEach((key, value) {
        genreList.add(Gen(value, false, Colors.white));
      });
    }
  });
}

var dataJson =
    '{"data":{"genres":[{"name":"Jazz"},{"name":"Classical"},{"name":"Rock"},{"name":"Techno"},{"name":"Trance"},{"name":"Metal"},{"name":"Folk"},{"name":"Pop"},{"name":"Hip Hop"},{"name":"Black Metal"},{"name":"Bass"},{"name":"Soul Music"},{"name":"Country Music"},{"name":"Blues"},{"name":"Electronic"},{"name":"Punk Rock"},{"name":"Disco"},{"name":"Pop Rock"},{"name":"Indie Rock"},{"name":"Orchestra"},{"name":"Ambient Music"},{"name":"World Music"},{"name":"Opera"},{"name":"Contemporary"},{"name":"Drum & Bass"},{"name":"Experimental"},{"name":"Death Metal"},{"name":"Synth Pop"},{"name":"Trap"},{"name":"Breakbeat"},{"name":"Dutch Rock"},{"name":"Frenchcore"},{"name":"Gabber"},{"name":"Indorock"},{"name":"Jordaanlied"},{"name":"Levenslied"},{"name":"Nederpop"},{"name":"Palingsound"},{"name":"Ultra"}]}}';
