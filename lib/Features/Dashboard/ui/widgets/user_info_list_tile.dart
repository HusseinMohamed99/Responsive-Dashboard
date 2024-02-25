import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/Core/theming/text_style_manager.dart';
import 'package:responsive_dashboard/Features/Dashboard/data/model/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfoModel.image,
          ),
          title: Text(
            userInfoModel.title,
            style: TextStyleManager.fontSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: TextStyleManager.fontRegular12,
          ),
        ),
      ),
    );
  }
}
