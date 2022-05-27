import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
abstract class UserData implements _$UserData {
  const UserData._();

  const factory UserData(
      {
    
      required Username username,
      required ImageUrl imageUrl,
      required UserId userId,
      }) = _UserData;

  factory UserData.empty() => UserData(
   
      imageUrl: ImageUrl(''),
       username: Username(''),
       userId: UserId('')
      );

   Option<ValueFailure<dynamic>> get failureOption {
    // ignore: always_specify_types
    return username.failureOrUnit.fold((ValueFailure f) => some(f), (_) => none());
  }
 
}
