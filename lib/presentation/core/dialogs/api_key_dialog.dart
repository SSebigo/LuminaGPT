import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';

/// @nodoc
class ApiKeyDialog extends StatelessWidget {
  /// @nodoc
  const ApiKeyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.vpn_key,
            color: Colors.black,
          ),
          const Text(
            'Please enter your API key',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'API key',
            ),
            onChanged: (value) =>
                context.read<HomeBloc>().add(HomeEvent.apiKeyChanged(value)),
            validator: (_) =>
                context.watch<HomeBloc>().state.apiKey?.value.match(
                      (_) => null,
                      (err) => err.maybeMap(
                        emptyInput: (_) => 'The password is invalid.',
                        orElse: () => null,
                      ),
                    ),
          ),
          TextButton(
            onPressed: () {
              context.read<HomeBloc>().add(const HomeEvent.apiKeySubmitted());

              context.router.pop();
            },
            child: const Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
