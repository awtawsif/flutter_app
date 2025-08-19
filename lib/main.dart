import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverter(),
    );
  }
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() {
    return _CurrencyConverter();
  }
}

class _CurrencyConverter extends State<CurrencyConverter> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    double result = 0;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Color.fromARGB(134, 255, 255, 255),
        width: 1,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Currency Converter",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 41, 41, 41),
          elevation: 0,
        ),
        backgroundColor: const Color.fromARGB(255, 41, 41, 41),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.white),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.white70,
                    enabledBorder: border,
                    focusedBorder: border,
                    hintText: "Enter the amount in USD",
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(82, 255, 255, 255),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(73, 255, 255, 255),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    result = double.parse(textEditingController.text) * 120;
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                    foregroundColor: Colors.black,
                    backgroundColor: Color.fromARGB(206, 255, 255, 255),
                  ),
                  child: const Text("Convert"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
