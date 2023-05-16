import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('VinylVerse'),
          
        ),
        
        body: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[100],
            child: Builder(
              builder: (context) => InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AboutPage())),

                child: Image.network('https://i0.wp.com/www.otakupt.com/wp-content/uploads/2023/02/especial-Demon-Slayer-3-1.jpg?fit=1920%2C1490&ssl=1'),
              )
            )
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[600],
            child: const Text('Revolution, they...'),
          ),
          Builder(
            
            builder: (context) => Center(
              child: ElevatedButton(
                child: const Text("Foo"),

                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutPage())),
              ),
              ),
          ),
        ],
      ),
    ),
  ],
),  
           

        drawer: Drawer(
            child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        )
        ),
         
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Page'),
        ),
        body: Container(
          
        )
      );
  }
}

