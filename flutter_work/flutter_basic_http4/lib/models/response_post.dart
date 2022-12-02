

class ResponsePost{

  var id;
  var title;
  var body;
  var userId;

  // 네임드 생성자~ㅋㅋ
  ResponsePost.fromJson(Map<String, dynamic> map)
  :     id = map["id"],
        title = map["title"],
        body = map["body"],
        userId = map["userId"];

  @override
  String toString() {
    return '서버로 부터 응답 : {id: $id, title: $title, body: $body, userId: $userId}';
  }
}