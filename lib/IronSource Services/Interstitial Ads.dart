 import 'package:flutter_ironsource_x/ironsource.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_ironsource_x_example/main.dart';


class InterstitialAd{  bool interstitialReady = false;

   Future init() async {
    var userId = await IronSource.getAdvertiserId();
    await IronSource.validateIntegration();
    await IronSource.setUserId(userId);
    await IronSource.initialize(
      appKey: appKey,
      gdprConsent: true,
    );
    interstitialReady = await IronSource.isInterstitialReady();
  }




void loadInterstitial() async {
    IronSource.loadInterstitial();
  }


    void showInterstitial() async {
    if (await IronSource.isInterstitialReady()) {
      // showHideBanner();
      IronSource.showInterstitial();
    } else {
      print(
        "Interstial is not ready. use 'Ironsource.loadInterstial' before showing it",
      );
    }
  }}