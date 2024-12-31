import 'package:flutter/material.dart';
import 'package:washme/core/classes/statusrequest.dart';
import 'package:washme/core/statics/assets.dart';

import '../style/style.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: CircularProgressIndicator(
            color: Style.mainColor,
          ))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Image.asset(AssetsData.logo,
                    width: 250, height: 250)) //offline
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Image.asset(AssetsData.logo, //server
                        width: 250,
                        height: 250))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Image.asset(
                        AssetsData.logo, //nodata
                        width: 250,
                        height: 250,
                      ))
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: CircularProgressIndicator(
            color: Style.mainColor,
          ))
        : widget;
  }
}
