
  import 'package:dartz/dartz.dart';

import '../../injector.dart';
import '../auth/i_auth_facade.dart';
import '../auth/user.dart';
import '../core/errors.dart';

String getUserId() {
    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());
    return user.id.getOrCrash();
  }
