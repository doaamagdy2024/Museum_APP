class User {
  String username;
  String password;
  int type_;
  String Reg_date;
  User(this.username, this.password, this.type_, this.Reg_date);
}

class Member {
  String Fname;
  String Sname;
  String Lname;
  String gender;
  int id;
  String birthday;
  String username;
  String phoneNumber;
  late String image;
  Member(this.Fname, this.Sname, this.Lname, this.gender, this.id,
      this.birthday, this.username, this.phoneNumber);
}

class Article {
  int id;
  String state;
  String content;
  int likes;
  int views;
  String header;
  int Member_ID;
  Article(this.id, this.state, this.content, this.likes, this.views,
      this.header, this.Member_ID);
}

class Event {
  int id;
  String Date_start;
  String Date_end;
  String description;
  String theme;
  String title;
  int sec_number;
  int staff_id;
  int Member_ID;
  Event(this.id, this.Date_start, this.Date_end, this.description, this.theme,
      this.title, this.sec_number, this.staff_id, this.Member_ID);
}

class Tour {
  int id;
  String place;
  String description;
  String topic;
  String Date_start;
  String Date_end;
  String title;
  int staff_id;
  int Member_ID;
  Tour(this.id, this.place, this.description, this.topic, this.Date_start,
      this.Date_end, this.staff_id, this.title, this.Member_ID);
}

class Souvenir {
  int id;
  String Name;
  int price;
  int quantity;
  String description;
  int Member_ID;

  Souvenir(this.id, this.Name, this.price, this.quantity, this.description,
      this.Member_ID);
}

class Researcher {
  String fName;
  String mName;
  String lName;
  int id;
  String birthday;
  String username;
  int yearsExpert;
  Researcher(this.id, this.fName, this.mName, this.lName,
      this.birthday, this.yearsExpert, this.username) {}
}
class resArticle {
  int id;
  String content;
  String state;
  String header;
  late int views;
  late int likes;
  late int reviews;
  resArticle(this.id, this.state, this.content, this.header, views, likes, reviews)
  {
    if(views) {this.views = views;}
    else {views = 0;}
    if(likes) {this.likes = likes;}
    else {likes = 0;}
    if(reviews) {this.reviews = reviews;}
    else {reviews = 0;}
  }
}