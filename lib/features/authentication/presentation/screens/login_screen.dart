import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../routes/app_route.dart';
import '../providers/state/auth_notifier.dart';
import '../providers/state/auth_state.dart';
import '../widgets/auth_field.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  static const routeName = '/loginScreen';

  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController usernameController =
  TextEditingController(text: 'kminchelle');
  final TextEditingController passwordController =
  TextEditingController(text: '0lelplR');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifierProvider);
    ref.listen(
      authNotifierProvider.select((value) => value),
      ((previous, next) {
        //show Snackbar on failure
        if (next is Failure) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(next.exception.message.toString())));
        } else if (next is Success) {

            //Go to Home Screen
           }
      }),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('TDD with Riverpod'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AuthField(
              hintText: 'Username',
              controller: usernameController,
            ),
            AuthField(
              hintText: 'Password',
              obscureText: true,
              controller: passwordController,
            ),
            state.maybeMap(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              orElse: () => loginButton(ref),
            ),

          ],
        ),
      ),
    );
  }

  Widget loginButton(WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        // validate email and password
        ref.read(authNotifierProvider.notifier).loginUser(
          usernameController.text,
          passwordController.text,
        );
      },
      child: const Text('Login'),
    );
  }
}

class abc extends ConsumerStatefulWidget {
  const abc({super.key});

  @override
  ConsumerState createState() => _abcState();
}

class _abcState extends ConsumerState<abc> {

  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


