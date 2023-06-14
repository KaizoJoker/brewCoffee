import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lab6/screens/wrapper.dart';
import 'package:lab6/services/auth.dart';
import 'package:provider/provider.dart';
import "package:lab6/models/user.dart";


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: const MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
