import 'package:flutter/material.dart';
import 'package:flutter_ironsource_x_example/IronSource%20Services/Rewarded%20Ads.dart';

class RewardedAdScreen extends StatefulWidget {
  const RewardedAdScreen({super.key});

  @override
  State<RewardedAdScreen> createState() => _RewardedAdScreenState();
}

class _RewardedAdScreenState extends State<RewardedAdScreen> {
  
RewardedAd _rewardedAd=RewardedAd();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _rewardedAd.init();
    _rewardedAd.showRewardedVideo();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rewarded Ad'),
      ),
      body: Center(child: Text("Rewarded Ad Screen"),),
    );
  }
}