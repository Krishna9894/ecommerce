import 'package:e_commerce/Screens/Detail/widget/addto_cart.dart';
import 'package:e_commerce/Screens/Detail/widget/description.dart';
import 'package:e_commerce/Screens/Detail/widget/detail_app_bar.dart';
import 'package:e_commerce/Screens/Detail/widget/items_details.dart';
import 'package:e_commerce/Screens/constants.dart';
import 'package:e_commerce/Screens/home/widget/detail_image_slider.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentSlide = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      floatingActionButton: AddtoCart(
        product: widget.product,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            DetailAppBar(
              product: widget.product,
            ),
            DetailImageSlider(
              image: widget.product.image,
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlide == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // height: 200,
              width: double.infinity,
              color: Colors.white,

              //   width: double.infinity,
              //   color: Colors.white,
              //   decoration: const BoxDecoration(
              //
              //     borderRadius: BorderRadius.only(
              //       topRight: Radius.circular(40),
              //       topLeft: Radius.circular(40),
              //     ),
              //   ),
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: 80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemsDetails(product: widget.product),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Cpolor",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? Colors.white
                                  : widget.product.colors[index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget.product.colors[index])
                                  : null),
                          padding:
                              currentColor == index ? EdgeInsets.all(2) : null,
                          margin: EdgeInsets.only(right: 9),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: widget.product.colors[index],
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Description(
                      description: widget.product.description,
                      text: widget.product.title)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
