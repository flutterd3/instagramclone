// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'package:instagramclone/utils/dimensons.dart';

class ResPonsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResPonsiveLayout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
