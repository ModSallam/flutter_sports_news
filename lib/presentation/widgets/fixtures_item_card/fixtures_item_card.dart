import 'package:flutter/material.dart';
import 'package:sports_news_bloc_app/data/data.dart';

class FixturesItemCard extends StatelessWidget {
  final FixtureResult result;
  final Function() onTap;

  const FixturesItemCard({
    Key? key,
    required this.result,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 25,
                  width: 25,
                  image: NetworkImage(
                    result.leagueLogo!,
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  '${result.countryName!} ${result.leagueName!}',
                ),
              ],
            ),
            const Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    result.eventHomeTeam!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    result.eventTime!,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    result.eventAwayTeam!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
