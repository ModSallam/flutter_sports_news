import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class NewsDetailsScreen extends StatelessWidget {
  final ArticleModel article;

  const NewsDetailsScreen({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              image: DecorationImage(
                image: NetworkImage(article.urlToImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('From: ${article.source!.name}'),
                      Text('At: ${article.publishedAt}'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      debugPrint('tapped');
                      if (Platform.isAndroid) {
                        FlutterWebBrowser.openWebPage(
                          url: article.url,
                          customTabsOptions: const CustomTabsOptions(
                            colorScheme: CustomTabsColorScheme.dark,
                            darkColorSchemeParams: CustomTabsColorSchemeParams(
                              toolbarColor: Colors.black,
                              secondaryToolbarColor: Colors.amber,
                              navigationBarColor: Colors.black,
                              navigationBarDividerColor: Colors.black,
                            ),
                            shareState: CustomTabsShareState.on,
                            instantAppsEnabled: true,
                            showTitle: true,
                            urlBarHidingEnabled: true,
                          ),
                        );
                      }
                      if (Platform.isIOS) {
                        FlutterWebBrowser.openWebPage(
                          url: article.url,
                          safariVCOptions: const SafariViewControllerOptions(
                            barCollapsingEnabled: true,
                            preferredBarTintColor: Colors.amber,
                            preferredControlTintColor: Colors.black,
                            dismissButtonStyle:
                                SafariViewControllerDismissButtonStyle.close,
                            modalPresentationCapturesStatusBarAppearance: true,
                            modalPresentationStyle:
                                UIModalPresentationStyle.overFullScreen,
                          ),
                        );
                      }
                    },
                    child: RichText(
                      text: TextSpan(
                        text: article.description,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                        children: const [
                          TextSpan(
                            text: ' see more',
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
