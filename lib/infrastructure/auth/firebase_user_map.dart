import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  LocalUser get toUser {
    return LocalUser(id: UniqueId.fromUniqueString(uid),);
  }
}
