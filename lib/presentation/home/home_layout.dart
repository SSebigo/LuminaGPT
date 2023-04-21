import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/domain/core/view.dart';
import 'package:lumina_gpt/presentation/core/dialogs/agent_name_dialog.dart';
import 'package:lumina_gpt/presentation/core/dialogs/api_key_dialog.dart';
import 'package:lumina_gpt/presentation/core/dialogs/error_dialog.dart';
import 'package:lumina_gpt/presentation/home/agents_layout.dart';
import 'package:lumina_gpt/presentation/home/chat_layout.dart';
import 'package:lumina_gpt/presentation/home/clusters_layout.dart';
import 'package:lumina_gpt/presentation/home/views_layout.dart';
import 'package:lumina_gpt/presentation/home/widgets/bordered_list_tile.dart';
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
                      messages: const [],
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
            const ViewsLayout(),
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
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.agent != null && state.view == View.clusters) {
                        return DecoratedBox(
                          decoration: const BoxDecoration(
                            color: primaryColor,
                            border: Border(
                              bottom: BorderSide(
                                color: secondaryColor,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ListTile(
                              leading: const Icon(
                                Icons.smart_toy_outlined,
                                color: Colors.white,
                              ),
                              title: Text(
                                state.agent!.name.getOrCrash(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) => BorderedListTile(
                        icon: Icons.add_rounded,
                        title: state.view == View.agents
                            ? 'New agent'
                            : 'New cluster',
                        onTap: state.view == View.agents
                            ? () => showDialog<AgentNameDialog>(
                                  context: context,
                                  builder: (_) => const AgentNameDialog(),
                                )
                            : () => context
                                .read<HomeBloc>()
                                .add(const HomeEvent.newClusterPressed()),
                      ),
                    ),
                  ),
                  Expanded(
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        switch (state.view) {
                          case View.agents:
                            return AgentsLayout(
                              agents: state.agents,
                            );
                          case View.clusters:
                            return ClustersLayout(
                              clusters: state.agent?.clusters ?? [],
                              agent: state.agent,
                            );
                          case View.unknown:
                            return Container();
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: BorderedListTile(
                      icon: Icons.settings_outlined,
                      title: 'Settings'.toUpperCase(),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            const ChatLayout(),
          ],
        ),
      ),
    );
  }
}
