
String getRate(double rate){
  if(rate < 2){
    return "Good";
  }else if(rate < 3 && rate > 2){
    return "Great";
  }else {
    return "Very Good";
  }
}