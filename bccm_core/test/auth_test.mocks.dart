// Mocks generated by Mockito 5.4.4 from annotations
// in bccm_core/test/auth_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:bccm_core/src/features/auth/auth0_api.dart' as _i4;
import 'package:bccm_core/src/models/auth0/auth0_api.dart' as _i9;
import 'package:flutter/foundation.dart' as _i7;
import 'package:flutter_appauth/src/flutter_appauth.dart' as _i5;
import 'package:flutter_appauth_platform_interface/flutter_appauth_platform_interface.dart' as _i2;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAuthorizationTokenResponse_0 extends _i1.SmartFake implements _i2.AuthorizationTokenResponse {
  _FakeAuthorizationTokenResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthorizationResponse_1 extends _i1.SmartFake implements _i2.AuthorizationResponse {
  _FakeAuthorizationResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTokenResponse_2 extends _i1.SmartFake implements _i2.TokenResponse {
  _FakeTokenResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEndSessionResponse_3 extends _i1.SmartFake implements _i2.EndSessionResponse {
  _FakeEndSessionResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIOSOptions_4 extends _i1.SmartFake implements _i3.IOSOptions {
  _FakeIOSOptions_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAndroidOptions_5 extends _i1.SmartFake implements _i3.AndroidOptions {
  _FakeAndroidOptions_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLinuxOptions_6 extends _i1.SmartFake implements _i3.LinuxOptions {
  _FakeLinuxOptions_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWindowsOptions_7 extends _i1.SmartFake implements _i3.WindowsOptions {
  _FakeWindowsOptions_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWebOptions_8 extends _i1.SmartFake implements _i3.WebOptions {
  _FakeWebOptions_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMacOsOptions_9 extends _i1.SmartFake implements _i3.MacOsOptions {
  _FakeMacOsOptions_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeviceTokenRequestResponse_10 extends _i1.SmartFake implements _i4.DeviceTokenRequestResponse {
  _FakeDeviceTokenRequestResponse_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCredentials_11 extends _i1.SmartFake implements _i4.Credentials {
  _FakeCredentials_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FlutterAppAuth].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterAppAuth extends _i1.Mock implements _i5.FlutterAppAuth {
  @override
  _i6.Future<_i2.AuthorizationTokenResponse> authorizeAndExchangeCode(_i2.AuthorizationTokenRequest? request) => (super.noSuchMethod(
        Invocation.method(
          #authorizeAndExchangeCode,
          [request],
        ),
        returnValue: _i6.Future<_i2.AuthorizationTokenResponse>.value(_FakeAuthorizationTokenResponse_0(
          this,
          Invocation.method(
            #authorizeAndExchangeCode,
            [request],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i2.AuthorizationTokenResponse>.value(_FakeAuthorizationTokenResponse_0(
          this,
          Invocation.method(
            #authorizeAndExchangeCode,
            [request],
          ),
        )),
      ) as _i6.Future<_i2.AuthorizationTokenResponse>);

  @override
  _i6.Future<_i2.AuthorizationResponse> authorize(_i2.AuthorizationRequest? request) => (super.noSuchMethod(
        Invocation.method(
          #authorize,
          [request],
        ),
        returnValue: _i6.Future<_i2.AuthorizationResponse>.value(_FakeAuthorizationResponse_1(
          this,
          Invocation.method(
            #authorize,
            [request],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i2.AuthorizationResponse>.value(_FakeAuthorizationResponse_1(
          this,
          Invocation.method(
            #authorize,
            [request],
          ),
        )),
      ) as _i6.Future<_i2.AuthorizationResponse>);

  @override
  _i6.Future<_i2.TokenResponse> token(_i2.TokenRequest? request) => (super.noSuchMethod(
        Invocation.method(
          #token,
          [request],
        ),
        returnValue: _i6.Future<_i2.TokenResponse>.value(_FakeTokenResponse_2(
          this,
          Invocation.method(
            #token,
            [request],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i2.TokenResponse>.value(_FakeTokenResponse_2(
          this,
          Invocation.method(
            #token,
            [request],
          ),
        )),
      ) as _i6.Future<_i2.TokenResponse>);

  @override
  _i6.Future<_i2.EndSessionResponse> endSession(_i2.EndSessionRequest? request) => (super.noSuchMethod(
        Invocation.method(
          #endSession,
          [request],
        ),
        returnValue: _i6.Future<_i2.EndSessionResponse>.value(_FakeEndSessionResponse_3(
          this,
          Invocation.method(
            #endSession,
            [request],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i2.EndSessionResponse>.value(_FakeEndSessionResponse_3(
          this,
          Invocation.method(
            #endSession,
            [request],
          ),
        )),
      ) as _i6.Future<_i2.EndSessionResponse>);
}

/// A class which mocks [FlutterSecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterSecureStorage extends _i1.Mock implements _i3.FlutterSecureStorage {
  @override
  _i3.IOSOptions get iOptions => (super.noSuchMethod(
        Invocation.getter(#iOptions),
        returnValue: _FakeIOSOptions_4(
          this,
          Invocation.getter(#iOptions),
        ),
        returnValueForMissingStub: _FakeIOSOptions_4(
          this,
          Invocation.getter(#iOptions),
        ),
      ) as _i3.IOSOptions);

  @override
  _i3.AndroidOptions get aOptions => (super.noSuchMethod(
        Invocation.getter(#aOptions),
        returnValue: _FakeAndroidOptions_5(
          this,
          Invocation.getter(#aOptions),
        ),
        returnValueForMissingStub: _FakeAndroidOptions_5(
          this,
          Invocation.getter(#aOptions),
        ),
      ) as _i3.AndroidOptions);

  @override
  _i3.LinuxOptions get lOptions => (super.noSuchMethod(
        Invocation.getter(#lOptions),
        returnValue: _FakeLinuxOptions_6(
          this,
          Invocation.getter(#lOptions),
        ),
        returnValueForMissingStub: _FakeLinuxOptions_6(
          this,
          Invocation.getter(#lOptions),
        ),
      ) as _i3.LinuxOptions);

  @override
  _i3.WindowsOptions get wOptions => (super.noSuchMethod(
        Invocation.getter(#wOptions),
        returnValue: _FakeWindowsOptions_7(
          this,
          Invocation.getter(#wOptions),
        ),
        returnValueForMissingStub: _FakeWindowsOptions_7(
          this,
          Invocation.getter(#wOptions),
        ),
      ) as _i3.WindowsOptions);

  @override
  _i3.WebOptions get webOptions => (super.noSuchMethod(
        Invocation.getter(#webOptions),
        returnValue: _FakeWebOptions_8(
          this,
          Invocation.getter(#webOptions),
        ),
        returnValueForMissingStub: _FakeWebOptions_8(
          this,
          Invocation.getter(#webOptions),
        ),
      ) as _i3.WebOptions);

  @override
  _i3.MacOsOptions get mOptions => (super.noSuchMethod(
        Invocation.getter(#mOptions),
        returnValue: _FakeMacOsOptions_9(
          this,
          Invocation.getter(#mOptions),
        ),
        returnValueForMissingStub: _FakeMacOsOptions_9(
          this,
          Invocation.getter(#mOptions),
        ),
      ) as _i3.MacOsOptions);

  @override
  void registerListener({
    required String? key,
    required _i7.ValueChanged<String?>? listener,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerListener,
          [],
          {
            #key: key,
            #listener: listener,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void unregisterListener({
    required String? key,
    required _i7.ValueChanged<String?>? listener,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #unregisterListener,
          [],
          {
            #key: key,
            #listener: listener,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void unregisterAllListenersForKey({required String? key}) => super.noSuchMethod(
        Invocation.method(
          #unregisterAllListenersForKey,
          [],
          {#key: key},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void unregisterAllListeners() => super.noSuchMethod(
        Invocation.method(
          #unregisterAllListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> write({
    required String? key,
    required String? value,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [],
          {
            #key: key,
            #value: value,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<String?> read({
    required String? key,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i6.Future<String?>.value(),
        returnValueForMissingStub: _i6.Future<String?>.value(),
      ) as _i6.Future<String?>);

  @override
  _i6.Future<bool> containsKey({
    required String? key,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i6.Future<bool>.value(false),
        returnValueForMissingStub: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Future<void> delete({
    required String? key,
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<Map<String, String>> readAll({
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readAll,
          [],
          {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i6.Future<Map<String, String>>.value(<String, String>{}),
        returnValueForMissingStub: _i6.Future<Map<String, String>>.value(<String, String>{}),
      ) as _i6.Future<Map<String, String>>);

  @override
  _i6.Future<void> deleteAll({
    _i3.IOSOptions? iOptions,
    _i3.AndroidOptions? aOptions,
    _i3.LinuxOptions? lOptions,
    _i3.WebOptions? webOptions,
    _i3.MacOsOptions? mOptions,
    _i3.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAll,
          [],
          {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<bool?> isCupertinoProtectedDataAvailable() => (super.noSuchMethod(
        Invocation.method(
          #isCupertinoProtectedDataAvailable,
          [],
        ),
        returnValue: _i6.Future<bool?>.value(),
        returnValueForMissingStub: _i6.Future<bool?>.value(),
      ) as _i6.Future<bool?>);
}

/// A class which mocks [Auth0Api].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuth0Api extends _i1.Mock implements _i4.Auth0Api {
  @override
  String get domain => (super.noSuchMethod(
        Invocation.getter(#domain),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#domain),
        ),
        returnValueForMissingStub: _i8.dummyValue<String>(
          this,
          Invocation.getter(#domain),
        ),
      ) as String);

  @override
  String get clientId => (super.noSuchMethod(
        Invocation.getter(#clientId),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#clientId),
        ),
        returnValueForMissingStub: _i8.dummyValue<String>(
          this,
          Invocation.getter(#clientId),
        ),
      ) as String);

  @override
  String get audience => (super.noSuchMethod(
        Invocation.getter(#audience),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#audience),
        ),
        returnValueForMissingStub: _i8.dummyValue<String>(
          this,
          Invocation.getter(#audience),
        ),
      ) as String);

  @override
  _i6.Future<_i9.Auth0SignupResponse?> signup(_i9.Auth0SignupRequestBody? requestBody) => (super.noSuchMethod(
        Invocation.method(
          #signup,
          [requestBody],
        ),
        returnValue: _i6.Future<_i9.Auth0SignupResponse?>.value(),
        returnValueForMissingStub: _i6.Future<_i9.Auth0SignupResponse?>.value(),
      ) as _i6.Future<_i9.Auth0SignupResponse?>);

  @override
  _i6.Future<_i4.DeviceTokenRequestResponse> fetchDeviceCode({required String? scope}) => (super.noSuchMethod(
        Invocation.method(
          #fetchDeviceCode,
          [],
          {#scope: scope},
        ),
        returnValue: _i6.Future<_i4.DeviceTokenRequestResponse>.value(_FakeDeviceTokenRequestResponse_10(
          this,
          Invocation.method(
            #fetchDeviceCode,
            [],
            {#scope: scope},
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i4.DeviceTokenRequestResponse>.value(_FakeDeviceTokenRequestResponse_10(
          this,
          Invocation.method(
            #fetchDeviceCode,
            [],
            {#scope: scope},
          ),
        )),
      ) as _i6.Future<_i4.DeviceTokenRequestResponse>);

  @override
  _i6.Future<_i4.Credentials> listenToResolve(_i4.DeviceTokenRequestResponse? deviceToken) => (super.noSuchMethod(
        Invocation.method(
          #listenToResolve,
          [deviceToken],
        ),
        returnValue: _i6.Future<_i4.Credentials>.value(_FakeCredentials_11(
          this,
          Invocation.method(
            #listenToResolve,
            [deviceToken],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i4.Credentials>.value(_FakeCredentials_11(
          this,
          Invocation.method(
            #listenToResolve,
            [deviceToken],
          ),
        )),
      ) as _i6.Future<_i4.Credentials>);
}
