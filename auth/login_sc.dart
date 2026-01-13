import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'register_sc.dart';
import 'forgot_pass.dart';
import '../Gogo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtl = TextEditingController();
  final _passCtl = TextEditingController();

  bool _obscure = true;
  bool _loading = false;

  @override
  void dispose() {
    _emailCtl.dispose();
    _passCtl.dispose();
    super.dispose();
  }

  bool _isValidEmail(String s) {
    final v = s.trim();
    return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v);
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _loading = true);
    try {
      await AuthService.instance.login(
        email: _emailCtl.text.trim(),
        password: _passCtl.text,
      );

      if (!mounted) return;
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
        (_) => false,
      );
    } on AuthException catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message)),
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Accent tươi tắn, nhưng nền trắng
    const primary = Color(0xFF00BFA6);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewport) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(18),
              child: ConstrainedBox(
                // đảm bảo nội dung có thể canh giữa theo chiều dọc
                constraints: BoxConstraints(minHeight: viewport.maxHeight - 36),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 420),
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // ✅ căn giữa màn hình
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Header (vẫn nằm trên form, nhưng cả cụm được canh giữa màn hình)
                          const Text(
                            'GoGo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 46,
                              fontWeight: FontWeight.w900,
                              color: primary,
                              letterSpacing: 0.6,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Gợi ý lịch trình 3N2Đ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2F2F2F),
                            ),
                          ),
                          const SizedBox(height: 18),

                          // Card Login
                          Card(
                            elevation: 0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Colors.black.withOpacity(0.08)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: _emailCtl,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        prefixIcon: const Icon(Icons.login),
                                        filled: true,
                                        fillColor: const Color(0xFFF6F7FB),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(14),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      validator: (v) {
                                        final s = (v ?? '').trim();
                                        if (s.isEmpty) return 'Vui lòng nhập email.';
                                        if (!_isValidEmail(s)) return 'Email không hợp lệ.';
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 12),
                                    TextFormField(
                                      controller: _passCtl,
                                      obscureText: _obscure,
                                      textInputAction: TextInputAction.done,
                                      onFieldSubmitted: (_) => _login(),
                                      decoration: InputDecoration(
                                        labelText: 'Mật khẩu',
                                        prefixIcon: const Icon(Icons.key),
                                        suffixIcon: IconButton(
                                          tooltip: _obscure ? 'Hiện mật khẩu' : 'Ẩn mật khẩu',
                                          onPressed: () => setState(() => _obscure = !_obscure),
                                          icon: Icon(
                                            _obscure ? Icons.visibility : Icons.visibility_off,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: const Color(0xFFF6F7FB),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(14),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      validator: (v) {
                                        final s = (v ?? '');
                                        if (s.isEmpty) return 'Vui lòng nhập mật khẩu.';
                                        if (s.length < 6) return 'Mật khẩu tối thiểu 6 ký tự.';
                                        return null;
                                      },
                                    ),

                                    // Forgot password
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => const ForgotPasswordScreen(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          'Quên mật khẩu?',
                                          style: TextStyle(color: primary),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 4),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: _loading ? null : _login,
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: primary,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(14),
                                          ),
                                        ),
                                        child: _loading
                                            ? const SizedBox(
                                                width: 22,
                                                height: 22,
                                                child: CircularProgressIndicator(
                                                  strokeWidth: 2,
                                                  color: Colors.white,
                                                ),
                                              )
                                            : const Text(
                                                'Đăng nhập',
                                                style: TextStyle(fontWeight: FontWeight.w800),
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 18),

                          // Register
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Chưa có tài khoản?',
                                style: TextStyle(color: Colors.black.withOpacity(0.55)),
                              ),
                              const SizedBox(width: 6),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => const RegisterScreen()),
                                  );
                                },
                                child: const Text(
                                  'Đăng ký ngay',
                                  style: TextStyle(
                                    color: primary,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
