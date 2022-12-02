
///  where - true , false

void main(){
  List<Map<String, String>> person = [
    {'name' : '제라드',
      'team' : '리버풀',
    },
    {'name' : '뎀바바',
      'team' : '첼시',
    },
    {'name' : 'RM',
      'team' : 'BTS',
    },
    {'name' : '정국',
      'team' : 'BTS',
    },
  ];

  print(person);


  final blackPink = person.where((e) => e['group'] == '블랙핑크').toList();
  print(blackPink);

  final bts = person.where((element) => element['group'] == 'BTS').toSet();
  print(bts);

}