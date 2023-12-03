import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'barber_profile_viewmodel.dart';

class BarberProfileView extends StackedView<BarberProfileViewModel> {
  final String name;
  final String imageUrl;

  const BarberProfileView({super.key, required this.name, required this.imageUrl});

  @override
  Widget builder(
    BuildContext context,
    BarberProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.lightGreen[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 18,),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(height: 18,),
            Text(name, style: const TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }

  @override
  BarberProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BarberProfileViewModel();
}
