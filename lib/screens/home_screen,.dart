import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tasksAdded = 0;
  bool activePage = true;
  void addTask() {

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          if (tasksAdded == 0)
          Container(
            margin: const EdgeInsets.all(50.0),
            height: 100.0,
            // color: Colors.white,
            child: const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'No Tasks Due',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          addTask();
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60.0,
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {
              },
              icon:  Icon(Icons.home, color: activePage? Colors.deepPurpleAccent : Colors.white),
            ),
            IconButton(onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.white)
            ),
            IconButton(onPressed: () {},
                icon: const Icon(Icons.calendar_month, color: Colors.white)
            )
          ],
        )
      ),
    );
  }
}