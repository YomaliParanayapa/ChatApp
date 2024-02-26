import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  // get instance of firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //get user streams
  /*

  List<Map<String,dynamic> = 
  
  [
  {
    'email': test@gmail.com,
    'id': ..
  },
  {
    'email': yoma@gmail.com,
    'id': ..
  },
  ]

  */
  Stream<List<Map<String, dynamic>>> getUserStream() {
    return _firestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        // go through eaxh individual user
        final user = doc.data();

        //return user
        return user;
      }).toList();
    });
  }

  //send message

  //get messages
}
