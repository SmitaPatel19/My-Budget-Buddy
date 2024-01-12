import 'package:budgetbuddy/Custom%20UI/SubscriptionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../common_widgets/segment_button.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  bool isSubscription = true;

  List SubArray=[
    {"name": "Spotify", "icon": "assets/images/spotify.png", "price": "₨"},
    {"name": "YouTube", "icon": "assets/images/youtube.png", "price": "₨"},
    {"name": "InstaGram", "icon": "assets/images/instagram.png", "price": "₨"},
    {"name": "Netflix", "icon": "assets/images/netflix.png", "price": "₨"},
    {"name": "Drive", "icon": "assets/images/google-drive.png", "price": "₨"},
    {"name": "Google Developers", "icon": "assets/images/adwords.png", "price": "₨"},
    {"name": "Google Developers", "icon": "assets/images/adwords.png", "price": "₨"},
    {"name": "Google Developers", "icon": "assets/images/adwords.png", "price": "₨"},
    {"name": "Google Developers", "icon": "assets/images/adwords.png", "price": "₨"},
    {"name": "Google Developers", "icon": "assets/images/adwords.png", "price": "₨"},
  ];

  List BillArray=[
    {"name": "Spotify", "date": DateTime(2023,11,29), "price": "₨"},
    {"name": "YouTube", "date": DateTime(2023,11,29), "price": "₨"},
    {"name": "InstaGram", "date": DateTime(2023,11,29), "price": "₨"},
    {"name": "Netflix", "date": DateTime(2023,11,29), "price": "₨"},
    {"name": "Drive", "date": DateTime(2023,11,29), "price": "₨"},
    {"name": "Google Developers", "date": DateTime(2023,11,29), "price": "₨"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 1),
              child: Container(
                height: MediaQuery.of(context).size.height - 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue.shade700.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade400.withOpacity(0.2),
              ),
              child: Row(
                children: [
                  SegmentButton(
                    title: "Your Subscriptions",
                    isActive: isSubscription,
                    onPressed: (){
                      setState(() {
                        isSubscription= !isSubscription;
                      });
                    },
                  ),

                  SegmentButton(
                    title: "Upcoming Bills",
                    isActive: !isSubscription,
                    onPressed: (){
                      setState(() {
                        isSubscription= !isSubscription;
                      });
                    },
                  ),
                ],
              ),
            ),

            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: SubArray.length,
                itemBuilder: (context , index){
                  var sObj = SubArray[index] as Map? ?? {};

                  return SubscriptionCard(sObj: sObj,onPressed: (){

                  },);
                },
            ),

            SizedBox(height: 150,),
          ],
        ),
      ),
    );
  }
}
