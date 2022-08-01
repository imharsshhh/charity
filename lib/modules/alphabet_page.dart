import 'dart:developer';

import 'package:flutter/material.dart';

import '../widget/image_widget.dart';

class AlphabetPage extends StatefulWidget {
  const AlphabetPage({Key? key}) : super(key: key);

  @override
  State<AlphabetPage> createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text('Alphabet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: 26,
          itemBuilder: (context, index) {
            return ImageCardWidget(
              imageUrl: 'assets/alphabets/${index + 1}.png',
              
              onTap: () {
                log('${index + 1}');
              },
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}
