import 'package:flutter/material.dart';
//import 'package:moto_pixels/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); 

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    Widget page;
    switch(currentPageIndex) {
      case 0:
        page = Card(
          shadowColor: Colors.black54,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'I am Home page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        );
        break;
      case 1:
        page = Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Contact',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        );
        break;
        default:
          throw Exception('Invalid page index');
    }
  
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return LayoutBuilder(
      builder: (context, constraints) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            bottomNavigationBar: NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              indicatorColor: Colors.green,
              selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(Icons.home), 
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.contact_page),
                  icon: Icon(Icons.contact_page), 
                  label: 'Contact',
                ),
              ],
            ),
            body: page,
          );
      });
  
  }
}
