// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//AFTER DOWNLOADING SHRINE PROJECT REFERENCE
//ORIGINALLY MODIFIED BY: DevQt

enum Category {
  all,
  jewelry,
  luxuryBag,
  gadget,
  others,
  accessories,
  clothing,
  home,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.origPrice,
    required this.price,
    required this.discountPercent,
    required this.marketingText,
    required this.imageLists,
    this.isProceedToCO,
  });

  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final double origPrice;
  final double price;
  final int discountPercent;
  final List<String> marketingText;
  final List<String> imageLists;
  final bool? isProceedToCO; //isProceedToCheckout

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => "$name (id=$id)";
}
