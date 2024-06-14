import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final Widget? subtitle, leading;
  final Widget icon;
  final Color backgroundColor, iconColor;
  final List<Widget> children;
  final EdgeInsetsGeometry? childrenPadding;
  final void Function(bool)? onExpansionChange;
  const CustomExpansionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.icon = const Icon(
      Icons.chevron_right,
      size: 40,
    ),
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.iconColor = Colors.grey,
    this.children = const [],
    this.childrenPadding,
    this.onExpansionChange,
  });

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;
    return ExpansionTile(
      maintainState: true,
      title: Text(
        widget.title,
        style: context.textTheme.bodyLarge!.copyWith(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      tilePadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
        side: BorderSide.none,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
        side: BorderSide.none,
      ),
      onExpansionChanged: (value) {
        _isExpanded = value;
        setState(() {});
        widget.onExpansionChange?.call(value);
      },
      backgroundColor: widget.backgroundColor,
      collapsedBackgroundColor: widget.backgroundColor,
      collapsedIconColor: widget.iconColor,
      childrenPadding: widget.childrenPadding,
      iconColor: widget.iconColor,
      trailing: AnimatedRotation(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        turns: _isExpanded
            ? isRtl
                ? -0.25
                : 0.25
            : 0,
        child: widget.icon,
      ),
      leading: widget.leading,
      subtitle: widget.subtitle,
      children: widget.children,
    );
  }
}
