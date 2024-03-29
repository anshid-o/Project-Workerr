// import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/screens/home/post/show_workers.dart';
import 'package:workerr_app/presentation/user/widgets/animated_list.dart';
// import 'package:workerr_app/presentation/user/widgets/top_list_card.dart';
import 'package:workerr_app/presentation/user/widgets/top_list_card2.dart';

class MyTabbedAppBar extends StatefulWidget {
  const MyTabbedAppBar({Key? key}) : super(key: key);

  @override
  State<MyTabbedAppBar> createState() => _MyTabbedAppBarState();
}

class _MyTabbedAppBarState extends State<MyTabbedAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: kc30,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                // decoration: TextDecoration.underline,
                // decorationStyle: TextDecorationStyle.solid,
                // decorationThickness: 2.5,
                // decorationColor: Colors.,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/wow.jpg'), fit: BoxFit.cover)
                  // gradient: LinearGradient(colors: [
                  //   Colors.green,
                  //   Colors.red,
                  // ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                  ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
            bottom: TabBar(tabs: [
              Tab(
                // icon: Icon(
                //   Icons.workspace_premium_sharp,
                //   size: 20,
                // ),
                // text: 'Top Workers',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kheight20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.workspace_premium_outlined,
                          color: kgold,
                          size: 20,
                        ),
                        Text(
                          'Top Workers',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Tab(
                // iconMargin: EdgeInsets.only(bottom: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kheight20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.category_outlined,
                          color: Colors.green,
                        ),
                        Text(
                          ' Categories',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kheight20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                        Text(
                          'My Favorites',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),

                // TabBarRow(
                //   name: 'My Favorite',
                //   icon: Icons.favorite,
                //   color: Colors.red,
                // ),
              ),
            ]),
          ),
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.arrow_forward),
          //   onPressed: () {
          //     final newIndex = controller.selectedItem + 1;
          //     controller.animateToItem(newIndex,
          //         duration: Duration(seconds: 1), curve: Curves.easeOut);
          //   },
          // ),
          body: TabBarView(children: [
            ListView.builder(
              itemBuilder: ((context, index) => TopList2(
                    i: index,
                  )),
              itemCount: workers.length,
            ),
            ListWheelScrollView(
              // controller: controller,
              perspective: 0.003,
              // onSelectedItemChanged: (index) {
              //   showToast('Selected Item : ${index + 1}');
              // },
              squeeze: .95,
              // offAxisFraction: 1.5,
              physics: const FixedExtentScrollPhysics(),
              itemExtent: 450,
              children: [
                CategoryCard(
                  i: 0,
                  category: 'Mechanic',
                ),
                CategoryCard(
                  i: 1,
                  category: 'Driver',
                ),
                CategoryCard(
                  i: 2,
                  category: 'Fabricationer',
                ),
                CategoryCard(
                  i: 3,
                  category: 'Plumber',
                ),
                CategoryCard(
                  i: 4,
                  category: 'Painter',
                ),
                CategoryCard(
                  i: 5,
                  category: 'Electrition',
                ),
              ],
            ),
            const MyAnimatedList(),
          ]),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  String category;
  int i;
  CategoryCard({
    required this.category,
    required this.i,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 370,
        height: 310,
        decoration: BoxDecoration(
          // color: Colors.white,
          gradient: kwhitegd2,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Best $category",
                  style: const TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      color: kc30,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/abbc.jpg'),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Name : ${workers[i]}',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    kheight20,
                    const Text(
                      'Place : Areakode',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    kheight20,
                    const Text(
                      'Rating : 4.8',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarRow extends StatelessWidget {
  String name;
  IconData icon;
  Color color;

  TabBarRow({
    Key? key,
    required this.name,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: color,
          ),
          ksize(y: 3.5),
          Text(name),
        ],
      ),
    );
  }
}
