import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/presentation/core/dialogs/api_key_dialog.dart';
import 'package:lumina_gpt/presentation/core/dialogs/error_dialog.dart';

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
              color: const Color(0xFF171717),
              width: 250,
              child: Column(
                children: [
                  ListTile(
                    tileColor: const Color(0xFF171717),
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
                              tileColor: const Color(0xFF171717),
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
                              onTap: () {},
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
                    tileColor: const Color(0xFF171717),
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
                color: const Color(0xFF2e2e2e),
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
                              // return a container with three texts, the first one is "Task added: state.agent.tasks[i].name", the second one is "Reasoning: state.agent.tasks[i].description", the third one is "Goal: state.agent.tasks[i].goal"
                              return ColoredBox(
                                color: const Color(0xFF171717),
                                child: BlocBuilder<HomeBloc, HomeState>(
                                  buildWhen: (previous, current) =>
                                      previous.agent?.tasks[i].result !=
                                      current.agent?.tasks[i].result,
                                  builder: (context, state) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Task added: ${state.agent?.tasks[i].name.getOrCrash()}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          'Reasoning: ${state.agent?.tasks[i].description.getOrCrash()}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          'Goal: ${state.agent?.tasks[i].goal.getOrCrash()}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        if (state.agent?.tasks[i].result !=
                                            null)
                                          Text(
                                            'Result: ${state.agent?.tasks[i].result?.getOrCrash()}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                            separatorBuilder: (_, i) =>
                                const SizedBox(height: 10),
                            itemCount: state.agent?.tasks.length ?? 0,
                          );
                        },
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) => context
                                .read<HomeBloc>()
                                .add(HomeEvent.nameChanged(value)),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Goal',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) => context
                                .read<HomeBloc>()
                                .add(HomeEvent.goalChanged(value)),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    // Two TextButton next to each other, the left one is "Deploy", the second one is "Stop", the have rounded corners (5)
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () => context
                                .read<HomeBloc>()
                                .add(const HomeEvent.deployPressed()),
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF171717),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              'Deploy',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF171717),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              'Stop',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
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
