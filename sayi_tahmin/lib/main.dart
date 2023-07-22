import 'package:flutter/material.dart';
import 'package:sayi_tahmin/tahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnaSayfa(title: 'Flutter Demo Home Page'),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key, required this.title});
  final String title;

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}
class _AnaSayfaState extends State<AnaSayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,//aralarına boşluk bıraktık
          children: <Widget>[
            Text("Tahmin Oyunu",style: TextStyle(color: Colors.black54,fontSize: 30)),
            Image.asset("resimler/zar_resim.png"),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(onPressed: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>TahminEkrani()));

              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(1)
                    ),
                  ),
                  child: Text("Oyun başla")),
            )
            ],
        ),
      ),

    );
  }
}
