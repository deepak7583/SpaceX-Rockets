import 'package:flutter/material.dart';
import 'package:spacex_rockets/models/rocket_model.dart';

class RocketCard extends StatelessWidget {
  final RocketModel rocket;
  final VoidCallback onTap;

  const RocketCard({super.key, required this.rocket, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Rocket Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  (rocket.flickrImages?.isNotEmpty == true)
                      ? rocket.flickrImages![0]
                      : '',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.image_not_supported, size: 50);
                  },
                ),
              ),
              const SizedBox(width: 10),

              // Rocket Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rocket.name ?? 'Unknown',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text("Country: ${rocket.country ?? 'N/A'}",
                        style: const TextStyle(fontSize: 14)),
                    Text("Engines: ${rocket.engines?.number ?? 0}",
                        style: const TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
