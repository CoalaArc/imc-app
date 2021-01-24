import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'ui/android/material_app.dart';
import 'ui/ios/cupertino_app.dart';

void main() => runApp(Platform.isIOS ? MyCupertinoApp() : MyMaterialApp());
