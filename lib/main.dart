import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}