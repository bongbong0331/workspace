import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Urban Soft AL 10.0 ",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "\$699",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  } // _buildDetailNameAndPrice end

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          // Spacer() >>>>  남은공간을 다 차지 한다!!!!!!!!!
          Text("review "),
          Text(
            "(26)",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }

  _buildDetailColorOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color Options"),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            _buildDetailIcon(Colors.black),
            _buildDetailIcon(Colors.green),
            _buildDetailIcon(Colors.orange),
            _buildDetailIcon(Colors.grey),
            _buildDetailIcon(Colors.white),
          ],
        ),
      ],
    );
  }

  _buildDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          // ClipOval  :  잘라주는놈
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.9),
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text("장바구니에 담으시겠습니까?"),
                  actions: [
                    CupertinoDialogAction(
                      child: Text("확인"),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              });
        },
        child: Text("Add to Cart"),
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          // minimumSize 아무리 작아도 최소값으로 받아냄
          minimumSize: Size(300, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
} //class end
