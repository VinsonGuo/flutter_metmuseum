import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_metmuseum/model/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/providers.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<MuseumObjectDetail>> details =
        ref.watch(museumObjectProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Met Museum'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: switch (details) {
            AsyncData(:final value) => PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                children: value.map((item) {
                  return Stack(
                    children: [
                      CachedNetworkImage(
                        width: double.infinity,
                        height: double.infinity,
                        imageUrl: item.primaryImage,
                        fit: BoxFit.fitHeight,
                        fadeInDuration: Duration(microseconds: 0),
                        fadeOutDuration: Duration(microseconds: 0),
                        placeholder: (context, url) => CachedNetworkImage(
                          imageUrl: item.primaryImageSmall,
                          fit: BoxFit.fitHeight,
                        ),
                        errorWidget: (context, url, error) => Icon(
                          Icons.error,
                          size: 20,
                        ),
                      ),
                      ListTile(
                        title: Text(item.title),
                        subtitle: Text(item.artistDisplayName.isEmpty
                            ? "Unknown"
                            : item.artistDisplayName),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  );
                }).toList(),
              ),
            AsyncError(:final error) =>
              Text('Oops, something unexpected happened ${error.toString()}'),
            _ => const SizedBox(
                width: 40, height: 40, child: CircularProgressIndicator()),
          },
        ));
  }
}
