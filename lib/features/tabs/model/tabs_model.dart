import 'package:flutter/material.dart';

class TabsModel {
  const TabsModel({
    required this.iconPath,
    required this.page,
    required this.title,
  });
  final Widget page;
  final String title;
  final String iconPath;
}
