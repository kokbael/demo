import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key, required this.imageList}) : super(key: key);

  final List<String>? imageList;
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int? _sliderNumber;
  List<int>? _photoIndexList;

  @override
  void initState() {
    _sliderNumber = 1;
    _photoIndexList = List<int>.generate(widget.imageList!.length, (i) => i);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            // autoPlay: true,
            // autoPlayInterval: Duration(seconds: 3),
            height: 300,
            onPageChanged: (index, reason) {
              setState(() {
                _sliderNumber = index + 1;
              });
            },
            viewportFraction: 1, // 1 로 하면 경계선 X
          ),
          items: _photoIndexList!.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: size.width,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Image(
                      image: AssetImage(widget.imageList![i]),
                      fit: BoxFit.fill,
                    ));
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 10,
          right: 15,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: SizedBox(
                width: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$_sliderNumber / ',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      (widget.imageList!.length).toString(),
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
