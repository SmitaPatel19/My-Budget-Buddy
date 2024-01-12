import 'package:budgetbuddy/subscription/SubscriptionPage.dart';
import 'package:flutter/material.dart';

class Main_Tab_View extends StatefulWidget {
  const Main_Tab_View({super.key});

  @override
  State<Main_Tab_View> createState() => _Main_Tab_ViewState();
}

class _Main_Tab_ViewState extends State<Main_Tab_View> {

  int selectTab = 0;
  PageStorageBucket pageStorageBucket=PageStorageBucket();
  Widget currentTabView = SubscriptionPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Stack(
        children: [
          PageStorage(bucket: pageStorageBucket, child: currentTabView),
          SafeArea(
            child:
              Column(
                children: [
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                      child: Stack(
                        alignment: Alignment.bottomCenter,

                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Image.asset("assets/images/bottom_bar_bg1.png",
                                alignment: Alignment.bottomCenter,
                                color: Colors.blue.shade700,
                                height: 500,
                                width: 500,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(onPressed: (){
                                    setState(() {
                                      selectTab=0;
                                      currentTabView=SubscriptionPage();
                                    });
                                  }, icon: Icon(Icons.home_outlined,size: 29,
                                    color: selectTab==0?Colors.white:Colors.lightBlue.shade50,)),

                                  IconButton(onPressed: (){
                                    setState(() {
                                      selectTab=1;
                                      currentTabView=SubscriptionPage();
                                    });

                                  }, icon: Icon(Icons.dashboard_outlined,size: 25,
                                    color: selectTab==1?Colors.white:Colors.lightBlue.shade50,)),
                                  SizedBox(width: 50,),
                                  IconButton(onPressed: (){
                                    setState(() {
                                      selectTab=2;
                                      currentTabView=SubscriptionPage();
                                    });

                                  }, icon: Icon(Icons.calendar_month_outlined,size: 25,
                                      color: selectTab==2 ? Colors.white : Colors.lightBlue.shade50)),
                                  IconButton(onPressed: (){
                                    setState(() {
                                      selectTab=3;
                                      currentTabView=SubscriptionPage();
                                    });

                                  }, icon: Icon(Icons.subscriptions,size: 25,
                                      color:selectTab==3 ? Colors.white : Colors.lightBlue.shade50)),
                                ],
                              ),
                            ],
                          ),

                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              width: 55,
                              height: 55,
                              margin: EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.lightBlue.withOpacity(0.25),
                                    blurRadius: 10,
                                    offset: Offset(0,4),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey.shade600,
                              ),
                              child: Icon(Icons.add,size: 30,
                                color: Colors.lightBlue.shade50,),
                            ),
                          ),
                        ],
                      ),
                  ),

                ],
              ),
          ),
        ],
      ),
    );
  }
}
