// Developed in Motoko Playground in Motoko Programming Language

// Hesap Makinesi
// Değişkenler (let => immutable, var => mutable)
// Canister => Akıllı sözleşme

actor hesap_makinesi
{
var hucre: Int = 0;

// Toplama Fonksiyonu
public func toplama(s: Int) : async Int 
{
  hucre += s;
  hucre
  //Debug.print(debug_show(hucre))
};

// Çıkarma Fonksiyonu
public func cikarma(s: Int) : async Int
{
  hucre -= s;
  hucre
};

// Çarpma Fonksiyonu
public func carpma(s: Int) : async Int
{
  hucre *= s;
  hucre
};

// Bölme Fonksiyonu
public func bolme (s: Int) : async ?Int
{ 
  if (s == 0)
  {
    null
  }
  else
  {
    hucre /= s;
    ?hucre
  };
};

// Temizleme Fonksiyonu
public func temizle() : async ()
{
  hucre := 0;
};

};
