import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:halpay/shared/theme/app_colors.dart';
import 'package:halpay/shared/theme/text_styles.dart';
import 'package:halpay/shared/widgets/app_textfield.dart';

import '../widgets/app_appbar.dart';

class TransferAmountSharedScreen extends ConsumerWidget {
  const TransferAmountSharedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppAppbar(
        backgroundColor: AppColors.appBarBackgroundGrey,
        appbarHeight: 140,
        title: Text("ຫາບັນຊີ"),
        bottomAppbar: ListTile(
          contentPadding: EdgeInsets.only(left: 5),
          horizontalTitleGap: 5,
          leading: CircleAvatar(radius: 40,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFxQu84PuCD_zpL1Yv_Gr4C7lNzm2L9fR7CA&usqp=CAU")),
          title: Text("Anny"),
          subtitle: Text("02055443322"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ປ້ອນຈຳນວນເງິນ",style: AppTextStyles.bodyLgMedium,),
                SizedBox(height: 5,),
                AppTextField(hintText: "ປ້ອນຈຳນວນເງິນ",)
              ],
            ),
            const SizedBox(height: 12,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("ຄຳອະທິບາຍ",style: AppTextStyles.bodyLgMedium),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    const Expanded(child: AppTextField(hintText: "ຄຳອະທິບາຍ",)),
                    IconButton(
                      icon: const Icon(Icons.camera_alt,size: 24,),
                      onPressed: () {
                        // Handle camera icon press
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.emoji_emotions,size: 24,),
                      onPressed: () {
                        // Handle sticker icon press
                      },
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: const Text("ABC"))),
          ],
        ),
      ),
    );
  }
}
