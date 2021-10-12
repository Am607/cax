import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('widget build');
    return Scaffold(
      appBar: AppBar(),
      body: body(),
      drawer: Drawer(),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: Container(
        height: 40,
        color: Colors.yellow,
      ),
    );
  }

  SingleChildScrollView body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          newMethod(),
          const SizedBox(
            height: 10,
          ),
          newMethod(),
          const SizedBox(
            height: 10,
          ),
          newMethod(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  newMethod() {
    return Container(
      margin: EdgeInsets.only(left: 30),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 20),
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
      child: Center(
          child: InkWell(
              onTap: () {
                print('function called');
              },
              child: const Text('adad'))),
    );
  }
}
