import 'package:client/app/views/onboarding/onboarding.viewmodel.dart';
import 'package:client/app/widgets/bottom_bar/bottom_bar.viewmodel.dart';
import 'package:client/app/widgets/inputs/widgets/check_box/check_box_notifier.dart';
import 'package:client/app/widgets/inputs/widgets/drop_down/dropdown_button_notifier.dart';
import 'package:client/app/widgets/inputs/widgets/radio_button/radio_button_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class MultiProviderInit {
  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => CheckboxNotifier()),
    ChangeNotifierProvider(create: (_) => OnboardingViewModel()),
    ChangeNotifierProvider(create: (_) => BottomNavBarViewModel()),
    ChangeNotifierProvider(create: (_) => DropDownButtonNotifier()),
    ChangeNotifierProvider(create: (_) => RadioButtonNotifier()),
  ];
}
