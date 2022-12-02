import 'package:flutter/material.dart';

class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String massage;
  final String? imageUri;

  ChatMessage(
      {required this.sender,
      required this.profileImage,
      required this.location,
      required this.sendDate,
      required this.massage,
      this.imageUri});
}

// 샘플 데이터
List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: "당근당근",
    profileImage:
        "https://placeimg.com/200/100/people/grayscale",
    location: "분당",
    sendDate: "2일전",
    massage: "물품 있나요? 직거래 가능?",
  ),
  ChatMessage(
    sender: "사과사과",
    profileImage:
    "https://placeimg.com/200/100/people",
    location: "중동",
    sendDate: "1일전",
    massage: "안녕하세요 구매 가능할까요? 남자임 찐짜임ㅋㅋㅋㅋㅋㅋㅂㅂ",
    imageUri: "https://placeimg.com/200/100/people/grayscale"
  ),
];
