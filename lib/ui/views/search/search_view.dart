import 'package:flutter/material.dart';
import 'package:initapp/app/app.dart';
import 'package:stacked/stacked.dart';

import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEST'),
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(),
        child: Center(
            child: Column(
          children: [
            Text('data'),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            Text('another data'),
            Text('mydata'),
          ],
        )),
      )),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
