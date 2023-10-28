import 'package:flutter/material.dart';
import 'package:point_of_sale_design/current_order_widget.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  await windowManager.setAspectRatio(1.53);
  await windowManager.setBackgroundColor(Colors.transparent);
  windowManager.setOpacity(1);
  windowManager.setAlwaysOnTop(true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Row(
          children: [
            Container(
              // Their width was literally 0.69 haha.
              width: screenSize.width * 0.69,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              margin: const EdgeInsets.only(right: 1),
            ),
            Expanded(
              child: CurrentOrderWidget(
                height: screenSize.height,
              ),
            )
          ],
        ),
      ),
    );
  }
}
