import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw FirebaseException(
        plugin: 'auth', code: 'no-auth', message: 'no autenticated'));
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get walletCollection => collection('wallets');
  CollectionReference get contactCollection => collection('contacts');
  CollectionReference get transactionCollection => collection('transactions');
}
