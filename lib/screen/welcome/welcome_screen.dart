import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hodi/api/api_client/api_client.dart';
import 'package:hodi/injection.dart';
import 'package:hodi/screen/welcome/cubit/welcome_cubit.dart';
import 'package:hodi/screen/welcome/cubit/welcome_state.dart';
import 'package:loading_overlay/loading_overlay.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeCubit(getIt.get<ApiClient>())..getAccount(),
      child: BlocConsumer<WelcomeCubit, WelcomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state.isLoading) {
            return LoadingOverlay(child: Container(), isLoading: true);
          }
          return Scaffold(
            body: Center(
              child: Text('Welcome'),
            ),
          );
        },
      ),
    );
  }
}
