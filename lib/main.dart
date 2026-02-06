import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Test 1 -Structure',
      debugShowCheckedModeBanner: false,
      //home: const HomePage(),
      home: CompteurPage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        backgroundColor: Colors.cyan,
      ),
      body: const Center(
        //1er TEST
        /*child: Text(
          'Bonjour Flutter',
          style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
        ),*/
        //2e TEST
        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Nom : Awa'),
            SizedBox(height: 8),
            Text('Niveau : L3'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                SizedBox(width: 8),
                Text('Etudiante')
              ],
            )
          ],
        ),*/
        //3e TEST
        /*child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade100,
            borderRadius: BorderRadius.circular(12)
          ),
          child:  Text(
            'Carte Etudiant',
            style: TextStyle(fontSize: 18),
          ),
        ),*/
        //4e TEST
        /*child: ProfilCard(
          nom : 'Awa Diop',
          age : 21
        ),*/

      ),
    );
  }




}


class ProfilCard extends StatelessWidget{
  final String nom;
  final int age;

  const ProfilCard({
    super.key,
    required this.nom,
    required this.age
  });

  @override
  Widget build(BuildContext context) {
   return Container(
     padding: const EdgeInsets.all(16),
     decoration: BoxDecoration(
       color: Colors.green.shade100,
       borderRadius: BorderRadius.circular(12),
     ),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         Text(nom,
         style: const TextStyle(fontSize: 20),),
         const SizedBox(height: 8),
         Text('Âge : $age'),
       ],
     ),
   );
  }


}

class CompteurPage extends StatefulWidget{
  const CompteurPage({super.key});

  @override
  State<CompteurPage> createState() => _CompteurPageState();

}

class _CompteurPageState extends  State<CompteurPage>{
  int valeur = 0;

  void increment(){
    setState(() {
      valeur++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compteur'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valeur : $valeur',
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: increment,
                child: const Text('Incrémenter')
            )
          ],
        ),
      ),
    );
  }


}