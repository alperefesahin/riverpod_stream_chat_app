import 'package:flutter/material.dart';
import 'package:riverpod_stream_chat_app/infrastructure/core/app.dart';
import 'package:riverpod_stream_chat_app/presentation/core/app_widget.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

void main() {
  final client = StreamChatClient(streamKey);

  runApp(AppWidget(client: client));
}
