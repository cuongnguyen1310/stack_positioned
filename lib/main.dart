import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: buildHomePage(title: "Stacked Squares"),
    );
  }

  Widget buildHomePage({required String title}) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                color: Colors.purple,
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.1),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                height: constraints.maxHeight * 1 / 3,
                width: constraints.maxWidth * 2 / 3,
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                height: constraints.maxHeight * 2 / 3,
                width: constraints.maxWidth * 1 / 3,
                right: 0,
                child: Container(
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                height: constraints.maxHeight * 1 / 3,
                width: constraints.maxWidth * 2 / 3,
                right: 0,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                height: constraints.maxHeight * 2 / 3,
                width: constraints.maxWidth * 1 / 3,
                left: 0,
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
