import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/admhome.dart';
import 'package:rankers_institute/widgets/loginfield.dart';
import 'package:rankers_institute/widgets/newcontappbar.dart';

class AddFeesdetail extends StatefulWidget {
  AddFeesdetail({
    Key key,
  }) : super(key: key);

  @override
  _AddFeesdetailState createState() => _AddFeesdetailState();
}

class _AddFeesdetailState extends State<AddFeesdetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: ncAppBaer(),
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xffcaf0f8),
        body: Center(
          child: Container(
            height: g.height * 0.8,
            width: g.width * 0.85,
            decoration: BoxDecoration(
              color: Color(0xffffffff).withOpacity(0.55),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: g.height * 0.05,
                left: g.width * 0.075,
                right: g.width * 0.075,
              ),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      'Add Fees Details',
                      style: g.loginpgstyles(
                        Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: g.height * 0.05,
                  ),
                  Text('Name'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('ID'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Amount Paid'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Remaining Amount'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Total Amount'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.075,
                  ),
                  Center(
                    child: RawMaterialButton(
                      onPressed: null,
                      child: Container(
                          width: g.width * 0.5,
                          height: g.height * 0.055,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff90e0ef),
                          ),
                          child: Center(
                            child: Text(
                              'Add Fees Details',
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
