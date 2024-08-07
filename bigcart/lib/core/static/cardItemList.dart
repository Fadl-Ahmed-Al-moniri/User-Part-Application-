import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/data/model/cradItem.dart';

List<Craditem> onCraditemList = [
  Craditem(
      title: "فواكهة",
      
      image: AppImageAsset.fruit,
      onTap: (index) {
      },
    ),
  Craditem(
      title:'خضراوات',
     
      image: AppImageAsset.adsImage),
  Craditem(
      title: 'المواشي والدواجن',
      image: AppImageAsset.livestockandpoultry),
  Craditem(
      title: 'الحبوب',
      image: AppImageAsset.grain),
];
