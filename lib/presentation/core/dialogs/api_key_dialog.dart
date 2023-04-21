import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/presentation/core/info_text_field.dart';
import 'package:lumina_gpt/utils/constants/palette.dart';

/// @nodoc
class ApiKeyDialog extends StatelessWidget {
  /// @nodoc
  const ApiKeyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: primaryColor,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: secondaryColor, width: 2),
      ),
      child: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Icon(
                Icons.vpn_key_rounded,
                color: Colors.white,
                size: 35,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                'Please enter your API key',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) => InfoTextField(
                  controller: state.apiKeyController,
                  icon: Icons.vpn_key_rounded,
                  text: 'API key',
                  onChanged: (value) => context
                      .read<HomeBloc>()
                      .add(HomeEvent.apiKeyChanged(value)),
                  validator: (_) =>
                      context.watch<HomeBloc>().state.apiKey?.value.match(
                            (_) => null,
                            (err) => err.maybeMap(
                              emptyInput: (_) => 'The API key is invalid.',
                              orElse: () => null,
                            ),
                          ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: TextButton(
                onPressed: () {
                  context
                      .read<HomeBloc>()
                      .add(const HomeEvent.apiKeySubmitted());

                  context.router.pop();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.5),
                  ),
                  padding: const EdgeInsets.all(15),
                ),
                child: Text(
                  'Save'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
