import 'package:flutter/material.dart';
import 'thirdpage.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> imagesList=[
    'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/27/73/34.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/3/30/Entrance_of_Sanjay_Gandhi_National_Park.JPG',
    'https://images.hindustantimes.com/img/2022/10/03/1600x900/ef78534e-35f4-11ed-aaf6-899a59fb6c14_1663356420429_1664755278172_1664755278172.jpg',
    'https://polkajunction.com/wp-content/uploads/2016/10/image2.jpeg',
    'https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2019/01/25/Pictures/flora-fountain-aditya-thackaray_621ef8f0-20cb-11e9-abd9-895ad40f6f04.jpg',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/88/31/7d/suraj-water-park.jpg?w=1200&h=-1&s=1',
  ];
  int newindex1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Attractions'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,1),
          child: GridView.builder(
            itemCount: imagesList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            mainAxisExtent: 195,),
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
                  ),
                ),
                
              );
            },)
            
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
