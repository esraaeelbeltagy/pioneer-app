import 'package:flutter/material.dart';

class TransparentAppBar extends AppBar {
  TransparentAppBar({
    super.key,
    super.leading,
    super.title,
    super.actions,
    super.centerTitle,
  }) : super(
          elevation: 0,
          backgroundColor: Colors.transparent,
        );
}
