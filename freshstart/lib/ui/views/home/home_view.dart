import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:freshstart/ui/common/app_colors.dart';
import 'package:freshstart/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    final TextEditingController _controller = TextEditingController();

    return 
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                color: Color.fromARGB(255, 187, 199, 221),
                child: TextFormField(
                  controller: _controller,
                )),
            Container(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    // viewModel.openNewView();
                    viewModel.onSubmitSaveToDb(_controller);
                  },
                  child: Text("SubMit"),
                ),
              ),
            ),
            Container(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    viewModel.openNewView();
                  },
                  child: Text("Go To New View"),
                ),
              ),
            ),
          ],
        ),
      );
   
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
