import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_using_provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    print("rebuilded");
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Consumer<A>(builder: (BuildContext context, value, Widget? child) {
              return Text(value.name);
            },)
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                //whenever you want to display changes in ui , change listen parameeter as false, by default it is true
                Provider.of<A>(context, listen: false).changeValue();
              },
              child: Text('Change Value'))
        ],
      ),
    );
  }
}

