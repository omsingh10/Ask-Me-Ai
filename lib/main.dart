import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ball());
}

class ball extends StatelessWidget {
  const ball({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Ask Me Anything"),
             centerTitle: true),
          body: con(),
        ),
      ),
    );
  }
}

class con extends StatefulWidget {
  const con({super.key});

  @override
  State<con> createState() => _conState();
}

class _conState extends State<con> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      n = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset("As/ball$n.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
