import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/presentation/core/info_text_field.dart';
import 'package:lumina_gpt/utils/constants/palette.dart';

/// @nodoc
class AgentNameDialog extends StatelessWidget {
  /// @nodoc
  const AgentNameDialog({super.key});

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
                Icons.smart_toy_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InfoTextField(
                icon: Icons.smart_toy_outlined,
                text: 'Name',
                onChanged: (value) => context
                    .read<HomeBloc>()
                    .add(HomeEvent.agentNameChanged(value)),
                validator: (_) =>
                    context.watch<HomeBloc>().state.apiKey?.value.match(
                          (_) => null,
                          (err) => err.maybeMap(
                            emptyInput: (_) => 'The name is invalid.',
                            orElse: () => null,
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
                      .add(const HomeEvent.agentNameSubmitted());

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
