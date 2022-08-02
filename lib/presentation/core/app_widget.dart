import 'package:flutter/material.dart';
import 'package:riverpod_stream_chat_app/presentation/screens/home_screen.dart';
import 'package:riverpod_stream_chat_app/presentation/screens/screens.dart';
import 'package:riverpod_stream_chat_app/theme.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key, required this.client}) : super(key: key);

  final StreamChatClient client;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      title: 'Riverpod Stream Chat App',
      home: ProfileScreen(),
      builder: (context, child) {
        return StreamChatCore(
          client: client,
          child: ChannelsBloc(
            child: UsersBloc(
              child: child!,
            ),
          ),
        );
      },
    );
  }
}
