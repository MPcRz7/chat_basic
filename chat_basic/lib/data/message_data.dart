import '../models/message.dart';

List<Message> messages = [
    Message(
      text: 'Hi',
      dateTime: DateTime.now().subtract(const Duration(days: 3, minutes: 14)),
      sentById: 0,
      read: true,
    ),
    Message(
      text: 'Hello',
      dateTime: DateTime.now().subtract(const Duration(days: 3, minutes: 13)),
      sentById: 1,
      read: true,
    ),
    Message(
      text: 'I am Luffy',
      dateTime: DateTime.now().subtract(const Duration(days: 3, minutes: 12)),
      sentById: 0,
      read: true,
    ),
    Message(
      text: 'Nice to meet you',
      dateTime: DateTime.now().subtract(const Duration(days: 2, minutes: 11)),
      sentById: 0,
      read: true,
    ),
    Message(
      text: 'Nice to meet you too',
      dateTime: DateTime.now().subtract(const Duration(days: 2, minutes: 10)),
      sentById: 1,
      read: true,
    ),
    Message(
      text: 'How are you today?',
      dateTime: DateTime.now().subtract(const Duration(days: 2, minutes: 9)),
      sentById: 0,
      read: true,
    ),
    Message(
      text: 'Fine.',
      dateTime: DateTime.now().subtract(const Duration(days: 1, minutes: 8)),
      sentById: 1,
      read: true,
    ),
    Message(
      text: 'Like a normal day.',
      dateTime: DateTime.now().subtract(const Duration(days: 1, minutes: 7)),
      sentById: 1,
      read: true,
    ),
    Message(
      text: 'Wowwww',
      dateTime: DateTime.now().subtract(const Duration(days: 1, minutes: 6)),
      sentById: 1,
      read: true,
    ),
    Message(
      text: 'Do you want to see our flag ship?',
      dateTime: DateTime.now().subtract(const Duration(days: 1, minutes: 5)),
      sentById: 0,
      read: true,
    ),
    Message(
      text: 'sure.',
      dateTime: DateTime.now().subtract(const Duration(minutes: 4)),
      sentById: 1,
      read: true,
    ),
    Message(
      text: 'assets/images/MugiwaraFlag.png',
      dataType: MediaType.imageUrl,
      dateTime: DateTime.now().subtract(const Duration(minutes: 3)),
      sentById: 0,
      read: true,
    ),
    Message(
      text: 'look good',
      dateTime: DateTime.now().subtract(const Duration(minutes: 2)),
      sentById: 1,
      read: false,
    ),
  ];
