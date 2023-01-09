import 'package:flutter/material.dart';

import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/widgets/my_text_form.dart';

class CardItem {
  final String url;
  final String title;
  final String subtitle;

  CardItem({required this.url, required this.title, required this.subtitle});
}

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  List<CardItem> items = [
    CardItem(
      url: 'assets/mine.jpg',
      title: 'Anshid O',
      subtitle: 'Team Lead',
    ),
    CardItem(
      url: 'assets/2.jpg',
      title: 'Mishal M',
      subtitle: 'Team Member',
    ),
    CardItem(
      url: 'assets/3.jpg',
      title: 'Mishal Jaleel',
      subtitle: 'Team Member',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kc30,
      appBar: AppBar(
        // shadowColor: Colors.white,
        // bottomOpacity: 0,
        // foregroundColor: Colors.white,
        backgroundColor: kc30.withGreen(18),
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: kc60,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(children: const [
          kwidth20,
          kwidth20,
          kwidth30,
          Text(
            'Project Workerr',
            style: TextStyle(
              color: kc60,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kheight30,
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Team  : Workerr',
                style: TextStyle(
                    color: kc60, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            kheight,
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(item: items[index]);
                },
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 12,
                ),
              ),
            ),
            kheight30,
            ListTile(
              onTap: () {},
              title: const Text(
                'Help',
                style: TextStyle(color: kc60),
              ),
              subtitle: const Text(
                'Find answers to your questions',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'Workerr Terms of Service',
                style: TextStyle(color: kc60),
              ),
              subtitle: const Text(
                'Read Workerr\'s Terms of Service',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'Workerr Privacy Policy',
                style: TextStyle(color: kc60),
              ),
              subtitle: const Text(
                'Read Mobile Privacy Policy',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'App version',
                style: TextStyle(color: kc60),
              ),
              subtitle: const Text(
                '1.00',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({required CardItem item}) {
    return Container(
      width: 270,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.fill)
          // gradient: kredgd,
          ),
      child: Column(
        children: [
          kheight30,
          kheight,
          Text(
            item.subtitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(item.url),
            ),
          ),
          Text(
            item.title,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
