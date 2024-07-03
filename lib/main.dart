import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/provider_screen.dart';
import 'package:unit_converter/unit_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UnitProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.deepPurple)),
        home: UnitConverterScreen(),
      ),
    );
  }
}
