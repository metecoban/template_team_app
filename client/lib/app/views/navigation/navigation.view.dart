import 'package:client/app/views/navigation/navigation.viewmodel.dart';
import 'package:client/app/views/navigation/widgets/bottom_bar.dart';
import 'package:client/core/base/base_view/base_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationView extends BaseView {
  const NavigationView(this.error, {super.key});

  final bool? error;

  HasError backendError() {
    return error! ? HasError.on : HasError.off;
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavBarViewModel>(context);

    return dynamicBuild(
      context,
      error: backendError(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Center(
        child: provider.pageOptions.elementAt(
          provider.currentPage,
        ),
      ),
      errorBody: const Text('errorrrr'),
    );
  }
}
