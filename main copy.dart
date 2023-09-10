import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var img1 = Random().nextInt(3) + 1;
  var img2 = Random().nextInt(3) + 1;



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rock Paper Scissor"),
       backgroundColor: Colors.amber,
 ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('images/i_$img1.png'
                  ,width: 150,
                  ),
                  Container(
                    height: 15,
                  ),
                  Text('Player 1')
                ],
              ),
              
              Column(
                children: [
                  Image.asset('images/i_$img2.png'
                  ,width: 150,
                  ),
                  Container(
                    height: 15,
                  ),
                  Text('Player 2')
                ],
              )
              
              ],
          ),
           ElevatedButton(onPressed: (){
            setState(() {
               img1 = Random().nextInt(3) + 1;
               img2 = Random().nextInt(3) + 1;
              
            });



            }, child: Text('Play', selectionColor: Colors.orange,)),
        ],
      ),

    );

   
  }

}
