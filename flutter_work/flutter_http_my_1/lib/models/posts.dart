class Posts{
  final int userId;
  final int id;
  final String title;
  final String body;

  Posts(this.userId, this.id, this.title, this.body);

  // Map <String , dynamic>
  Posts.fromJson(Map<String, dynamic> map)
  : userId = map['userId'],
  id = map['id'],
  title = map['title'],
  body = map['body'];

}