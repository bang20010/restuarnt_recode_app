import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const main_app());
}

class main_app extends StatelessWidget {
  const main_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
