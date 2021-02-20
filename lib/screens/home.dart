import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  String _value = '';

  void _onSubmit(String value) {
    setState(() => _value = value);
  }

  void _onChange(String value) {
    setState(() => _value = value);
  }

  List<Widget> _widgetOptions = <Widget>[
    Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Input Letters',
                ),
                autocorrect: true,
                autofocus: false,
                keyboardType: TextInputType.text,
                //onSubmitted: _onSubmit,
                //onChanged: _onChange,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text('Unscramble'),
                    onPressed: () {
                      print('happy');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    Text(
      'Index 1: Unscramble',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 20,
      ),
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: Text('Unscramble'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.star),
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions),
            label: 'Unscramble',
          ),
        ],
      ),
    );
  }
}
