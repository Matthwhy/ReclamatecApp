

import 'package:Reclamatec/core/models/chat_massage.dart';
import 'package:Reclamatec/core/models/chat_user.dart';

import 'chat_firebase_service.dart';

abstract class ChatService {
  Stream<List<ChatMessage>> messagesStream();
  Future<ChatMessage?> save(String text, ChatUser user);

  factory ChatService() {
    return ChatFirebaseService();
  }
}
