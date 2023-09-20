import 'package:flutter/material.dart';

class CustomLoadingIndiecator extends StatelessWidget {
  const CustomLoadingIndiecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator());
  }
}
