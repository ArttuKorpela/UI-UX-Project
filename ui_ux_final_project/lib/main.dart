import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final primaryColor = Colors.blue;
  final accentColor = Colors.white38;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Group 23 LPR',
        theme: ThemeData(
          primaryColor: primaryColor,
        ),
        home: const MyHomePage(),
        routes: {
          '/second': (context) => SecondScreen(),
          '/first' : (context) => MyHomePage(),
        }
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() =>
      _ProgressIndicatorState();
}
class _ProgressIndicatorState extends State<SecondScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(

      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        Center(
          child:Column(
            children: [
              SizedBox(height: 1),
              Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),),
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 100),
                      Image.asset(
                        'images/faceReg3.png',
                        height: 400,
                      ),
                      SizedBox(height: 70),
                      SizedBox(
                          height: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'Bring your face a little closer',
                                  style: TextStyle(fontSize: 24),
                                )
                            ),
                            CircularProgressIndicator(
                              strokeWidth: 10,
                              value: controller.value,
                              semanticsLabel: 'Circular progress indicator',
                            ),
                          ]
                        ,),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      OutlinedButton(
                        child: const Text('Return'),
                        onPressed: () {Navigator.pushNamed(context, '/first');},
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        child: const Text('Identify'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                      ),
                      const SizedBox(width: 8,height: 50),
                    ],
                  ),
                ].map((widget) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: widget,
                )).toList(),
              ),
            ),
            ].map((widget) => Padding(
              padding: const EdgeInsets.all(16),
              child: widget,
            )).toList(),
          ),
        ),



        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setup',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fingerprint_sharp),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'User',
            ),
          ],
        ));
  }
}

  @override

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {

          },
        ),
        title: Row(
          children: [
            Image.asset(
              'images/logo_big.png',
              height: 40,
            ),
            SizedBox(width: 8),
            Text('KASVOT'),
          ],
        ),
      ),
      body: Center(
        child:
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Image.asset(
                          'images/faceReg3.png',
                          height: 180,
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                    const ListTile(
                      title: Text('Face regognition'),
                      subtitle: Text('Identify yourself'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        OutlinedButton(
                          child: const Text('Learn more'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        FilledButton(
                          child: const Text('Identify'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                        ),
                        const SizedBox(width: 8,height: 50),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Image.asset(
                          'images/loginHistory.png',
                          height: 180,
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                    const ListTile(
                      title: Text('Login history'),
                      subtitle: Text('Where and when you logged in'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        OutlinedButton(
                          child: const Text('More'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        FilledButton(
                          child: const Text('Look'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8,height: 50),
                      ],
                    ),
                  ],
                ),
              ),Card(
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Image.asset(
                          'images/accounts_2.png',
                          height: 180,
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                    const ListTile(
                      title: Text('Accounts'),
                      subtitle: Text('Services you use through this app'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        OutlinedButton(
                          child: const Text('More'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        FilledButton(
                          child: const Text('Look'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8,height: 50),
                      ],
                    ),
                  ],
                ),
              ),
            ].map((widget) => Padding(
              padding: const EdgeInsets.all(16),
              child: widget,
            )).toList(),
          ),
        )

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fingerprint_sharp),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'User',
          ),
        ],
      ),
    );
  }
}





