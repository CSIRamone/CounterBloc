import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Counter Bloc Page!'),
            SizedBox(height: 50),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) { 
                return
                Text('Counter: ${state.counter}', 
                style: TextStyle(fontSize: 44));
              },
            ),    
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrementEvent());
                  },
                  child: Icon(Icons.add, size: 44),
                ),
                SizedBox(width: 20),
                ElevatedButton(onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrementEvent());
                }, child: Icon(Icons.remove, size: 44)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
