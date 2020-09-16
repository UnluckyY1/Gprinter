import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class StandardProductLabel extends StatelessWidget {
  
  final double height;
  final double lineWidth;
  

  StandardProductLabel(
      {Key key,  this.height = 85, this.lineWidth = 2.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Center(child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
              " " + 'SIYOU TEST' ?? "",
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(fontWeight: FontWeight.bold,fontFamily: 'Dancing_Script'),
              
              maxLines: 2,
            ),
          ),),
          Container(
            height: 2.0,
            color: Colors.black,
            margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
          ),
          Center(
            child: Text(
              "\€ ${22.20}",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 60.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: 40,
              ),
              BarcodeWidget(
                    barcode: Barcode.ean13(),
                    data: '3120370350240',
                    width: 200,
                    height: 80,
                  ),
              
              /*Expanded(
                  flex: 4,
                  child: 
                  /*BarCodeImage(
                  padding: EdgeInsets.all(4.0),
                  params: EAN13BarCodeParams(
                    item.itemBarcode,
                    withText: true,
                    barHeight: height,
                    lineWidth: lineWidth,
                  ),
                  onError: (error) {
                    print('error = $error');
                  },
                ),*/
                  ),*/
              
             
            //  Expanded(
              //  child:
                 Text(
                  'SIYOU TUN',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing_Script",
                  ),
                 
                  maxLines: 4,
                ),
                 Container(
                width: 10,
              ),
            //  ),
            ],
          ),
        ],
      ),
    );
  }
}