import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/domain/core/view.dart';
import 'package:lumina_gpt/utils/constants/palette.dart';

/// @nodoc
class ViewsLayout extends StatelessWidget {
  /// @nodoc
  const ViewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        border: Border(
          right: BorderSide(
            color: secondaryColor,
            width: 2,
          ),
        ),
      ),
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: state.view == View.agents
                      ? Colors.redAccent
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () => context
                      .read<HomeBloc>()
                      .add(const HomeEvent.viewPressed(View.agents)),
                  icon: const Icon(
                    Icons.smart_toy_outlined,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.agent != null) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: state.view == View.clusters
                        ? Colors.blueAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: () => context
                        .read<HomeBloc>()
                        .add(const HomeEvent.viewPressed(View.clusters)),
                    icon: const Icon(
                      Icons.hub_outlined,
                      color: Colors.white,
                    ),
                  ),
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
