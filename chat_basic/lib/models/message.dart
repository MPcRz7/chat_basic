class Message {
  final String text;
  final MediaType dataType;
  final DateTime dateTime;
  final int sentById;
  final bool read;

  const Message({
    required this.text,
    this.dataType = MediaType.plainText,
    required this.dateTime,
    required this.sentById,
    this.read = false
  });
}

  enum MediaType {
    plainText,
    imageUrl
  }