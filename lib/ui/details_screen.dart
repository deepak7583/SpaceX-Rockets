import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/rocket_provider.dart';

class RocketDetailsScreen extends ConsumerWidget {
  final String rocketId;

  const RocketDetailsScreen({super.key, required this.rocketId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rocketAsync = ref.watch(rocketDetailsProvider(rocketId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rocket Details'),
      ),
      body: rocketAsync.when(
        data: (rocket) => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rocket.name ?? 'Unknown Rocket',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 10),
              Text('Country: ${rocket.country ?? "N/A"}',
                  style: const TextStyle(fontSize: 16)),
              Text('Engines: ${rocket.engines?.number ?? 0}',
                  style: const TextStyle(fontSize: 16)),
              Text(
                'Status: ${rocket.active == true ? "Active 🟢" : "Inactive 🔴"}',
                style: const TextStyle(fontSize: 16),
              ),
              Text('Cost per Launch: \$${rocket.costPerLaunch ?? 0}',
                  style: const TextStyle(fontSize: 16)),
              Text('Success Rate: ${rocket.successRatePct ?? 0}%',
                  style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Text(rocket.description ?? 'No description available',
                  style: const TextStyle(fontSize: 14)),
              const SizedBox(height: 20),

              // Image Slider
              if (rocket.flickrImages != null &&
                  rocket.flickrImages!.isNotEmpty)
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rocket.flickrImages!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            rocket.flickrImages![index],
                            width: 300,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.broken_image, size: 100);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                )
              else
                const Text("No images available",
                    style: TextStyle(fontSize: 14)),

              const SizedBox(height: 20),

              // Wikipedia Link
              if (rocket.wikipedia != null && rocket.wikipedia!.isNotEmpty)
                ElevatedButton.icon(
                  onPressed: () async {
                    final Uri url = Uri.parse(rocket.wikipedia!);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Could not open Wikipedia link.')),
                      );
                    }
                  },
                  icon: const Icon(Icons.open_in_browser),
                  label: const Text('View on Wikipedia'),
                )
              else
                const Text("Wikipedia link not available",
                    style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
