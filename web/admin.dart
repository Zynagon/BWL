import 'dart:html';
import 'classes.dart';
import 'dart:convert';

class Start{
    final sHoch = querySelector("#shoch");
    final sHilf = querySelector("#shhilf");
    final sHopfen = querySelector("#shopfen");
    final sMisch = querySelector("#smisch");
    final addHoch = querySelector("#bthoch");
    final addHilf = querySelector("#bthilf");
    final addHopfen = querySelector("#bthopfen");
    final addMisch = querySelector("#btmisch");
    final btSend = querySelector("btsend");
    final iHoch = querySelector("#ihoch");
    final iMisch = querySelector("#imisch");
    final iHilf = querySelector("#ihilf");
    final iHopfen = querySelector("#ihopfen");
    Kategorie misch, hoch, hilf, hopfen;
    Markt m;

    Start(){
        List<Getraenk> lgm = new List();
        misch = new Kategorie("Misch", lgm);
        List<Getraenk> lgh = new List();
        hoch = new Kategorie("Hoch", lgh);
        List<Getraenk> lghi = new List();
        hilf = new Kategorie("Hilf", lghi);
        List<Getraenk> lgho = new List();
        hopfen = new Kategorie("Hopfen", lgho);
        m = new Markt(hopfen,hilf,misch,hoch);
    }

    void listener() {
        addHoch.onClick.listen((e){
            String name = iHoch.value;
            if(name != ""){
                Getraenk g = new Getraenk(name, 0.0);
                m.hoch.addGetraenk(g);
                sHoch.innerHtml+="<span><h3 id=\"h" + name + "\">" + name +
                    "</h3><input id=\"i" + name +  "\" type=\"text\"></span></br>";
                iHoch.value = "";
            }
        });

        addHilf.onClick.listen((e){
            String name = iHilf.value;
            if(name != "") {
                Getraenk g = new Getraenk(name, 0.0);
                m.hilf.addGetraenk(g);
                sHilf.innerHtml += "<span><h3 id=\"h" + name + "\">" + name +
                    "</h3><input id=\"i" + name + "\" type=\"text\"></span></br>";
                iHilf.value = "";
            }
        });

        addHopfen.onClick.listen((e){
            String name = iHopfen.value;
            if(name != ""){
                Getraenk g = new Getraenk(name, 0.0);
                m.hopfen.addGetraenk(g);
                sHopfen.innerHtml+="<span><h3 id=\"h" + name + "\">" + name +
                    "</h3><input id=\"i" + name +  "\" type=\"text\"></span></br>";
                iHopfen.value = "";
            }
        });

        addMisch.onClick.listen((e){
            String name = iMisch.value;
            if(name != "") {
                Getraenk g = new Getraenk(name, 0.0);
                m.misch.addGetraenk(g);
                sMisch.innerHtml += "<span><h3 id=\"h" + name + "\">" + name +
                    "</h3><input id=\"i" + name + "\" type=\"text\"></span></br>";
                iMisch.value = "";
            }
        });


        btSend.onClick.listen((e){
            bool mistake = false;
            for(Getraenk g in m.hoch.Getraenke){
                try{
                    var input = querySelector("i"+g.Bezeichnung);
                    double preis = double.parse(input.value);
                    g.setPreis(preis);
                }catch(e){
                    mistake = true;
                }
            }
            for(Getraenk g in m.hopfen.Getraenke){
                try{
                    var input = querySelector("i"+g.Bezeichnung);
                    double preis = double.parse(input.value);
                    g.setPreis(preis);
                }catch(e){
                    mistake = true;
                }
            }

            for(Getraenk g in m.misch.Getraenke){
                try{
                    var input = querySelector("i"+g.Bezeichnung);
                    double preis = double.parse(input.value);
                    g.setPreis(preis);
                }catch(e){
                    mistake = true;
                }
            }

            for(Getraenk g in m.hilf.Getraenke){
                try{
                    var input = querySelector("i"+g.Bezeichnung);
                    double preis = double.parse(input.value);
                    g.setPreis(preis);
                }catch(e){
                    mistake = true;
                }
            }


            if(!mistake){
                for(Getraenk g in m.hoch.Getraenke){
                    var input = querySelector("i"+g.Bezeichnung);
                    input.value = "";
                }
                for(Getraenk g in m.misch.Getraenke){
                    var input = querySelector("i"+g.Bezeichnung);
                    input.value = "";
                }
                for(Getraenk g in m.hopfen.Getraenke){
                    var input = querySelector("i"+g.Bezeichnung);
                    input.value = "";
                }
                for(Getraenk g in m.hilf.Getraenke){
                    var input = querySelector("i"+g.Bezeichnung);
                    input.value = "";
                }


                String js = JSON.encode(m);

                window.alert(js);

// Insert Action here
            }else window.alert("Please enter decimal values as Price");
        });
    }


}


void main(){
    Start s = new Start();
    s.listener();

}


