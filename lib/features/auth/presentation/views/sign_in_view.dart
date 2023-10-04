import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              customReplacementNavigate(context, '/signUp');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text('Sign In'),
      ),
    );
  }
}
