import 'package:chat_basic/data/message_data.dart';
import 'package:chat_basic/models/user.dart';
import 'package:flutter/material.dart';
import '../models/message.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatDetailPage extends StatefulWidget {
  final User user;
  const ChatDetailPage({Key? key, required this.user}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    var msgController = TextEditingController();

    void enterText(String text) {
      final message = Message(
        text: text,
        dateTime: DateTime.now(),
        sentById: 0,
      );
      if (text != "") {
        setState(() => messages.add(message));
      } else {
        msgController.clear();
      }
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            Container(
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(widget.user.imageUrl),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              widget.user.name,
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: GroupedListView<Message, DateTime>(
                padding: const EdgeInsets.all(8),
                reverse: true,
                // useStickyGroupSeparators: true,
                // floatingHeader: true,
                order: GroupedListOrder.DESC,
                elements: messages,
                groupBy: (message) => DateTime(
                  message.dateTime.year,
                  message.dateTime.month,
                  message.dateTime.day,
                ),
                groupHeaderBuilder: (Message message) => SizedBox(
                    height: 40,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          DateFormat.yMMMd().format(message.dateTime),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                itemBuilder: (context, Message message) => Align(
                  alignment: message.sentById == 0
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: message.sentById == 0
                          ? Theme.of(context).colorScheme.primaryVariant
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: message.sentById == 0
                              ? Theme.of(context).colorScheme.secondary
                              : Theme.of(context).colorScheme.primary,
                          offset: const Offset(2.0, 2.0), //(x,y)
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: message.dataType == MediaType.plainText
                        ? Text(message.text)
                        : Image.asset(
                            message.text,
                            width: 120,
                            ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.surface,
                            offset: const Offset(2.0, 2.0), //(x,y)
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                      child: TextField(
                          controller: msgController,
                          decoration: const InputDecoration.collapsed(
                            hintText: 'Type your message here...',
                          ),
                          onSubmitted: (text) => enterText(text)),
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      msgController.text != ''
                          ? enterText(msgController.text)
                          : FocusScope.of(context).unfocus()
                    },
                    icon: const Icon(Icons.send),
                    iconSize: 25.0,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
