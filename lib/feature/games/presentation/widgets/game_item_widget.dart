import 'package:flutter/material.dart';
import 'package:kepu/config/routes/routes.dart';
import 'package:kepu/feature/games/domain/model/game.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../config/theme/colors.dart';
import '../../../../const/colors.dart';
import '../../../../utils.dart';

class GameItemWidget extends StatelessWidget {
  const GameItemWidget({Key? key, required this.game}) : super(key: key);
  final GameResults? game;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.gameDetailsPage, arguments: game);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.5, color: const Color(0xFF373741)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      game!.backgroundImage,
                      cacheKey: game!.backgroundImage,
                    ),
                    fit: BoxFit.cover,
                    scale: 2.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        game?.name ?? '',
                        style: SafeGoogleFont (
                            'Radio Canada',
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: kepuGreen),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        child: Text(
                          game!.metaCritic.toString(),
                          style: SafeGoogleFont (
                            'Radio Canada',
                            color: kepuGreen,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    'Release date',
                    style: SafeGoogleFont (
                        'Radio Canada',
                        color: Colors.black87,
                        fontSize: 11
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      game?.released ?? '',
                      style: SafeGoogleFont (
                          'Radio Canada',
                          color: Colors.black87,
                          fontSize: 11
                      ),
                      // overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    'Genres',
                    style: SafeGoogleFont(
                        'Radio Canada',
                        color: Colors.black87,
                        fontSize: 11,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Expanded(
                    child: Text(
                      game?.genres?.map((e) => e.name).join(', ') ?? '',
                      style: SafeGoogleFont(
                          'Radio Canada',
                          color: Colors.black87,
                          fontSize: 11
                      ),
                      softWrap: true,
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
