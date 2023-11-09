import 'package:flutter/material.dart';
import 'package:initapp/app/app.dart';
import 'package:initapp/ui/views/search/search_view.dart';
import 'package:stacked/stacked.dart';
import 'package:initapp/app/app.locator.dart';
import 'package:initapp/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Welcome!")),
          backgroundColor: Colors.lightGreen),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'example@example.com'),
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    //style: ButtonStyle(backgroundColor: Colors.lightGreen),
                    child: const Text('Go to search Screen',
                        style: TextStyle(color: Colors.black)),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SearchView()),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
