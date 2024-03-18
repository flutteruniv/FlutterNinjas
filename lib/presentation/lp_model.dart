import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LPModel extends ChangeNotifier {
  late bool isMobile;
  late DeviceScreenType deviceScreenType;
  bool isLoading = false;

  void setSizingInformation(SizingInformation information) {
    final isMobile = checkIsMobile(information);
    this.isMobile = isMobile;
    deviceScreenType = information.deviceScreenType;
  }

  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    isLoading = false;
    notifyListeners();
  }
}

bool checkIsMobile(SizingInformation sizingInformation) {
  var isMobile = false;
  switch (sizingInformation.deviceScreenType) {
    case DeviceScreenType.desktop:
      break;
    case DeviceScreenType.tablet:
    case DeviceScreenType.mobile:
    case DeviceScreenType.watch:
      isMobile = true;
      break;
    default:
      break;
  }
  return isMobile;
}
