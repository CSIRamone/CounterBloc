import 'package:flutter/material.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Counter Cubit Page!'),
            SizedBox(height: 50),
            const Text('Counter: ', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20),
                ElevatedButton(onPressed: () {}, child: Icon(Icons.remove)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
