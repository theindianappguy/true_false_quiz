class QuestionModel{

  String question;
  String answer;
  String imageUrl;

  QuestionModel({this.question,this.answer});

  void setQuestion(String getQuestion){
    question = getQuestion;
  }

  void setAnswer(String getAnswer){
    answer = getAnswer;
  }

  void setImageUrl(String getImageUrl){
    imageUrl = getImageUrl;
  }

  String getQuestion(){
    return question;
  }

  String getAnswer(){
    return answer;
  }

  String getImageUrl(){
    return imageUrl;
  }

}