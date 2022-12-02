void main(){

}

  class Person{
    String? _name;

    // String? get name => _name;    //getter 기본형태
    // set name(String? name) => _name = name;

  // String? get getName => _name;
  // set setName(String? name) => _name = name;

    String? get getName => (_name == null) ? '홍' : _name;
    set setName(String? name) => (name == null) ? 'Part' : _name = name;
}