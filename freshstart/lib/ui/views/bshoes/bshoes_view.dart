import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bshoes_viewmodel.dart';

class BshoesView extends StackedView<BshoesViewModel> {
  const BshoesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BshoesViewModel viewModel,
    Widget? child,
  ) {
    return FutureBuilder(
      future: viewModel.fetchNames(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        List<dynamic> names = snapshot.data;
        return ListView.builder(
          itemCount: viewModel.namesLength,
          itemBuilder: (BuildContext context, int index) {
            return Center(child: Text(names[index]));
          },
        );      },
    );
  }

  @override
  BshoesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BshoesViewModel();
}
