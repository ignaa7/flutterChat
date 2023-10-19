import 'package:flutter/material.dart';
import 'package:flutter_chat/service/service.dart';

class ChatMessages extends StatefulWidget {
  const ChatMessages({super.key});

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {
  @override
  Widget build(BuildContext context) {
    final authenticatedUserId = "userId";//cookies.userId;
    final loadedMessages = Service.getMessages();

          return ListView.builder(
              padding: const EdgeInsets.only(
                bottom: 40,
                left: 13,
                right: 13,
              ),
              reverse: true,
              itemCount: loadedMessages.length,
              itemBuilder: (ctx, index) {
                final chatMessage = loadedMessages[index]['data']; //message data
                final nextChatMessage = index + 1 < loadedMessages.length
                    ? loadedMessages[index + 1]['data']
                    : null;

                final currentMessageUserId = chatMessage['userId']; //message user id
                final nextMessageUserId =
                    nextChatMessage != null ? nextChatMessage['userId'] : null;

                final nextUserIsSame =
                    nextMessageUserId == currentMessageUserId;

                if (nextUserIsSame) {
                  return MessageBubble.next(
                    message: chatMessage['text'],
                    isMe: authenticatedUserId == currentMessageUserId,
                  );
                } else {
                  return MessageBubble.first(
                    userImage: chatMessage['userImage'],
                    username: chatMessage['username'],
                    message: chatMessage['text'],
                    isMe: authenticatedUser.uid == currentMessageUserId,
                  );
                }
              });
  }
}