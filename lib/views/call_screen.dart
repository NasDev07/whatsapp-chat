import 'package:chat_app/models/call_model.dart';
import 'package:flutter/material.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];
        return Column(
          children: [
            Divider(thickness: 1.2, height: 5),
            InkWell(
              onTap: () {
                // initiate the call
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ZegoUIKitPrebuiltCall(
                //       appID:
                //           1827365398, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
                //       appSign:
                //           "4b5c0feae7cec6fd37c2aba056fca9b5ba2a1afdfe79a6c85ff68d036715e12a", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
                //       userID: call.id,
                //       userName: call.name,
                //       callID: call.id,
                //       // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
                //       config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
                //         ..onOnlySelfInRoom =
                //             (context) => Navigator.of(context).pop(),
                //     ),
                //   ),
                // );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(call.imgurl),
                ),
                title: Text(
                  call.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      call.status,
                      Text(
                        call.time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(call.type.icon,
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
