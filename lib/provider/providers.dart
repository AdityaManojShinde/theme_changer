import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// manages state of  index shown on HomeScreen
final indexProvider = StateProvider<int>((ref) => 0);

// manages state of ThemeMode
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
