import 'package:flutter/material.dart';
import 'package:kepu/config/theme/colors.dart';
import '../../../../const/colors.dart';
import '../../../../utils.dart';
import '../../../games/domain/model/game.dart';
import '../pages/favorite_game_details.dart';

class FavsItemWidget extends StatelessWidget {
  final GameResults game;
  Function()? onRemove;

  FavsItemWidget({Key? key, required this.game, this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: UniqueKey(),
      onDismissed: (direction) {
        onRemove?.call();
      },
      background: Container(
        decoration: const BoxDecoration(
          color: AppColors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.delete, color: Colors.white),
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoriteGameDetails(game: game))
          );
        },
        child: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.5, color: const Color(0xFF373741)),
          ),
          height: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    children: [
                      Container(
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      game.backgroundImage),
                                  fit: BoxFit.cover)
                          )
                      ),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        game.name ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kepuDarkGreen,
                            fontSize: 20
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    // SizedBox(height: 10),
                    Text('Released on: ${game.released}',
                        style: SafeGoogleFont (
                            'Radio Canada',
                            color: Colors.black87, fontSize: 12)),
                    Text('Rating: ${game.rating.toString()}/5',
                        style: SafeGoogleFont (
                            'Radio Canada',
                            color: Colors.black87, fontSize: 12)),
                    Text('Overall Rating: ${game.metaCritic.toString()}%',
                        style: SafeGoogleFont (
                            'Radio Canada',
                            color: Colors.black87, fontSize: 12)),
                    Text('Genres: ${game.genres?.map((e) => e.name).toList()}',
                        style: SafeGoogleFont (
                            'Radio Canada',
                            color: Colors.black87, fontSize: 12)),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.favorite, color: Color(0xff6CA78D)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
