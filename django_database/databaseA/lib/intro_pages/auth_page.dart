import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supply_co/core_pages/homepage.dart';
import 'package:supply_co/services/local_storage_service.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isRegisterTab = true;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController mobileRegisterController =
      TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final TextEditingController mobileLoginController = TextEditingController();
  final TextEditingController loginOtpController = TextEditingController();

  bool isOtpRequested = false;
  bool isLoginOtpRequested = false;

  bool isLoading_otpfor_registration = false;
  bool isLoading_for_registration = false;
  bool isLoading_google_signin = false;
  bool isLoading_loginbutton = false;
  bool isLoading_otpfor_login = false;
  bool isLoading_login = false;

  final supabase = Supabase.instance.client;

  @override
  void dispose() {
    fullNameController.dispose();
    mobileRegisterController.dispose();
    otpController.dispose();
    mobileLoginController.dispose();
    loginOtpController.dispose();
    super.dispose();
  }

  // ─────────────────────────────────────────────
  // HELPER — Sync language preference to Supabase
  // ─────────────────────────────────────────────
  Future<void> _syncLanguageToSupabase(String userId) async {
    try {
      final languageCode = StorageService.getPreferredLanguage();
      await supabase
          .from('user_details')
          .update({'preferred_language': languageCode})
          .eq('id', userId);
    } catch (e) {
      debugPrint('Error syncing language to Supabase: $e');
    }
  }

  // ─────────────────────────────────────────────
  // PHONE AUTH — SEND OTP (Register)
  // ─────────────────────────────────────────────
  Future<void> _sendOtp(String phone) async {
    final formattedPhone = '+91$phone';
    setState(() => isLoading_otpfor_registration = true);
    try {
      await supabase.auth.signInWithOtp(phone: formattedPhone);
      setState(() {
        isOtpRequested = true;
        isLoading_otpfor_registration = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.otpSentSuccessfully),
        ),
      );
    } on AuthException catch (e) {
      setState(() => isLoading_otpfor_registration = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message)));
    } catch (e) {
      setState(() => isLoading_otpfor_registration = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  // ─────────────────────────────────────────────
  // PHONE AUTH — VERIFY OTP & REGISTER
  // ─────────────────────────────────────────────
  Future<void> _verifyOtpAndRegister() async {
    final formattedPhone = '+91${mobileRegisterController.text}';
    final otp = otpController.text.trim();
    final fullName = fullNameController.text.trim();
    setState(() => isLoading_for_registration = true);
    try {
      final response = await supabase.auth.verifyOTP(
        phone: formattedPhone,
        token: otp,
        type: OtpType.sms,
      );
      if (response.user != null) {
        await supabase.from('user_details').upsert({
          'id': response.user!.id,
          'name': fullName,
          'phone_number': formattedPhone,
        });
        await _syncLanguageToSupabase(response.user!.id);
        setState(() => isLoading_for_registration = false);
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      }
    } on AuthException catch (e) {
      setState(() => isLoading_for_registration = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message)));
    } catch (e) {
      setState(() => isLoading_for_registration = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  // ─────────────────────────────────────────────
  // PHONE AUTH — SEND LOGIN OTP
  // ─────────────────────────────────────────────
  Future<void> _sendLoginOtp() async {
    final phone = mobileLoginController.text.trim();
    if (phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.pleaseEnterMobileMessage),
        ),
      );
      return;
    }
    if (phone.length != 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.pleaseEnterValidMobileNumber,
          ),
        ),
      );
      return;
    }
    final formattedPhone = '+91$phone';
    setState(() => isLoading_otpfor_login = true);
    try {
      await supabase.auth.signInWithOtp(phone: formattedPhone);
      setState(() {
        isLoginOtpRequested = true;
        isLoading_otpfor_login = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.otpSentSuccessfully),
        ),
      );
    } on AuthException catch (e) {
      setState(() => isLoading_otpfor_login = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message)));
    } catch (e) {
      setState(() => isLoading_otpfor_login = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  // ─────────────────────────────────────────────
  // PHONE AUTH — VERIFY OTP & LOGIN
  // ─────────────────────────────────────────────
  Future<void> _verifyOtpAndLogin() async {
    final formattedPhone = '+91${mobileLoginController.text.trim()}';
    final otp = loginOtpController.text.trim();
    if (otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.pleaseEnterOTPMessage),
        ),
      );
      return;
    }
    setState(() => isLoading_login = true);
    try {
      final response = await supabase.auth.verifyOTP(
        phone: formattedPhone,
        token: otp,
        type: OtpType.sms,
      );
      setState(() => isLoading_login = false);
      if (response.user != null) {
        final profile = await supabase
            .from('user_details')
            .select()
            .eq('id', response.user!.id)
            .maybeSingle();
        if (profile == null) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  AppLocalizations.of(context)!.numberNotRegistered,
                ),
              ),
            );
            setState(() {
              isRegisterTab = true;
              isLoginOtpRequested = false;
              loginOtpController.clear();
            });
          }
        } else {
          if (mounted) {
            await _syncLanguageToSupabase(response.user!.id);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
        }
      }
    } on AuthException catch (e) {
      setState(() => isLoading_login = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message)));
    } catch (e) {
      setState(() => isLoading_login = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  // ─────────────────────────────────────────────
  // GOOGLE SIGN IN
  // Register tab: checks name field → proceeds → saves profile to db
  // Login tab: checks if user exists → if not, redirects to register
  // ─────────────────────────────────────────────
  Future<void> _signInWithGoogle() async {
    // REGISTER TAB ONLY: Stop if name field is empty
    if (isRegisterTab && fullNameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.pleaseEnterNameBefore),
        ),
      );
      return; // Don't proceed — user must fill name field first
    }

    setState(() => isLoading_google_signin = true);

    try {
      await supabase.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: 'supplyco://login-callback/',
        authScreenLaunchMode: LaunchMode.externalApplication,
      );

      setState(() => isLoading_google_signin = false);

      // Listen for when Google OAuth completes and user returns to app
      supabase.auth.onAuthStateChange.listen((data) async {
        if (data.event == AuthChangeEvent.signedIn && mounted) {
          final user = data.session?.user;
          if (user == null) return;

          // Check if this Google account already has a profile in user_details
          final existingProfile = await supabase
              .from('user_details')
              .select()
              .eq('id', user.id)
              .maybeSingle(); // Returns null if not found

          if (existingProfile != null) {
            // EXISTING USER → sync language and go to HomePage
            if (mounted) {
              await _syncLanguageToSupabase(user.id);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }
          } else {
            if (isRegisterTab) {
              // NEW USER on Register tab → save profile to user_details
              // Name comes from the name text field the user already filled
              // Email comes from Google account automatically
              await supabase.from('user_details').upsert({
                'id': user.id,
                'name': fullNameController.text.trim(),
                'email': user.email ?? '',
              });
              await _syncLanguageToSupabase(user.id);

              if (mounted) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
            } else {
              // LOGIN TAB: no account found → tell user to register first
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(AppLocalizations.of(context)!.noAccountFound),
                  ),
                );
                setState(() => isRegisterTab = true); // Switch to register tab
              }
            }
          }
        }
      });
    } on AuthException catch (e) {
      setState(() => isLoading_google_signin = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message)));
    } catch (e) {
      setState(() => isLoading_google_signin = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B4D3E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          AppLocalizations.of(context)!.loginRegister,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isRegisterTab = true;
                          isOtpRequested = false;
                          isLoginOtpRequested = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isRegisterTab
                              ? Colors.orange[100]
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.register,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: isRegisterTab
                                ? Colors.orange
                                : Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isRegisterTab = false;
                          isOtpRequested = false;
                          isLoginOtpRequested = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: !isRegisterTab
                              ? Colors.orange[100]
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: !isRegisterTab
                                ? Colors.orange
                                : Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isRegisterTab ? _buildRegisterForm() : _buildLoginForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildRegisterForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            controller: fullNameController,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.enterFullName,
              hintStyle: TextStyle(color: Colors.grey[500]),
              prefixIcon: Icon(Icons.person, color: Colors.grey[600]),
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            controller: mobileRegisterController,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.enterMobileNumber,
              hintStyle: TextStyle(color: Colors.grey[500]),
              prefixIcon: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "+91",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text("🇮🇳", style: TextStyle(fontSize: 18)),
                    const SizedBox(width: 8),
                    Container(width: 1, height: 30, color: Colors.grey[300]),
                  ],
                ),
              ),
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 20),

          if (!isOtpRequested)
            _authButton(
              text: AppLocalizations.of(context)!.getOTP,
              isLoading: isLoading_otpfor_registration,
              onPressed: () {
                if (fullNameController.text.trim().isEmpty &&
                    mobileRegisterController.text.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.pleaseEnterNameAndNumber,
                      ),
                    ),
                  );
                  return;
                }
                if (fullNameController.text.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.pleaseEnterNameMessage,
                      ),
                    ),
                  );
                  return;
                }
                if (mobileRegisterController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.pleaseEnterMobileMessage,
                      ),
                    ),
                  );
                  return;
                }
                if (mobileRegisterController.text.length != 10) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.pleaseEnterValidMobileNumber,
                      ),
                    ),
                  );
                  return;
                }
                _sendOtp(mobileRegisterController.text.trim());
              },
            ),

          if (isOtpRequested) ...[
            const SizedBox(height: 15),
            TextField(
              controller: otpController,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.enterOTP,
                hintStyle: TextStyle(color: Colors.grey[500]),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => _sendOtp(mobileRegisterController.text.trim()),
                child: Text(
                  AppLocalizations.of(context)!.resendOTP,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _authButton(
              text: AppLocalizations.of(context)!.registerButtonLabel,
              isLoading: isLoading_for_registration,
              onPressed: () {
                if (otpController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.pleaseEnterOTPMessage,
                      ),
                    ),
                  );
                  return;
                }
                _verifyOtpAndRegister();
              },
            ),
          ],

          const SizedBox(height: 20),
          _orDivider(),
          const SizedBox(height: 20),
          _authButton(
            text: AppLocalizations.of(context)!.continueWithGoogle,
            isLoading: isLoading_google_signin,
            onPressed: _signInWithGoogle,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────
  // REUSABLE BUTTON WIDGET
  // Used for all buttons in this page
  // ─────────────────────────────────────────────
  Widget _authButton({
    required String text,
    required VoidCallback? onPressed,
    bool isLoading = false,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        // If isLoading is true → disable button (null disables it)
        // Otherwise → run the onPressed function
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1B4D3E),
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        // Show spinner while loading, otherwise show button text
        child: isLoading
            ? const CircularProgressIndicator(color: Colors.white)
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }

  // ─────────────────────────────────────────────
  // REUSABLE OR DIVIDER WIDGET
  // The "─── Or ───" divider used in both forms
  // ─────────────────────────────────────────────
  Widget _orDivider() {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey[300])),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            AppLocalizations.of(context)!.or,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey[300])),
      ],
    );
  }

  Widget _buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 40),
          TextField(
            controller: mobileLoginController,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.enterMobileNumber,
              hintStyle: TextStyle(color: Colors.grey[500]),
              prefixIcon: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "+91",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text("🇮🇳", style: TextStyle(fontSize: 18)),
                    const SizedBox(width: 8),
                    Container(width: 1, height: 30, color: Colors.grey[300]),
                  ],
                ),
              ),
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 20),

          if (!isLoginOtpRequested)
            _authButton(
              text: AppLocalizations.of(context)!.getOTP,
              isLoading: isLoading_otpfor_login,
              onPressed: _sendLoginOtp,
            ),

          if (isLoginOtpRequested) ...[
            TextField(
              controller: loginOtpController,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.enterOTP,
                hintStyle: TextStyle(color: Colors.grey[500]),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => _sendLoginOtp(),
                child: Text(
                  AppLocalizations.of(context)!.resendOTP,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _authButton(
              text: AppLocalizations.of(context)!.loginButtonLabel,
              isLoading: isLoading_login,
              onPressed: _verifyOtpAndLogin,
            ),
          ],

          const SizedBox(height: 30),
          _orDivider(),
          const SizedBox(height: 20),
          _authButton(
            text: AppLocalizations.of(context)!.continueWithGoogle,
            isLoading: isLoading_google_signin,
            onPressed: _signInWithGoogle,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
