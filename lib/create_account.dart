import 'package:flutter_assignment/components/performancetype.dart';
import 'components/email.dart';
import 'components/firstname.dart';
import 'components/genres.dart';
import 'components/lastname.dart';
import 'components/mobileno.dart';
import 'genre_screen.dart';
import 'package:flutter/material.dart';
import 'components/SelectedGenre.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  Widget callGenre(){
    int count = 0;
    for(var i=0;i<genreList.length;i++){
      if(genreList[i].isSelect == true){
        count++;
        break;
      }
    }
    if(count == 0){
      return Genres();
    }
    return SelectedGenre();
  }

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
            title: Column(
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
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FirstName(),
                LastName(),
                MobileNo(),
                Email(),
                callGenre(),
                PerformanceType(),
                SizedBox(height: 40),
                TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange.shade400)),
                onPressed: (){
          
                }, 
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: Center(child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 20),))
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

