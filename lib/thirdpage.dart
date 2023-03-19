import 'package:flutter/material.dart';
import 'package:solo/secondpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int newindex1 = 0;
  String buttonClick2 = 'Submit';
  String submitted = 'Submitted';
  // List<String> attractions = [];
  // Future getDocId() async {
  //   await FirebaseFirestore.instance.collection('Attractions').get().then((snapshot) => snapshot.docs.forEach((element) {
  //     print(element.reference);
  //     attractions.add(element.reference.id);
  //   },),);
  // }

  @override
  // void initState() {
  //   getDocId();
  //   super.initState();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hotels"),
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(145, 600, 50, 20),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.red,
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SecondPage();
                  }));
                  setState(
                    () {
                      buttonClick2 = submitted;
                    },
                  );
                },
                child: Text(buttonClick2),)
              // ),Expanded(child: FutureBuilder(builder: (context, snapshot) {
              //   return ListView.builder(itemBuilder: (context,index){
              //     return ListTile(
              //       title:Text('name')
              //     );
              //   });
              // },)
              // )

            ],
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
