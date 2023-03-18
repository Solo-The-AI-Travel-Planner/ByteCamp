import 'package:flutter/material.dart';
import 'package:solo/thirdpage.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> imagesList=[
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg',
    'https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg',
    'https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712__340.jpg',
    'https://media.gettyimages.com/id/956525828/photo/vashi-navi-mumbai-birds-eye-view.jpg?s=612x612&w=gi&k=20&c=-UBfEQi4wtPXGWFNkqOBt4UAPPcL9Z5kCb6OYUbXcOY=',
    'https://socialstatusdp.com/wp-content/uploads/2022/12/Lord-Krishna-Images-with-Flute-with-forest-Background.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Attractions'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: imagesList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return const ThirdPage();
                },));},
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: NetworkImage(imagesList[index]),
                  fit: BoxFit.cover),
                  )
                ),
              );
            },)
      ),
      )
    );
  }
}
