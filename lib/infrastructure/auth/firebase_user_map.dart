import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodshare/domain/auth/user.dart';
import 'package:foodshare/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  LocalUser get toUser {
    return LocalUser(id: UniqueId.fromUniqueString(uid),);
  }
}
