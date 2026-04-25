import 'package:cloud_firestore/cloud_firestore.dart';

class Contact {
  final String id;
  final String name;
  final String avatarUrl;
  final String lastMessage;
  final DateTime time;

  Contact({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.lastMessage,
    required this.time,
  });

  factory Contact.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>? ?? {};
    return Contact(
      id: doc.id,
      name: data['name'] ?? '',
      avatarUrl: data['avatarUrl'] ?? '',
      lastMessage: data['lastMessage'] ?? '',
      time: (data['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }
}
