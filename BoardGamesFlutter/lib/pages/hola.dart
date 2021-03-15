import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  final int initialRating;
  final void Function(int) onRated;
  final double size;
  final Color color;

  Rating(
      {this.initialRating,
      this.onRated,
      this.size = 18.0,
      this.color = Colors.amber});

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int _rating = 0;
  GlobalKey _starOneKey = GlobalKey();
  bool _isDragging = false;

  _updateRating(int newRating) {
    if (_rating == 1 && newRating == 1 && _isDragging != true) {
      setState(() {
        _rating = 0;
        widget.onRated(0);
      });
    } else {
      setState(() {
        _rating = newRating;
        widget.onRated(newRating);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _rating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        _isDragging = true;
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        RenderBox star1 = _starOneKey.currentContext.findRenderObject();
        final positionStar1 = star1.localToGlobal(Offset.zero);
        final sizeStar1 = star1.size;

        if (details.globalPosition.dx < positionStar1.dx) {
          print(details.globalPosition.dx.toString() +
              " " +
              positionStar1.dx.toString());
          _updateRating(0);
        } else if (details.globalPosition.dx > positionStar1.dx &&
            details.globalPosition.dx < (positionStar1.dx + sizeStar1.width)) {
        } else if (details.globalPosition.dx >
            (positionStar1.dx + sizeStar1.width)) {
          _updateRating(5);
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        _isDragging = false;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            key: _starOneKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                _rating >= 1 ? Icons.star : Icons.star_border,
                color: widget.color,
                size: widget.size,
              ),
            ),
            onTap: () => _updateRating(1),
          ),
        ],
      ),
    );
  }
}
