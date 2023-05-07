import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_fundamental/counter_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CounterPage()));
              },
              child: const Text('Go to Counter Page'))
        ]),
      ),
    );
  }
}

//watch -> ketika berubah dia berubah
//read -> ketika ada perubahan dia tidak berubah
//listen -> ketika ingin menanmbahkan listener jika state berubah