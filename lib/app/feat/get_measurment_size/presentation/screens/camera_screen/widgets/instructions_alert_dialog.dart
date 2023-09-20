import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/common_widgets/custom_elevated_button.dart';
import '../../../../../../../core/common_widgets/custom_text.dart';
import '../../../../../../../core/const/color_constants.dart';

class InstructionsAlertDialog extends StatelessWidget {
  const InstructionsAlertDialog({Key? key,})
      : super(key: key);

  // final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    final _url = Uri.parse(
        'https://www.youtube.com/watch?fbclid=IwAR37JL9SBl_zpfSV7CbTnq3LELHlQv1rwhNZTSwe38f-hflvMHdZaRK6pbw&v=AhYLOX-_uRk&feature=youtu.be');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
        throw Exception('Could not launch $_url');
      }
    }

    return AlertDialog(
      content: SizedBox(
        height: 390.h,
        width: 350.w,
        child: Column(
          children: [
            CustomText(
              text: 'device setup',
              textColor: ColorConstants.blackColor,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              text:
              'Position your device vertically upright at an angle between 86 degrees and 90 degrees. Please ensure that your device is not tilted to the left, right, forward, or backward',
              textAlign: TextAlign.center,
              textColor: ColorConstants.blackColor,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/right-phone.png',
                      width: 100.w,
                      height: 100.h,
                    ),
                    const Icon(
                      Icons.check,
                      color: ColorConstants.primaryColor,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/not-right-phone.png',
                      width: 100.w,
                      height: 100.h,
                    ),
                    const Icon(
                      Icons.close,
                      color: ColorConstants.errorColor,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            CustomElevatedButton(
                text: 'Please review the instructions',
                fontSize: 14.sp,
                color: ColorConstants.primaryColor,
                onPressed: () {
                  _launchUrl();
                  // onDismiss(); // Execute the callback to initialize the camera
                })
          ],
        ),
      ),
    );
  }
}
