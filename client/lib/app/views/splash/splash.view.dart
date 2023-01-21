import 'package:client/app/views/splash/splash.widgets.dart';
import 'package:client/app/widgets/divider/widgets/custom_divider.dart';
import 'package:client/core/base/base_view/base_view.dart';
import 'package:flutter/material.dart';
import '../../widgets/inputs/inputs_widgets.dart';
import '../search/widgets/search_bar.widget.dart';

class SplashView extends BaseView with SplashWidgets {
  const SplashView(this.error, {super.key});

  final bool error;

  HasError backendError() {
    return error ? HasError.on : HasError.off;
  }

  @override
  Widget build(BuildContext context) {
    List<String> list2 = <String>[
      "a",
      "b",
      "c",
    ];
    return dynamicBuild(
      context,
      error: backendError(),
      body: Column(
        children: [
          const Text('not errror'),
          const CustomTextFormField(
            labelTextValue: "xlkv",
            labelTextRequired: LabelText.required,
            focusedBorderColor: TextFormFieldColor.purple,
            enabledBorderColor: TextFormFieldColor.green,
          ),
          CustomSearchField(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchBarWidget()));
          }),
          const CustomDivider(type: DividerType.dashed),
          // CustomTabBar(
          //   tabBarList: tabbarList,
          //   tabBarViewList: tabbarViewList,
          // ),

          CustomRadioButton(
            list: list2,
          )
        ],
      ),
      errorBody: const Text('errorrrr'),
    );
  }
}
