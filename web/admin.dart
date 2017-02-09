import 'dart:html';
import 'classes.dart';


void main(){
    List<Getraenk> lgm = new List();
    Kategorie misch = new Kategorie("Misch", lgm);
    List<Getraenk> lgh = new List();
    Kategorie hoch = new Kategorie("Hoch", lgh);
    List<Getraenk> lghi = new List();
    Kategorie hilf = new Kategorie("Hilf", lghi);
    List<Getraenk> lgho = new List();
    Kategorie hopfen = new Kategorie("Hopfen", lgho);



    final addCat = querySelector("bt_addCategorie");
    var categories = querySelector("categories");
    addCat.onClick.listen((e){
        String name = querySelector("text_Categorie").value.toString();
        List<Getraenk> lgetraenk = new List();
        Kategorie cat = new Kategorie(name,lgetraenk);

    });


}