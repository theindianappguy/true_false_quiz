import 'package:flutter/material.dart';
import 'package:true_false_quiz/data/data.dart';
import 'package:true_false_quiz/models/question_model.dart';
import 'package:true_false_quiz/views/homepage.dart';

class PlayQuiz extends StatefulWidget {
  @override
  _PlayQuizState createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {

  List<QuestionModel> questions = new List<QuestionModel>();
  int index = 0;
  int points = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    questions = getQuestions();
  }

  void nextQuestion(){
    if(index < questions.length - 1){
      index ++;
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => HomePage()
      ));
    }
  }

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
            Column(
              children: <Widget>[
                Text("$points", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),),
                Text("Points", style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300
                ),)
              ],
            ),
            SizedBox(height: 40,),
            Text(
              questions[index].getQuestion(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        if(questions[index].getAnswer() == "True"){
                          setState(() {
                            points = points + 20;
                            nextQuestion();
                          });
                        }else {
                          setState(() {
                            points = points - 5;
                            nextQuestion();
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(24)
                        ),
                        child: Text(
                          "True",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
                SizedBox(width: 20,),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        if(questions[index].getAnswer() == "False"){
                          setState(() {
                            points = points + 20;
                            nextQuestion();
                          });
                        }else {
                          setState(() {
                            points = points - 5;
                            nextQuestion();
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(24)
                        ),
                        child: Text(
                          "False",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
