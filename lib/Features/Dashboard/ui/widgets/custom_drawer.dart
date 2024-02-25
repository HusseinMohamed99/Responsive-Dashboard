import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/Core/helpers/utils/image_assets.dart';
import 'package:responsive_dashboard/Core/helpers/utils/spacing.dart';
import 'package:responsive_dashboard/Core/theming/color_manager.dart';
import 'package:responsive_dashboard/Features/Dashboard/data/model/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/Dashboard/data/model/user_info_model.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/widgets/active_and_in_active_item.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 280,
                  height: 112,
                  decoration:
                      const BoxDecoration(color: ColorManager.whiteColor),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 193,
                        height: 53,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: ColorManager.lightGreyColor,
                        ),
                        child: IconButton(
                          iconSize: 24,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            Assets.imagesGallery,
                          ),
                        ),
                      ),
                      verticalSpacing(9),
                    ],
                  ),
                ),
                verticalSpacing(8),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: verticalSpacing(8),
          ),
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: verticalSpacing(8),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: verticalSpacing(20)),
                const InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    imageIcon: Assets.imagesSetting,
                  ),
                ),
                const InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    imageIcon: Assets.imagesLogout,
                  ),
                ),
                verticalSpacing(48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
