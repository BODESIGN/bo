import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';

// ===============================================================================

initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

// ===============================================================================

class $FIREBASE {
  $FIREBASE();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // > SELECT
  select(
    String table,
    String id,
    Function actionAfter,
  ) {
    firestore.collection(table).doc(id).get().then(
      (DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) actionAfter('succes', documentSnapshot);
        if (!documentSnapshot.exists) actionAfter('error', 'Not exist');
      },
    ).catchError((error) {
      actionAfter('error', error);
    });
  }

  // > INSERT
  insert(
    String table,
    String id,
    Map<String, dynamic> donner,
    Function actionAfter,
  ) {
    firestore
        .collection(table)
        .doc(id)
        .set(donner)
        .then((value) => {actionAfter('succes', value)})
        .catchError((error) => {actionAfter('error', error)});
  }

  // > UPDATE
  update() {}

  // > DELETE
  delete() {}
}
