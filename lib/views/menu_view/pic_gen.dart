import 'package:avatar_generator/avatar_generator.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _size = 200.0;

  var seed = ValueNotifier('1234567890');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: _size,
              height: _size,
              child: ValueListenableBuilder<String>(
                valueListenable: seed,
                builder: (_, value, __) => AvatarGenerator(
                  seed: value,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: _size,
              child: TextField(
                textAlign: TextAlign.center,
                controller: TextEditingController(text: seed.value),
                onChanged: (value) {
                  seed.value = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}