import 'package:flutter/material.dart';

import '../../../../utils.dart';

class ErrorMessageWidget extends StatelessWidget {
  final String message;

  const ErrorMessageWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              color: Color(0xffa22c24),
              size: 60,
            ),
            const SizedBox(height: 20),
            Text(
              message,
              textAlign: TextAlign.center,
              style: SafeGoogleFont (
                'Radio Canada',
                color: Color(0xffa22c24),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
