import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
 const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int count=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      title: Center(child: Text('Counter App'))
      ),

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You pushed this button this time"),
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          ElevatedButton(
            onPressed:(){
              setState(() {
                count++;
              });
            }, 
            child: Text("Increment")
            ),
        ],
      ),
    )
    );
  }
}