// EXAMPLE CHATS ON HOME SCREEN
import 'package:chat_basic/models/message.dart';

List<Message> chats = [
  Message(
    text: 'look good',
    dateTime: DateTime.now().subtract(const Duration(days: 3, minutes: 14)),
    sentById: 1,
    read: false,
  ),
  Message(
    text: 'dont do something bad',
    dateTime: DateTime.now().subtract(const Duration(days: 3, minutes: 13)),
    sentById: 2,
    read: false,
  ),
  Message(
    text: 'hey i dont want to go there.',
    dateTime: DateTime.now().subtract(const Duration(days: 3, minutes: 12)),
    sentById: 3,
    read: true,
  ),
  Message(
    text: 'Are you hungry?',
    dateTime: DateTime.now().subtract(const Duration(days: 2, minutes: 11)),
    sentById: 4,
    read: false,
  ),
  Message(
    text: 'really?',
    dateTime: DateTime.now().subtract(const Duration(days: 2, minutes: 10)),
    sentById: 5,
    read: true,
  ),
  Message(
    text: 'Thanks you',
    dateTime: DateTime.now().subtract(const Duration(days: 2, minutes: 9)),
    sentById: 6,
    read: true,
  ),
  Message(
    text: 'Suuuuuuuperrrrrrrrr',
    dateTime: DateTime.now().subtract(const Duration(days: 2, minutes: 8)),
    sentById: 7,
    read: true,
  ),
];
