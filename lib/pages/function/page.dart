import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/utils/toastutil.dart';
import 'package:pdsystem/widget/custom_appbar.dart';

import '../../routes.dart';

class FunctionPage extends StatelessWidget {
  const FunctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      '华润电力温州电厂脱硫项目现场终端',
      '阳江太阳能发电厂项目终端',
      '武汉水电站项目终端',
      '海门核电厂项目终端'
    ];

    List<Widget> listTiles = List.generate(titles.length, (index) {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        color: Colors.grey.shade50,
        child: ListTile(
          title: Text(
            titles[index],
            style: TextStyle(
              color: index == 0 ? Colors.black : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            index == 0 ? '在线' : '离线',
            style: TextStyle(
              color: index == 0 ? Colors.black : Colors.grey,
            ),
          ),
          leading: const Icon(Icons.flag_outlined),
          trailing: const Icon(Icons.navigate_next_rounded),
          onTap: () {
            if (index == 0) {
              Get.toNamed(Routes.home);
            } else {
              ToastUtil.showToast('等待终端上线');
            }
          },
        ),
      );
    });
    return Scaffold(
      appBar: customAppbar(context: context),
      body: SafeArea(
        child: ListView(
          children: listTiles,
        ),
      ),
    );
  }
}
