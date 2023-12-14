import 'package:flutter/material.dart';

import 'package:flutter_ironsource_x/ironsource.dart';
import 'package:flutter_ironsource_x_example/IronSource%20Services/Banner%20Ads.dart';
import 'package:flutter_ironsource_x_example/Screens/Rewarded%20Ad%20Show.dart';
import 'package:provider/provider.dart';

import 'IronSource Services/Interstitial Ads.dart';
import 'IronSource Services/Rewarded Ads.dart';
import 'Screens/Interstitial Ad Show.dart';


final String appKey = "1cb961a65"; // "85460dcd"; // change this with your appKey
void main() async{
     WidgetsFlutterBinding.ensureInitialized();
    var userId = await IronSource.getAdvertiserId();
    await IronSource.validateIntegration();
    await IronSource.setUserId(userId);
    await IronSource.initialize(
      appKey: appKey,
      gdprConsent: true,
    );
  
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
  
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter IronSource'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> InterstitalAdScreen()));
            }, child: Text("Interstitial Ad")),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> RewardedAdScreen()));
            }, child: Text("Rewarded Ad")),
          ],
        ),
      ),
      bottomNavigationBar: BannerAd(),
    );
  }
}
