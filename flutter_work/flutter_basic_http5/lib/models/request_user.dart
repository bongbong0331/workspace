class RequestUser{


  var id;
  var username;
  var password;
  var email;
  var created;
  var updated;

  RequestUser({this.username, this.password, this.email});



  Map<String, dynamic> toJson(){
    Map<String, dynamic> data = {};
       data['username'] = username.toString();
       data['password'] = password.toString();
       // data['email'] = email.toString();
       return data;
  }
  Map<String, dynamic> toJsonPutUser(){
    Map<String, dynamic> data = {};
    // data['username'] = username.toString();
    data['password'] = password.toString();
    data['email'] = email.toString();
    return data;
  }



  @override
  String toString() {
    return 'RequestUser{username: $username, password: $password, email: $email}';
  }


}