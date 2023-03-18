import 'package:flutter/material.dart';
import 'package:solo/secondpage.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int newindex1 =0;
  String buttonClick2='Submit';
  String submitted = 'Submitted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hotels"),
      ),

      body: Container(
      
        child: 
      Padding(
        padding: const EdgeInsets.fromLTRB(145,600,50,20),
        child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      onPrimary: Colors.red,
                                      backgroundColor: Colors.amber,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return SecondPage();
                                      }));
                                      setState(
                                        () {
                                          buttonClick2 = submitted;
                                        },
                                      );
                                    },
                                    child: Text(buttonClick2),
                                  ),
      ),
      ),
    






      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(label: 'Back', icon: Icon(Icons.arrow_back)),
      //     BottomNavigationBarItem(
      //         label: 'Next', icon: Icon(Icons.arrow_forward)),
      //   ],
      //   currentIndex: newindex1,
      //   onTap: (int index) {
      //     setState(() {
      //       newindex1 = index;
      //     });
      //   },
      // ),
    );
  }
}