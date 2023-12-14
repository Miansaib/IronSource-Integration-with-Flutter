import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ironsource_x_example/IronSource%20Services/Interstitial%20Ads.dart';

class InterstitalAdScreen extends StatefulWidget {
  const InterstitalAdScreen({super.key});

  @override
  State<InterstitalAdScreen> createState() => _InterstitalAdScreenState();
}

class _InterstitalAdScreenState extends State<InterstitalAdScreen> {

InterstitialAd _interstitialAd=InterstitialAd();
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
        title: const Text('Interstitial Ad'),
      ),
      body: Center(child: InkWell(
        onTap: (){
          
_interstitialAd.showInterstitial();
        },
        child: Text("Press Me")),),
    );
  }
}