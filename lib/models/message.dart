import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String id;
  final String text;
  final String senderId;
  final DateTime timestamp;

  Message({
    required this.id,
    required this.text,
    required this.senderId,
    required this.timestamp,
  });

  factory Message.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>? ?? {};
    return Message(
      id: doc.id,
      text: data['text'] ?? '',
      senderId: data['senderId'] ?? '',
      timestamp: (data['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'senderId': senderId,
      'timestamp': FieldValue.serverTimestamp(),
    };
  }
}
