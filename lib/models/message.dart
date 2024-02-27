import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderID;
  final String SenderEmail;
  final String reciverID;
  final String message;
  final Timestamp timestamp;

  Message({
    required this.senderID,
    required this.SenderEmail,
    required this.reciverID,
    required this.message,
    required this.timestamp,
  });

  // convert to a map
  Map<String, dynamic> toMap() {
    return {
      'senderID': senderID,
      'senderEmail': SenderEmail,
      'receiverID': reciverID,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
