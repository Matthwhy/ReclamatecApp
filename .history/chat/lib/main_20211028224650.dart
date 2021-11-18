import 'package:chat/core/services/notification/chat_notification_service.dart';
import 'package:chat/pages/auth_or_app_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatNotificationService(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AuthOrAppPage(),
        debugShowCheckedModeBanner: false,
        routes: {
            '/chatpage': (context) => ChatPage(),
            '/home': (context) => Nav(),
            '/loginPage': (context) => LoginPage(),
            '/signup': (context) => SignupPage()
          },
      ),
    );
  }
}
