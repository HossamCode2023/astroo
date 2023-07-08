import 'package:flutter/material.dart';


class ForgetpasswordView extends StatelessWidget {
  const ForgetpasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgetpasswordView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgetpasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
