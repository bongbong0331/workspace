class ResponseUser{


  var id;
  var username;
  var password;
  var email;
  var created;
  var updated;


  //  {"code":1,"msg":"success","data":{"id":151,"username":"lsw","password":null,"email":"lsw@naver.com","created":"2022-11-17T05:22:45","updated":"2022-11-17T05:22:45"}}

  ResponseUser.fromJson(Map<String, dynamic> map)
  :     id = map["id"],
        username = map["username"],
        password = map["password"],
        email = map["email"],
        created = map["created"],
        updated = map["updated"];

  @override
  String toString() {
    return '서버로 부터 응답 : {id: $id, username: $username, password: $password, email: $email, created: $created, updated: $updated}';
  }
}