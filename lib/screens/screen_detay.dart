import 'package:flutter/material.dart';

class ScreenDetayPages extends StatefulWidget {
  const ScreenDetayPages({Key? key,required this.imageyolu,required this.index}) : super(key: key);
  final String imageyolu;
  final int index;
  @override
  State<ScreenDetayPages> createState() => _ScreenDetayPagesState();
}

class _ScreenDetayPagesState extends State<ScreenDetayPages> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SafeArea(
                  top: false,
                  child: Column(
                    children: [
                      Container(
                        width: genislik,
                        height: MediaQuery.of(context).size.height,
                        decoration:  BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.imageyolu)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 10,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 216, 42),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height/2.40,
                  child: Container(
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Chicken Royale',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 216, 42),
                              radius: 24,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Özel bir çıtır kaplamaya sarılmış lezzetli tavuk, üzerine iceberg marul, kremalı mayonez ve kızarmış susamlı çörek ile kaplanır.',
                          style: TextStyle(),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '\$9.90 - 290 Cal',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          thickness: 1.5,
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Calories',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '290 Cal',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Calories from Fat',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey
                                  ),
                                ),
                                Text(
                                  '10 Cal',
                                  style: TextStyle(
                                    fontSize: 17,color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(thickness: 1.5,),
                            SizedBox(height: 10),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Fat',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '1 g',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Satured Fat',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text(
                                      '0 g',
                                      style: TextStyle(
                                          fontSize: 17,color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Trans Fatty Acid',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text(
                                      '0 g',
                                      style: TextStyle(
                                          fontSize: 17,color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Divider(thickness: 1.5,),
                                SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
