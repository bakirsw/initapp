import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:initapp/ui/views/barber_profile/barber_profile_view.dart';

import 'feed_viewmodel.dart';

class FeedView extends StackedView<FeedViewModel> {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FeedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.lightGreen[800],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: 7, end: -4),
                badgeContent: const Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
                child: const Icon(
                  Icons.notifications_sharp,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi,",
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.w500),
                ), // "HI"
                const SizedBox(height: 5),
                const Text(
                  "Let's Find Your Barber",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ), // "LETS FIND YOUR BARBER"
                const SizedBox(height: 15),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(50)),
                    child: const TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          border: InputBorder.none,
                          hintText: "Search for a barber",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 17)),
                    )), // SEARCH TEXT FIELD
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Favorites",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ), // "FAVORITES"
                const SizedBox(height: 10),
                SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 5),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            peopleData.length,
                            (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BarberProfileView(
                                                  name: peopleData[index]
                                                      ['name'],
                                                  imageUrl: peopleData[index]
                                                      ['imageUrl'],
                                                )));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            peopleData[index]['imageUrl']),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(peopleData[index]['name']),
                                    ],
                                  ),
                                ))))),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  height: 200,
                  child: Image.asset("assets/barber_scissor.png",
                      fit: BoxFit.fill),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: const Icon(
                          Icons.watch_later_outlined,
                          size: 70,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 70,
                      color: Colors.red[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.account_balance,
                          size: 70,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.add_circle,
                          size: 70,
                          color: Colors.lime[900],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: const Icon(
                          Icons.watch_later_outlined,
                          size: 70,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 70,
                      color: Colors.red[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.account_balance,
                          size: 70,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.add_circle,
                          size: 70,
                          color: Colors.lime[900],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: const Icon(
                          Icons.watch_later_outlined,
                          size: 70,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 70,
                      color: Colors.red[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.account_balance,
                          size: 70,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.add_circle,
                          size: 70,
                          color: Colors.lime[900],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle button tap here
                          print('Button tapped!');
                        },
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(minHeight: 50),
                          child: const Icon(
                            Icons.watch_later_outlined,
                            size: 70,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 70,
                      color: Colors.red[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.account_balance,
                          size: 70,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.add_circle,
                          size: 70,
                          color: Colors.lime[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 70,
                      color: Colors.red[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.account_balance,
                          size: 70,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 50),
                        child: Icon(
                          Icons.add_circle,
                          size: 70,
                          color: Colors.lime[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  FeedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FeedViewModel();
}
