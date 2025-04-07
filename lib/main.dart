import 'package:credpal_assessment/credpal_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: CredPalApp(),
    ),
  );
}
