import 'package:flutter/material.dart';
import 'package:flutter_ironsource_x/ironsource.dart';
import 'package:flutter_ironsource_x_example/IronSource%20Services/Banner%20Ads.dart';
import 'package:flutter_ironsource_x_example/IronSource%20Services/Rewarded%20Ads.dart';
import 'package:flutter_ironsource_x_example/widgets/custom_button.dart';

import '../IronSource Services/Interstitial Ads.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  InterstitialAd _interstitialAd=InterstitialAd();
  RewardedAd _rewardedAd =RewardedAd();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _interstitialAd.loadInterstitial();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter IronSource X Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(label: "Interstitial Ad",onPressed: (){
              _interstitialAd.showInterstitial();
            },),
            CustomButton(label: "Rewarded Ad",onPressed: (){
              _rewardedAd.showRewardedVideo();
            },),
          ],
        ),
      ),
      bottomNavigationBar: BannerAd(),
    );
  }
}
