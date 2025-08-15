import 'package:car_app_ui/provider/selection_tab_provider.dart';
import 'package:car_app_ui/view/visa_card_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          create: (context) => SelectionTabProvider(),
        )
      ],
      child: const MaterialApp(
        home: VisaCardUi(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
