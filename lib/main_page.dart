import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_fundamental/provider.dart';
import 'package:flutter_riverpod_fundamental/second_page.dart';

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
          Text(ref.watch(nameProvider)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()));
              },
              child: const Text('Go to Second Page'))
        ]),
      ),
    );
  }
}

//watch -> ketika berubah dia berubah
//read -> ketika ada perubahan dia tidak berubah
//listen -> ketika ingin menanmbahkan listener jika state berubah