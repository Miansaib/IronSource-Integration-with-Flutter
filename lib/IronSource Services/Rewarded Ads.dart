  import 'package:flutter_ironsource_x/ironsource.dart';
import 'package:flutter_ironsource_x_example/main.dart';




class RewardedAd{bool rewardeVideoAvailable = false;

  Future init() async {
    var userId = await IronSource.getAdvertiserId();
    await IronSource.validateIntegration();
    await IronSource.setUserId(userId);
    await IronSource.initialize(
      appKey: appKey,
     // listener: this,
      gdprConsent: true,
    );
    rewardeVideoAvailable = await IronSource.isRewardedVideoAvailable();
  }



void showRewardedVideo() async {
    if (await IronSource.isRewardedVideoAvailable()) {
      // showHideBanner();
      IronSource.showRewardedVideo();
    } else {
      print("RewardedVideo not available");
    }
  }}