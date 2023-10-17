import 'package:baggage_way_user_app/utils/colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.loading = false,
    this.icon,
    this.color = AppColors.primaryColor,
    this.child,
  }) : super(key: key);
  final String title;
  final Icons? icon;
  final Color color;
  final VoidCallback onTap;
  final bool loading;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.white,
                )
              : Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
        ),
      ),
    );
  }
}
