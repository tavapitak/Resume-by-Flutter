import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> primeList = [];
  int currentPrime = 2; // Start with the first prime number

  // Function to check if a number is prime
  bool isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= sqrt(number).toInt(); i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  // Add the next prime number to the list
  void addNextPrime() {
    int nextNumber = currentPrime + 1;
    while (!isPrime(nextNumber)) {
      nextNumber++;
    }
    setState(() {
      currentPrime = nextNumber;
      primeList.add(currentPrime);
    });
  }

  // Subtract the previous prime number from the list
  void subtractPreviousPrime() {
    if (primeList.isNotEmpty) {
      setState(() {
        primeList.removeLast();
        if (primeList.isNotEmpty) {
          currentPrime = primeList.last;
        } else {
          currentPrime = 2;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Personal Info",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Info"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    'https://i.kym-cdn.com/photos/images/original/000/913/373/efd.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Firstname: tavapitak"),
                    Text("Lastname: khankaew"),
                    Text("Nickname: pon"),
                  ],
                ),
                SizedBox(height: 16),
                Text("Hobby: Reading playgame Camping"),
                Text("Food: Pizza"),
                Text("Birthplace: Italy"),
                SizedBox(height: 16),
                Text("Education:"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("elementary: banmai pho ngam year: 50"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("primary: chaimongcal year: 55"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("high school: chaimongcol year: 60"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Undergrad: Naresul university year: 65"),
                  ],
                ),
                // Divider line
                Text(
                  "-------------------------------------",
                  style: TextStyle(fontFamily: 'Courier', fontSize: 16),
                ),
                SizedBox(height: 16),
                // Current prime number
                Text(
                  "Current Prime Number: $currentPrime",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                // Buttons to add or subtract primes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: subtractPreviousPrime,
                      child: Text("Add Previous Prime (-)"),
                    ),
                    ElevatedButton(
                      onPressed: addNextPrime,
                      child: Text("Add Next Prime (+)"),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // ListView to display primes
                Expanded(
                  child: ListView.builder(
                    itemCount: primeList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Prime ${index + 1}: ${primeList[index]}"),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
