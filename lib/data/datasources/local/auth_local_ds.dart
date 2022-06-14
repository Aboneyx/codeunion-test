// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:developer';

import 'package:codeunion_test/core/error/exception.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDS {
  Future<void> saveUserToCache({
    required UserDTO user,
  });

  Future<UserDTO> getUserFromCache();

  Future<UserDTO?> getUserFromCacheNull();

  Future<void> removeUserFromCache();
}

const USER_FROM_CACHE = 'USER';
const IS_ONBOARDING = 'IS_ONBOARDING';
const CHOSEN_ADDRESS = 'CHOSEN_ADDRESS';
const DEVICE_TOKEN = 'DEVICE_TOKEN';

class AuthLocalDSImpl extends AuthLocalDS {
  final SharedPreferences sharedPreferences;

  AuthLocalDSImpl({required this.sharedPreferences});

  @override
  Future<UserDTO> getUserFromCache() async {
    try {
      final user = sharedPreferences.get(USER_FROM_CACHE);
      if (user != null) {
        return UserDTO.fromJson(
          jsonDecode(user.toString()) as Map<String, dynamic>,
        );
      } else {
        throw CacheException(message: 'В кэше нет запрашиваемые данные');
      }
    } catch (e) {
      log('AuthLocalDSImpl:: $e');
      throw CacheException(message: 'В кэше нет запрашиваемые данные');
    }
  }

  @override
  Future<UserDTO?> getUserFromCacheNull() async {
    try {
      final user = sharedPreferences.get(USER_FROM_CACHE);
      if (user != null) {
        return UserDTO.fromJson(
          jsonDecode(user.toString()) as Map<String, dynamic>,
        );
      }
      return null;
    } catch (e) {
      log('AuthLocalDSImpl getUserFromCacheNull:: $e');
      throw CacheException(message: 'В кэше нет запрашиваемые данные');
    }
  }

  @override
  Future<void> saveUserToCache({
    required UserDTO user,
  }) async {
    sharedPreferences.setString(USER_FROM_CACHE, jsonEncode(user.toJson()));
  }

  @override
  Future<void> removeUserFromCache() async {
    sharedPreferences.remove(USER_FROM_CACHE);
  }
}
