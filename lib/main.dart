// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.lightGreen),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("KrishiUrja"),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 30),
//           const Image(
//             image: AssetImage("assets/man.png"),
//           ),
//           RichText(text: "")
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp ({super.key});
//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.lightGreen),
//       home: const MyHomePage(title: 'KrishiUrja'),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const MyHomePage(title: 'KrishiUrja'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        //title: Text(widget.title),
        title: Text(
          (widget.title),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(70),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                color: Color(0xFF4B4B4B),
              ),
              children: [
                WidgetSpan(
                  child: Image.asset(
                    'assets/man.png', width: 200, height: 200,
                    //alignment: Alignment.center,
                  ),
                ),
                WidgetSpan(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0, 10, 0, 10), //apply padding to some sides only
                          child: Text(
                            'You have to start from Somewhere!!',
                            style: TextStyle(
                                fontSize: 15, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0,
                              10), //apply padding to LTRB, L:Left, T:Top, R:Right, B:Bottom
                          child: Text(
                            "JAY JAWAN,JAY KISAN",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0, 0, 0, 0), //apply padding to some sides only
                          child: Text(
                            'Building a community for better farming future.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 110, 0, 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Get Started'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightGreen[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              minimumSize: Size(350, 30),
                              padding: const EdgeInsets.all(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
