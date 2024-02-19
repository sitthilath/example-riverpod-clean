import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_colors.dart';


class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final BorderSide bottomBorderSide;
  final Widget? title;
  final Widget leading;
  final List<Widget> actions;
  final bool centerTitle;
  final Color backgroundColor;
  final double? elevation;
  final Color foregroundColor;
  final PreferredSizeWidget? bottom;
  final Widget? flexibleSpace;
  final double? toolbarHeight;
  final double? appbarHeight;
  final Widget? bottomAppbar;
  final bool automaticallyImplyLeading;
  final double? scrolledUnderElevation;
  final ScrollNotificationPredicate notificationPredicate;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final ShapeBorder? shape;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final bool primary;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final bool forceMaterialTransparency;
  final Clip? clipBehavior;
  final CrossAxisAlignment bottomAppbarCrossAxisAlignment;
  final MainAxisAlignment bottomAppbarMainAxisAlignment;

  const AppAppbar(
      { super.key,
        this.bottomBorderSide = const BorderSide(color: Colors.transparent,),
        this.title,
        this.leading = const Icon(Icons.arrow_back_ios,color: Colors.black,size: 16,),
        this.actions = const [],
        this.centerTitle = false,
        this.backgroundColor = AppColors.appBarBackgroundGrey,
        this.elevation = 0.0,
        this.foregroundColor=AppColors.textBlack,
        this.bottom,
        this.flexibleSpace,
        this.toolbarHeight,
        this.appbarHeight,
        this.bottomAppbar,
        this.automaticallyImplyLeading = true,
        this.scrolledUnderElevation,
        this.notificationPredicate = defaultScrollNotificationPredicate,
        this.shadowColor,
        this.surfaceTintColor,
        this.shape,
        this.iconTheme,
        this.actionsIconTheme,
        this.primary = true,
        this.excludeHeaderSemantics = false,
        this.titleSpacing = -5,
        this.toolbarOpacity = 1.0,
        this.bottomOpacity = 1.0,
        this.leadingWidth ,
        this.toolbarTextStyle,
        this.titleTextStyle,
        this.systemOverlayStyle,
        this.forceMaterialTransparency = false,
        this.clipBehavior,
        this.bottomAppbarCrossAxisAlignment = CrossAxisAlignment.center,
        this.bottomAppbarMainAxisAlignment = MainAxisAlignment.start
      });

  @override
  Size get preferredSize =>  Size.fromHeight(appbarHeight ?? kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
          border: Border(bottom:bottomBorderSide)
      ),
      child: Column(
        crossAxisAlignment: bottomAppbarCrossAxisAlignment,
        mainAxisAlignment: bottomAppbarMainAxisAlignment,
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: foregroundColor,
            leading: leading,
            title: title,
            actions: actions,
            centerTitle: centerTitle,
            elevation: elevation,
            bottom: bottom,
            flexibleSpace: flexibleSpace,
            toolbarHeight: toolbarHeight,
            automaticallyImplyLeading: automaticallyImplyLeading,
            actionsIconTheme: actionsIconTheme,
            bottomOpacity: bottomOpacity,
            clipBehavior: clipBehavior,
            excludeHeaderSemantics: excludeHeaderSemantics,
            forceMaterialTransparency: forceMaterialTransparency,
            iconTheme: iconTheme,
            key: key,
            leadingWidth: leadingWidth,
            notificationPredicate: notificationPredicate,
            primary: primary,
            scrolledUnderElevation: scrolledUnderElevation,
            shadowColor: shadowColor,
            shape: shape,
            surfaceTintColor: surfaceTintColor,
            systemOverlayStyle: systemOverlayStyle,
            titleSpacing: titleSpacing,
            titleTextStyle: titleTextStyle,
            toolbarOpacity: toolbarOpacity,
            toolbarTextStyle: toolbarTextStyle,
          ),
          Container(child: bottomAppbar),

        ],
      ),
    );
  }
}