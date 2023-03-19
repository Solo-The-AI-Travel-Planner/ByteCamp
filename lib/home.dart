import 'package:flutter/material.dart';
import 'firstpage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('SOLO')),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              // child: Text(
              //   'Welcome To Solo-The Trip planner\n\n\n',
              //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              // ),
            ),
            Container(
              height: 710,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: GridView.builder(
                  itemCount: 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    mainAxisExtent: 800,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const FirstPage();
                          },
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          image: DecorationImage(
                              image: NetworkImage('https://images.unsplash.com/photo-1528543606781-2f6e6857f318?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHRyYXZlbHxlbnwwfHwwfHw%3D&w=1000&q=80'), fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
