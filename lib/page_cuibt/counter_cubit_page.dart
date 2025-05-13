import 'package:counter_bloc/page_cuibt/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text('Counter: ${state.counter}', style: TextStyle(fontSize: 44));
              },
        ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  child: Icon(
                    Icons.add,
                    size: 44,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  child: Icon(
                    Icons.remove,
                    size: 44,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
