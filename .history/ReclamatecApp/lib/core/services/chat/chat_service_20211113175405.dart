

import 'package:Reclamatec/core/models/chat_massage.dart';
import 'package:Reclamatec/core/models/chat_user.dart';

abstract class ChatService {
  Stream<List<ChatMessage>> messagesStream();
  Future<ChatMessage?> save(String text, ChatUser user);

  factory ChatService() {
    return ChatFirebaseService();
  }
}
