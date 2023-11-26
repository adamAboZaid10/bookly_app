import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
   const CustomErrorWidget({super.key,required this.msgError});
   final String msgError ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        msgError,
        style: Styles.textStyle20,
      ),
    );
  }
}