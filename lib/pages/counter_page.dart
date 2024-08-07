import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 1;
  double fontSize = 10.0;

  void incrementeCounter() {
    setState(() {
      if (counter >= 25){
        final snackBar = SnackBar(
          content: const Text('Limit Boss!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      } else {
        counter++;
        fontSize++;
      }
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter < 1){
        final snackBar = SnackBar(
          content: const Text('Ets Tidak Bisa!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      } else {
        counter--;
        fontSize--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(111, 101, 3, 167),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Perulangan ke :'),
          Text(
            '$counter',
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: incrementeCounter,
                child: Icon(Icons.add),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                onPressed: decrementCounter,
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
