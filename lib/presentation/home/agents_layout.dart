import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';

/// @nodoc
class AgentsLayout extends StatelessWidget {
  /// @nodoc
  const AgentsLayout({
    required this.agents,
    super.key,
  });

  /// @nodoc
  final List<Agent> agents;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, i) => Padding(
        padding: const EdgeInsets.all(10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            leading: const Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.white,
            ),
            title: Text(
              agents[i].name.getOrCrash(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () => context.read<HomeBloc>().add(
                  HomeEvent.agentPressed(agents[i]),
                ),
          ),
        ),
      ),
      separatorBuilder: (_, i) => const SizedBox(height: 10),
      itemCount: agents.length,
    );
  }
}
