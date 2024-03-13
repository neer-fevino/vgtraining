import 'package:flutter/material.dart';
import 'package:freshstart/ui/views/bshoes/bshoes_view.dart';
import 'package:freshstart/ui/views/bwatch/bwatch_view.dart';
import 'package:freshstart/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';

import 'newview_viewmodel.dart';

class NewviewView extends StackedView<NewviewViewModel> {
  const NewviewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NewviewViewModel viewModel,
    Widget? child,
  ) {
    List<Widget> bodyContent = [
      HomeView(),
      BshoesView(),
      BwatchView()
      
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 243, 237),
      body: bodyContent[viewModel.getBodyIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Shoes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Watch',
          ),
        ],
        currentIndex: viewModel.getBodyIndex,
        onTap: (value) {
          viewModel.changeBottomNavigationIndex(value);
        },
      ),
    );
  }

  @override
  NewviewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NewviewViewModel();
}
