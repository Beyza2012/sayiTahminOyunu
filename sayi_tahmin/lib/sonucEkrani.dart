import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayi_tahmin/sonucEkrani.dart';
import 'package:sayi_tahmin/tahminEkrani.dart';

class SonucEkrani extends StatefulWidget {
  bool sonuc;

  SonucEkrani({required this.sonuc});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,//aralarına boşluk bıraktık
          children: <Widget>[
            widget.sonuc? Image.asset("resimler/mutlu_resim.png"):Image.asset("resimler/uzgun_resim.png"),
            widget.sonuc? Text("Kazandınız",style: TextStyle(color: Colors.black54,fontSize: 30)) : Text("Kaybettiniz",style: TextStyle(color: Colors.black54,fontSize: 30)),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);

              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1)
                    ),
                  ),
                  child: Text("Tekrar Dene")),
            )
          ],
        ),
      ),

    );
  }
}
