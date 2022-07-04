import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Weel 3 Assignment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(
     builder: (context, consraints) {
       return Scaffold(
         appBar: AppBar(

           title: Text(widget.title),
         ),
         body: SafeArea(
           child: LayoutBuilder(
             builder: (context, constraints) {
               return Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       child: CircleAvatar(
                         radius: 100.0,
                         child: ClipRRect(
                           child: Image.asset('images/person.jpg'),
                           borderRadius: BorderRadius.circular(50.0),
                         ),
                       ),
                     ),
                     ElevatedButton(onPressed: (){}, child: Text('Press Me'),)
                   ],
                 ),
               );
             }
           ),
         ),

         drawer: Drawer(
             child: ListView(
               children: [
                 Padding(
                     padding: EdgeInsets.all(12.0)),

                 ListTile(
                   title: Text('Item 1'),
                   onTap: (){
                     Navigator.pop(context);
                   },
                 ),
                 ListTile(
                   title: Text('Item 2'),
                   onTap: (){
                     Navigator.pop(context);
                   },
                 ),
                 ListTile(
                   title: Text('Item 3'),
                   onTap: (){
                     Navigator.pop(context);
                   },
                 )
               ],
             )
         ),// This trailing comma makes auto-formatting nicer for build methods.
       );
     }
   );
  }
}
