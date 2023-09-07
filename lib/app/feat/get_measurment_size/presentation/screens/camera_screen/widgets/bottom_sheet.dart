import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomSheetDemo extends StatelessWidget {
  const ModalBottomSheetDemo({
    super.key,
    required this.message,
    required this.onClose, // Add a callback for closing
  });

  final String message;
  final VoidCallback onClose; // Callback for closing

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(

        child: const Text('اضغط هنا'),
        onPressed: () {
          Future.delayed(const Duration(seconds: 1), () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 200.h,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(message),
                        ElevatedButton(
                          onPressed: () {
                            onClose(); // Call the onClose callback to close the sheet
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          });
        },
      ),
    );
  }
}
