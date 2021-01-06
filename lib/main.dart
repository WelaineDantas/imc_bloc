import 'dart:io';
import 'package:flutter/material.dart';
import 'package:imc_bloc/android/app.dart';
import 'package:imc_bloc/ios/app.dart';

void main() => Platform.isAndroid ? runApp(AndroidApp()) : runApp(IOSApp());
