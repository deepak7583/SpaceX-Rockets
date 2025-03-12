import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_rockets/providers/rocket_provider.dart';
import 'package:spacex_rockets/ui/details_screen.dart';
import 'package:spacex_rockets/ui/widgets/rocket_card.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rocketsAsync = ref.watch(rocketsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SpaceX Rockets 🚀'),
      ),
      body: rocketsAsync.when(
        data: (rockets) => ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: rockets.length,
          itemBuilder: (context, index) {
            final rocket = rockets[index];
            return RocketCard(
              rocket: rocket,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RocketDetailsScreen(rocketId: rocket.id??'unknown id'),
                  ),
                );
              },
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),

      ),
    );
  }
}
