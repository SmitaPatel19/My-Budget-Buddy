import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressed;

  SubscriptionCard({super.key,required this.sObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            height: 64,
            decoration:
            BoxDecoration(
              border: Border.all(
                color: Colors.lightBlue.shade50,
              ),
              color: Colors.blue.shade800.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16),
            ),

            alignment: Alignment.center,
            child: Row(
              children: [

                SizedBox(width: 8,),


                Image.asset(sObj["icon"],width: 55,height: 40,),

                SizedBox(width: 8,),

                Expanded(
                  child: Text(
                    sObj["name"],
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),

                SizedBox(width: 8,),

                Text(
                  sObj["price"],
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                SizedBox(width: 8,),
              ],
            ),
          ),
        ),
      );
  }
}

// import 'package:flutter/material.dart';
//
// class SubscriptionCard extends StatelessWidget {
//   final Map sObj;
//
//   const SubscriptionCard({super.key,required this.sObj});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       shape: UnderlineInputBorder(
//         borderSide: BorderSide(
//           color: Colors.blue.shade800.withOpacity(0.3),
//           width: 5
//         ),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       leading: CircleAvatar(
//         child: Image.asset(sObj["icon"]),
//       ),
//
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(sObj["name"]),
//           Text(sObj["price"]),
//         ],
//       ),
//     );
//   }
// }
