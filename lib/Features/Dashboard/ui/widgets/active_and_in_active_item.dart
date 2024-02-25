import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/theming/color_manager.dart';
import 'package:responsive_dashboard/Core/theming/text_style_manager.dart';
import 'package:responsive_dashboard/Features/Dashboard/data/model/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.imageIcon,
      ),
      title: Text(
        drawerItemModel.title,
        style: TextStyleManager.fontRegular16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.imageIcon,
      ),
      title: Text(
        drawerItemModel.title,
        style: TextStyleManager.fontBold16,
      ),
      trailing: Container(
        width: 3.27,
        height: 48,
        decoration: const BoxDecoration(
          color: ColorManager.secondaryColor,
        ),
      ),
    );
  }
}
