import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/cubit/counter_cubit.dart';

class IncrementDecrementPage extends StatelessWidget {
  const IncrementDecrementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCubit counterCubit = BlocProvider.of<CounterCubit>(context);

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
              counterCubit.increment();
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              counterCubit.decrement();
            },
            icon: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
