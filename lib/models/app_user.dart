import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  final String uid;
  final String email;

  AppUser({
    required this.uid,
    required this.email,
  });

  factory AppUser.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>? ?? {};
    return AppUser(
      uid: data['uid'] ?? doc.id,
      email: data['email'] ?? '',
    );
  }
}
