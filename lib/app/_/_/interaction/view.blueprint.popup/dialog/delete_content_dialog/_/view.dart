import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Are you really going to")
            .textStyle(Theme.of(context).textTheme.bodyMedium!)
            .fontWeight(FontWeight.bold),
        Text("delete the contents?")
            .textStyle(Theme.of(context).textTheme.bodyMedium!)
            .fontWeight(FontWeight.bold),
        Gap(20),
        SvgPicture.asset('assets/view/delete_content_dialog/trash.svg',
          width: 110,
          height: 110,),
        Gap(30),

        //button
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //black background
            ElevatedButton(
              //round
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onPressed: () {
                  print('delete content');
                  Navigator.pop(context);
                },
                child: Text("Delete").fontSize(12))
                .expanded(),
            Gap(7),

            ElevatedButton(
              //rount
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onPressed: () {
                  print('Cancel');
                  Navigator.pop(context);
                },
                child: Text("cancel").fontSize(12))
                .expanded(),
          ],
        )
      ],
    ).padding(vertical: 20, horizontal: 15);
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
