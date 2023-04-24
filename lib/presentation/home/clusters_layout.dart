import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/clusters/cluster.dart';

/// @nodoc
class ClustersLayout extends StatelessWidget {
  /// @nodoc
  const ClustersLayout({
    required this.clusters,
    this.agent,
    super.key,
  });

  /// @nodoc
  final List<Cluster> clusters;

  /// @nodoc
  final Agent? agent;

  @override
  Widget build(BuildContext context) {
    if (agent == null) {
      return const Text(
        'No clusters found',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    return ListView.separated(
      itemBuilder: (_, i) => Padding(
        padding: const EdgeInsets.all(10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            leading: const Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.white,
            ),
            title: Text(
              clusters[i].name.getOrCrash(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () => context
                .read<HomeBloc>()
                .add(HomeEvent.clusterPressed(clusters[i])),
          ),
        ),
      ),
      separatorBuilder: (_, i) => const SizedBox(height: 10),
      itemCount: clusters.length,
    );
  }
}
