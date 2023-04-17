import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/presentation/core/action_button.dart';
import 'package:lumina_gpt/presentation/core/dialogs/api_key_dialog.dart';
import 'package:lumina_gpt/presentation/core/dialogs/error_dialog.dart';
import 'package:lumina_gpt/presentation/core/info_text_field.dart';
import 'package:lumina_gpt/presentation/home/widgets/task_bubble.dart';
import 'package:lumina_gpt/utils/constants/palette.dart';

/// @nodoc
class HomeLayout extends StatelessWidget {
  /// @nodoc
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                settings: (f) => f.f.maybeMap(
                  apiKeyNotFound: (_) => showDialog<ApiKeyDialog>(
                    context: context,
                    builder: (_) => const ApiKeyDialog(),
                  ),
                  settingsNotFound: (_) => showDialog<ErrorDialog>(
                    context: context,
                    builder: (_) => ErrorDialog(
                      messages: [],
                      onPressed: () {},
                    ),
                  ),
                  orElse: () {},
                ),
                orElse: () {},
              ),
            ),
            none: () {},
          );
        },
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: primaryColor,
                border: Border(
                  right: BorderSide(
                    color: secondaryColor,
                    width: 2,
                  ),
                ),
              ),
              width: 250,
              child: Column(
                children: [
                  ListTile(
                    tileColor: primaryColor,
                    leading: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'New agent',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.white, width: 2),
                    ),
                    onTap: () {},
                  ),
                  Expanded(
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        return ListView.separated(
                          itemBuilder: (_, i) {
                            // return ListTile with a leadng icons chat bubble, a title state.sessions[i].name
                            return ListTile(
                              tileColor: primaryColor,
                              leading: const Icon(
                                Icons.chat_bubble,
                                color: Colors.white,
                              ),
                              title: Text(
                                state.agents[i].name.getOrCrash(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () => context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.agentPressed(state.agents[i])),
                            );
                          },
                          separatorBuilder: (_, i) =>
                              const SizedBox(height: 10),
                          itemCount: state.agents.length,
                        );
                      },
                    ),
                  ),
                  // a ListTile with a leading icon gear, a title "Settings"
                  ListTile(
                    tileColor: primaryColor,
                    leading: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: ColoredBox(
                color: primaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state.thinking) {
                          // return a white text "Thinking..."
                          return const Text(
                            'Thinking...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        }
                        return Container();
                      },
                    ),
                    Expanded(
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          if (state.agent == null) {
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
                          return ListView.separated(
                            itemBuilder: (_, i) {
                              return ColoredBox(
                                color: primaryColor,
                                child: BlocBuilder<HomeBloc, HomeState>(
                                  buildWhen: (previous, current) =>
                                      previous.agent?.tasks[i].result !=
                                      current.agent?.tasks[i].result,
                                  builder: (context, state) {
                                    return TaskBubble(
                                      task: state.agent?.tasks[i],
                                    );
                                  },
                                ),
                              );
                            },
                            separatorBuilder: (_, i) =>
                                const SizedBox(height: 25),
                            itemCount: state.agent?.tasks.length ?? 0,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InfoTextField(
                        icon: Icons.smart_toy_outlined,
                        text: 'Name'.toUpperCase(),
                        onChanged: (value) => context
                            .read<HomeBloc>()
                            .add(HomeEvent.nameChanged(value)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InfoTextField(
                        icon: Icons.star_outline_rounded,
                        text: 'Goal'.toUpperCase(),
                        onChanged: (value) => context
                            .read<HomeBloc>()
                            .add(HomeEvent.goalChanged(value)),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
