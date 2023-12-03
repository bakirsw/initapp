import 'package:flutter/material.dart';
import 'package:initapp/app/app.dart';
import 'package:initapp/ui/views/feed/feed_view.dart';
import 'package:initapp/ui/views/search/search_view.dart';
import 'package:initapp/ui/views/startup/startup_view.dart';
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
    return ViewModelBuilder<HomeViewModel>.reactive(
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) => Scaffold(
              body: getViewForIndex(model.currentIndex),
              backgroundColor: Colors.lightGreen,
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.deepOrangeAccent,
                backgroundColor: Colors.grey[700],
                currentIndex: model.currentIndex,
                onTap: model.setIndex,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.art_track), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Settings"),
                ],
              ),
            ));
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const FeedView();
      case 1:
        return const SearchView();
      default:
        return const FeedView();
    }
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
