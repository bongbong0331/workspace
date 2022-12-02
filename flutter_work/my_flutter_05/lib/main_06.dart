/// T extends 를 사용한 프로그래밍
/// T 에 무작위 클랙스가 들어갈 수 없게 특정 클래스를 상속받은 클래스로만 한정


class Water{

}

void main(){

  GenericPrinter<Plastic> printer1 = GenericPrinter();  // 상속받은것 외엔 못들어감~
  GenericPrinter<Powder> printer2 = GenericPrinter();
  // GenericPrinter<Water> printer3 = GenericPrinter(); <<<< 사용 불가 !
}


class GenericPrinter<T extends Material>{

  late T material;

  T getMaterial(){
    return material;
  }

  void setMaterial(T material){
    this.material = material;
  }
}

abstract class Material{
  void doPrinting();
}



class Powder extends Material{
  @override
  void doPrinting() {
    // TODO: implement doPrinting
  }


}



class Plastic extends Material{
  @override
  void doPrinting() {
    // TODO: implement doPrinting
  }


}