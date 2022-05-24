import 'package:flutter/material.dart';
import 'package:loja_virtual/modules/login/login_view.dart';

class BaseView extends StatelessWidget {
  BaseView({Key? key}) : super(key: key);

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        LoginView(),
      ],
    );
  }
}
