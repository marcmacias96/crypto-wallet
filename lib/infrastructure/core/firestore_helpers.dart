import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSingedInUser();
    final user = userOption.getOrElse(() => throw FirebaseException(
        plugin: 'auth', code: 'no-auth', message: 'no autenticated'));
    return FirebaseFirestore.instance.collection('users').doc(user);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get walletCollerction => collection('wallets');
  CollectionReference get contactCollerction => collection('contacts');
  CollectionReference get transaccionCollerction => collection('transactions');
}
