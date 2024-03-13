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
    return Center(
        child: Icon(
      Icons.shopping_bag,
      size: 200,
    ));
  }

  @override
  BshoesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BshoesViewModel();
}
