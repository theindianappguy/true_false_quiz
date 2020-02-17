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
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => PlayQuiz()
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12,horizontal: 54),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(24)
                ),
                child: Text("Play", style: TextStyle(
                    color: Colors.white,
                    fontSize: 17
                ),),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 54),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Text("Help", style: TextStyle(
                  color: Colors.white,
                  fontSize: 17
              ),),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 54),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Text("Rate Us", style: TextStyle(
                  color: Colors.white,
                  fontSize: 17
              ),),
            ),
          ],
        ),
      ),
    );
  }
}