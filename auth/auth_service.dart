import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  static const _kUsersKey = 'gogo_users'; // json: {email: password}
  static const _kSessionKey = 'gogo_session_email';

  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  Future<Map<String, String>> _readUsers() async {
    final prefs = await _prefs;
    final raw = prefs.getString(_kUsersKey);
    if (raw == null || raw.trim().isEmpty) {
      // seed 1 account demo để test ngay
      final seed = <String, String>{
        'demo@gogo.vn': '123456',
      };
      await _writeUsers(seed);
      return seed;
    }

    final decoded = jsonDecode(raw);
    if (decoded is! Map) return <String, String>{};

    return decoded.map((k, v) => MapEntry(k.toString(), v.toString()));
  }

  Future<void> _writeUsers(Map<String, String> users) async {
    final prefs = await _prefs;
    await prefs.setString(_kUsersKey, jsonEncode(users));
  }

  Future<String?> currentUserEmail() async {
    final prefs = await _prefs;
    return prefs.getString(_kSessionKey);
  }

  Future<void> login({required String email, required String password}) async {
    final users = await _readUsers();
    final saved = users[email];

    if (saved == null) {
      throw AuthException('Email chưa được đăng ký.');
    }
    if (saved != password) {
      throw AuthException('Mật khẩu không đúng.');
    }

    final prefs = await _prefs;
    await prefs.setString(_kSessionKey, email);
  }

  Future<void> logout() async {
    final prefs = await _prefs;
    await prefs.remove(_kSessionKey);
  }

  Future<void> register({required String email, required String password}) async {
    final users = await _readUsers();
    if (users.containsKey(email)) {
      throw AuthException('Email đã tồn tại. Hãy đăng nhập.');
    }
    users[email] = password;
    await _writeUsers(users);
  }

  Future<void> sendPasswordReset({required String email}) async {
    final users = await _readUsers();
    if (!users.containsKey(email)) {
      throw AuthException('Email không tồn tại trong hệ thống.');
    }
    // Demo: không có email server => coi như “đã gửi hướng dẫn”
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);
}
