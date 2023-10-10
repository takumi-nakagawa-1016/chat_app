import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirestore {
  static FirebaseFirestore _firebaseFirestoreInstance =
      FirebaseFirestore.instance;
  static final _userCollection = _firebaseFirestoreInstance.collection('user');
  static Future<void> createUser() async {
    try {
      await _userCollection.add({
        'name': '名無し',
        'imagePath':
            'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQkrjYxSfSHeCEA7hkPy8e2JphDsfFHZVKqx-3t37E4XKr-AT7DML8IwtwY0TnZsUcQ'
      });
      print('アカウント作成完了');
    } catch (e) {
      print('アカウント作成失敗＝＝${e}');
    }
  }
}
