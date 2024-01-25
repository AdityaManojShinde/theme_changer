import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_changer/provider/providers.dart';
import 'package:theme_changer/widget/themeswitch.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int index = ref.watch(indexProvider);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //Increase Counter
          FloatingActionButton(
            onPressed: () {
              ref.read(indexProvider.notifier).state++;
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          // Reset Counter
          FloatingActionButton(
            onPressed: () {
              ref.read(indexProvider.notifier).update((state) => 0);
            },
            child: const Icon(Icons.restore),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Counter App'),
        actions: const [
          // widget/themeswitch.dart
          ThemeSwitch(),
        ],
      ),
      body: Center(
        child: Text(
          '$index',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
