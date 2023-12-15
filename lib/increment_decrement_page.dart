import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_bloc.dart';

class IncrementDecrementPage extends StatelessWidget {
  const IncrementDecrementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Increment Decrement'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              counterBloc.add(CounterIncremented());
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              counterBloc.add(CounterDecremented());
            },
            icon: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
