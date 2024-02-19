import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:halpay/shared/theme/app_colors.dart';
import 'package:halpay/shared/theme/text_styles.dart';
import 'package:halpay/shared/widgets/app_appbar.dart';

class ConfirmPaymentSharedScreen extends ConsumerWidget {
  const ConfirmPaymentSharedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppAppbar(
        appbarHeight: 60,
        title: Text("ຢືນຢັນການຊຳລະ"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB( 20.0,0,20.0,20.0),
            decoration: BoxDecoration(
              color: AppColors.appBarBackgroundGrey,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
            ),
            child: Column(
              children: [
                Container(

                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:16.0,top:10.0,bottom: 8.0),
                        child: Text("ຈາກ",style: AppTextStyles.bodyLgLight,),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 2),
                        horizontalTitleGap: 5,
                        leading: CircleAvatar(radius: 40,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFxQu84PuCD_zpL1Yv_Gr4C7lNzm2L9fR7CA&usqp=CAU")),
                        title: Text("Anny"),
                        subtitle: Text("02055443322"),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0,10.0,16.0,16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("Pocket")
                              ],
                            ),
                            Text("Luangprabang trip")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary
                  ),
                  child: Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.white,),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:16.0,top:10.0,bottom: 8.0),
                        child: Text("ຫາບັນຊີ",style: AppTextStyles.bodyLgLight,),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 2,bottom: 18.0),
                        horizontalTitleGap: 5,
                        leading: CircleAvatar(radius: 40,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFxQu84PuCD_zpL1Yv_Gr4C7lNzm2L9fR7CA&usqp=CAU")),
                        title: Text("Anny"),
                        subtitle: Text("02055443322"),
                      ),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
