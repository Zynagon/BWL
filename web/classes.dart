

class Getraenk{
  String _bezeichnung;
  double _preis;

  Getraenk(this._bezeichnung, this._preis);
  String get Bezeichnung => _bezeichnung;
  void set Bezeichnung(String b){this._bezeichnung = b;}
  double get Preis => _preis;
  void setPreis(double p){this._preis=p;}
  void set Preis(double p){this._preis=p;}
}

class Kategorie{
  String _bezeichnung;
  List<Getraenk> _getraenke;

  Kategorie(this._bezeichnung, this._getraenke);
  String get Bezeichnung => _bezeichnung;
  void set Bezeichnung(String b){this._bezeichnung = b;}
  void addGetraenk(Getraenk g){this._getraenke.add(g);}
  List<Getraenk> get Getraenke => _getraenke;
}

class Markt{
  Kategorie _hopfen;
  Kategorie _hilf;
  Kategorie _misch;
  Kategorie _hoch;
  String laufstring;

  Markt(this._hopfen, this._hilf, this._misch, this._hoch);
  Kategorie get hopfen => _hopfen;
  set hopfen(Kategorie value) {_hopfen = value;}
  Kategorie get hilf => _hilf;
  set hilf(Kategorie value) {_hilf = value;}
  Kategorie get misch => _misch;
  set misch(Kategorie value) {_misch = value;}
  Kategorie get hoch => _hoch;
  set hoch(Kategorie value) {_hoch = value;}
}