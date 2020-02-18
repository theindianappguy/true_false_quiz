import 'package:flutter/material.dart';
import 'package:true_false_quiz/views/play_quiz.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => PlayQuiz()
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12,horizontal: 54),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(24)
                ),
                child: Text("Start Quiz Now ", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}