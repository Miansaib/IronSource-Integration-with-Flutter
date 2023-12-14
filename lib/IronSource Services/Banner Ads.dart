import 'package:flutter/material.dart';
import 'package:flutter_ironsource_x/banner.dart';


class BannerAdListener extends IronSourceBannerListener {
  @override
  void onBannerAdClicked() {
    print("onBannerAdClicked");
  }

  @override
  void onBannerAdLeftApplication() {
    print("onBannerAdLeftApplication");
  }

  @override
  void onBannerAdLoadFailed(Map<String, dynamic> error) {
    print("onBannerAdLoadFailed");
  }

  @override
  void onBannerAdLoaded() {
    print("onBannerAdLoaded");
  }

  @override
  void onBannerAdScreenDismissed() {
    print("onBannerAdScreenDismisse");
  }

  @override
  void onBannerAdScreenPresented() {
    print("onBannerAdScreenPresented");
  }
}

class BannerAd extends StatefulWidget {
  const BannerAd({super.key});

  @override
  State<BannerAd> createState() => _BannerAdState();
}

class _BannerAdState extends State<BannerAd> {
  @override
  Widget build(BuildContext context) {
    return IronSourceBannerAd(
                          keepAlive: true,
                          listener: BannerAdListener(),
                          //size: BannerSize.BANNER,
                          // size: BannerSize.LARGE,
                          // size: BannerSize.LEADERBOARD,
                          // size: BannerSize.RECTANGLE,
                          // size: BannerSize.SMART,
                           size: BannerSize(
                          type: BannerSizeType.BANNER,
                          width: 400,
                          height: 50,
                        ), 
                          // backgroundColor: Colors.amber,
                        );
  }
}