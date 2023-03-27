import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yinedeniyorum/screens/screen_detay.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categoryName = [
    'All',
    'Pizza',
    'Burgers',
    'Wramp',
    'Grill',
  ];
  final List<String> imgList = [
    'assets/f1.jpg',
    'assets/f2.jpg',
    'assets/f3.jpg',
    'assets/f4.jpg',
    'assets/f5.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    var yukseklil = ekran.size.height;
    var genislik = ekran.size.height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SafeArea(
                top: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.menu),
                        Text('Manisa, Turkey'),
                        Icon(Icons.search)
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Fast & Delicious\nFood',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var i = 0; i < categoryName.length; i++)
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: i == 0 ? Colors.orange : Colors.grey,
                              ),
                              child: Center(
                                child: Text(
                                  categoryName[i],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          CarouselSlider(
                            items: imgList
                                .map(
                                  (e) => GestureDetector(
                                    onTap: () {
                                      int index = imgList.indexOf(e);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ScreenDetayPages(
                                            imageyolu: e,
                                            index: index,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: yukseklil,
                                      width: genislik,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(e),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 2,
                              enlargeCenterPage: true,
                              viewportFraction: 0.85,
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(Icons.location_on),
                        Text('Showing result for Manisa, Turkey'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'All Restaurants',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    for (int i = 0; i < imgList.length; i++)
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            height: 240,
                            width: genislik / 1.1,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(imgList[i]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'New Restaurant',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: const [
                                        Text('4.7'),
                                        Icon(Icons.star_outlined)
                                      ],
                                    ),
                                    const SizedBox(width: 15),
                                    Row(
                                      children: const [
                                        Text('25-35 min'),
                                        Icon(Icons.timer),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
