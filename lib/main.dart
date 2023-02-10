import 'package:flutter/material.dart';

void main() {

  final ogr= {

    'adi':'derya',

    'soyadi':'telli',

    'yas':20,

    'cinsiyet':'kiz',

    'not':100,

  };

  print(ogr);



  final ali= Ogrenci('ali','yilmaz',12,'erkek',16);

  final derya= Ogrenci('derya','telli',20,'kiz',100);

  print(ali.adi);
  print(ali); // bunu yazdirmasi icin toString metotunu kullanmaliyim classlarin onu ovverride etmedik onu yapacagiz
  // "fn alt insert " generate aciyorum ve 5.yoruma git
  print(derya);

  if(derya.ortalamaUstuMu(56)){ // sayi girdigim yer classda verdigim ortalama degeri
    print('bravo derya!');
  }
  if(ali.ortalamaUstuMu(56)){
    print('bravo ali!');
  }

  print(derya.adiSoyadi);// classin icinde bir degiskenmis gibi bir fiel mis gibi kullanabiliyorum

// ama aslinda get kodu calisyor

  derya.adiSoyadi='Defne telli'; // sette yazdigim kodla adi istedigim sekilde degistire bildim

  print(derya.adiSoyadi);

  print(derya.adi);

  print(derya.soyadi);



  print(Okuladi); // buda global fonsiyonun kodunun ortin edilmesi

  print(Ogrenci.Okulismi);// bu static kodun yazilmasi

  yeniOkulismi('ATATURK LISE');

  Ogrenci.yeniOkuladi('AY DEDE OKULU ');

  print(Okuladi);

  print(Ogrenci.Okulismi);
}

String Okuladi='yalinayak ortaokulu';
void yeniOkulismi (String yeniOkulismi){
  Okuladi=yeniOkulismi;

}

class Ogrenci{
  static String Okulismi='yalinayak ortaokulu';
  static void yeniOkuladi (String yeniOkuladi){
    Okulismi=yeniOkuladi;

  }

  String adi;
  String soyadi;
  int yas;
  String cinsiyet;
  int not;
  bool mezunMu; // degerini constructor da tanimlarken initializer liste yapacagiz
  // bu consturctol'la noktali virgul arasinda iki nokta ustuste koyuyoruz
  Ogrenci(this.adi, this.soyadi, this.yas, this.cinsiyet, this.not) : mezunMu=false; // mezunMu=false intializer list mezunMú`yu ilk degerini vermis oldu

  bool ortalamaUstuMu(int ortalama ){
    return not>ortalama;
  }

  String get adiSoyadi => '$adi $soyadi';// tek tirnak yerine suslu parantezde kullanabilirsin

  set adiSoyadi(String value){
    int bosluk=value.indexOf(' ');
    adi=value.substring(0 , bosluk);
    soyadi=value.substring(bosluk+1); // bu kodla arttik ad soyadi degistirebiliyorum set bu ozelligi getriyor
  }
  //constructor a bunlarin hepsini parametre olarak aldik eger almasaydik kodumu yukarda yazilanla kalamazdi sadece
  @override
  String toString() {
    // 5.yorum bir classin printle yazilabilmesini saglamak icin bunu yapiyoruz
    return '$adi, $soyadi,$yas,$cinsiyet,$not,$mezunMu';
  }

}

