import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/domain/core/view.dart';
import 'package:lumina_gpt/presentation/core/action_button.dart';
import 'package:lumina_gpt/presentation/core/info_text_field.dart';
import 'package:lumina_gpt/presentation/home/widgets/task_bubble.dart';
import 'package:lumina_gpt/utils/constants/palette.dart';

/// @nodoc
class ChatLayout extends StatelessWidget {
  /// @nodoc
  const ChatLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ColoredBox(
        color: primaryColor,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.view == View.agents) {
              return const Center(
                child: Text(
                  'LuminaGPT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.thinking) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                'Thinking',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SpinKitThreeBounce(
                              color: Colors.white,
                              size: 12.5,
                            ),
                          ],
                        ),
                      );
                    }
                    return Container();
                  },
                ),
                Expanded(
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return ListView.separated(
                        itemBuilder: (_, i) {
                          return ColoredBox(
                            color: primaryColor,
                            child: BlocBuilder<HomeBloc, HomeState>(
                              buildWhen: (previous, current) =>
                                  previous.cluster?.tasks[i].result !=
                                  current.cluster?.tasks[i].result,
                              builder: (context, state) {
                                return TaskBubble(
                                  task: state.cluster?.tasks[i],
                                );
                              },
                            ),
                          );
                        },
                        separatorBuilder: (_, i) => const SizedBox(height: 25),
                        itemCount: state.cluster?.tasks.length ?? 0,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) => InfoTextField(
                      controller: state.clusterNameController,
                      icon: Icons.hub_outlined,
                      text: 'Name'.toUpperCase(),
                      onChanged: (value) => context
                          .read<HomeBloc>()
                          .add(HomeEvent.clusterNameChanged(value)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) => InfoTextField(
                      controller: state.clusterGoalController,
                      icon: Icons.star_outline_rounded,
                      text: 'Goal'.toUpperCase(),
                      onChanged: (value) => context
                          .read<HomeBloc>()
                          .add(HomeEvent.clusterGoalChanged(value)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) => InfoTextField(
                      controller: state.clusterKnowledgeController,
                      icon: Icons.library_books_outlined,
                      text: 'Knowledge'.toUpperCase(),
                      onChanged: (value) => context
                          .read<HomeBloc>()
                          .add(HomeEvent.clusterKnowledgeChanged(value)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) => ActionButton(
                          text: 'Deploy',
                          onPressed: state.thinking
                              ? null
                              : () => context
                                  .read<HomeBloc>()
                                  .add(const HomeEvent.deployPressed()),
                        ),
                      ),
                      // const SizedBox(width: 50),
                      // ActionButton(
                      //   text: 'Stop',
                      //   onPressed: () {},
                      //   backgroundColor: Colors.redAccent,
                      // ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
