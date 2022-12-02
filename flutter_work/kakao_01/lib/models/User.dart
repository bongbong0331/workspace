class User {
  var backgroundImage;
  var name;
  var intro;

  User({this.backgroundImage, required this.name, required this.intro});
}

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

// 내 정보
User me =
    User(backgroundImage: "${_urlPrefix}_me.jpg", name: "야스오", intro: "자두과자");

List<User> friends = [
  User(
    backgroundImage: "${_urlPrefix}_man_1.jpg",
    name: "제이슨스타뎀",
    intro: "나는 빡빡이다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_1.jpg",
    name: "홍길동2",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_2.jpg",
    name: "홍길동3",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_2.jpg",
    name: "홍길동4",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_3.jpg",
    name: "홍길5동",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_3.jpg",
    name: "홍길동6",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_4.jpg",
    name: "홍길동7",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_4.jpg",
    name: "홍길동8",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_5.jpg",
    name: "홍길동9",
    intro: "자두과자",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_5.jpg",
    name: "홍길동10",
    intro: "자두과자",
  ),
];
