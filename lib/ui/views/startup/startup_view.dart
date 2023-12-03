import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:initapp/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:initapp/ui/common/ui_helpers.dart';
import 'package:initapp/app/app.locator.dart';
import 'package:initapp/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../search/search_view.dart';
import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Welcome!")),
          backgroundColor: Colors.lightGreen[800]),
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
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            50.0), // Adjust the radius as needed
                      ),
                      labelText: 'Email',
                      hintText: 'example@example.com'),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          50.0), // Adjust the radius as needed
                    ),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightGreen[800]!),
                    ),
                    child: const Text('Login',
                        style: TextStyle(color: Colors.black)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const HomeView()),
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
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();
}
