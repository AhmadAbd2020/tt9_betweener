import 'package:flutter/material.dart';
import 'package:tt9_betweener_challenge/utilis/constants.dart';

class FollowButton extends StatelessWidget {
  const FollowButton(
      {super.key, required this.isFollowed, this.followFun, this.unFollowFun});
  final bool isFollowed;
  final void Function()? followFun, unFollowFun;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isFollowed ? followFun : unFollowFun,
      style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.kOnSecondaryColor,
          backgroundColor: AppColors.kSecondaryColor),
      child: Text(isFollowed ? "Unfollow" : "Follow"),
    );
  }
}
