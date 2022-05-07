import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:vr/screens/introduction/model.dart';

class HomeController {
  List<GrdidViewModel> gridViewModel = [
    GrdidViewModel(
        title1: "Are You Ready?".tr(),
        title2: "Sign up to start Growing up business today".tr(),
        image: "assets/images/6.png"),
    GrdidViewModel(
        title1: "Make your fream home reality".tr(),
        title2: "",
        image: "assets/images/1.png"),
    GrdidViewModel(
        title1: "Find Trusted Local Pros".tr(),
        title2: "Bring your dream home to life with virtual home".tr(),
        image: "assets/images/4.png"),
    GrdidViewModel(
        title1: "Virtual Reality".tr(),
        title2:
            "start walking around and enjoying your home with Virtual reality"
                .tr(),
        image: "assets/images/5.png"),
    GrdidViewModel(
        title1: "Shop Your Home".tr(),
        title2: "Highest quality products to fit a lifestyle".tr(),
        image: "assets/images/3.png"),
    GrdidViewModel(
        title1: "Get Ideas".tr(),
        title2:
            "turn ideas into action with more than 20 million home design photo"
                .tr(),
        image: "assets/images/2.png"),
  ];
}
