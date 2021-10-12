import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BottonOne(),
          BottonTwo(),
        ],
      ),
    );
  }
}

class BottonOne extends StatelessWidget {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    print("Stateless Widget Build");
    return ListTile(
      leading: Text(
        "$Counter",
        style: TextStyle(fontSize: 20),
      ),
      title: Text("State less widget"),
      trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Counter++;
            print(Counter);
          }),
    );
  }
}

class BottonTwo extends StatefulWidget {
  @override
  _BottonTwoState createState() => _BottonTwoState();
}

class _BottonTwoState extends State<BottonTwo> {
  int counter2 = 0; // must dicleare here

//! for only in first build  can call api s and other server  functions;
  @override
  void initState() {
    super.initState();
    print("initState call");
  }

// final build only means page cut or move to the next page
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

//  initial build  only
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didchange");
  }

  @override
  Widget build(BuildContext context) {
    print("Stateful widget are build");
    print("api call");
    return Container(
      color: Colors.red,
      child: ListTile(
        leading: Text(
          "$counter2",
          style: TextStyle(fontSize: 20),
        ),
        title: Text("State full widget"),
        trailing: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // here setState means it will rebuild the class and show the present counter value;
              setState(() {
                counter2++;
              });

              print(counter2);
            }),
      ),
    );
  }
}
