

class Photos{

  var albumId;
  var id;
  var title;
  var url;
  var thumbnailUrl;

  Photos({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});
  Photos.init({this.albumId, this.title, this.url, this.thumbnailUrl});

  Photos.fromJson(Map<String, dynamic> mapData)
    : albumId = mapData["albumId"],
        id = mapData["id"],
        title = mapData["title"],
        url = mapData["url"],
        thumbnailUrl = mapData["thumbnailUrl"];
}