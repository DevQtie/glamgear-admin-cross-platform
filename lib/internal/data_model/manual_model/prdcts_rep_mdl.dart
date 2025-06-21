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

import 'package:glamgear/internal/data_model/manual_model/prdct_mdl.dart';

class ProductsRepository {
  static Product getProductById(int id) {
    return loadProducts(Category.all).firstWhere((product) => product.id == id);
  }

  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.jewelry, //accessories,
        id: 4,
        isFeatured: false,
        name: 'Strut earrings',
        origPrice: 70,
        price: 34,
        discountPercent: 51,
        marketingText: [
          '100% Authentic',
          // 'Save Up To 10%',
          // '0% Credit Interest',
          // 'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
        isProceedToCO: true,
      ),
      Product(
        category: Category.jewelry, //accessories,
        id: 3,
        isFeatured: true,
        name: 'Garden strand',
        origPrice: 120,
        price: 98,
        discountPercent: 18,
        marketingText: [
          '0% Credit Interest',
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
        ],
        imageLists: [
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
        ],
        isProceedToCO: true,
      ),
      Product(
        category: Category.jewelry, //accessories,
        id: 6,
        isFeatured: false,
        name: 'Weave keyring',
        origPrice: 25,
        price: 16,
        discountPercent: 36,
        marketingText: [
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
        ],
        isProceedToCO: true,
      ),
      Product(
        category: Category.jewelry, //accessories,
        id: 2,
        isFeatured: false,
        name: 'Whitney belt',
        origPrice: 50,
        price: 35,
        discountPercent: 30,
        marketingText: [
          'Save Up To 10%',
          // '100% Authentic',
          // 'Best Price',
          // '0% Credit Interest',
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
        ],
        isProceedToCO: true,
      ),
      Product(
        category: Category.luxuryBag, //accessories,
        id: 0,
        isFeatured: true,
        name: 'Vagabond sack',
        origPrice: 145,
        price: 120,
        discountPercent: 25,
        marketingText: [
          'Save Up To 10%',
          '100% Authentic',
          'Best Price',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004854/Luxury_bag_demo_image_330x330_1_yg6laq.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Luxury_bag_demo_image_330x330_2_ctsgen.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Luxury_bag_demo_image_330x330_3_jesz8v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Luxury_bag_demo_image_330x330_4_whh8bu.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Luxury_bag_demo_image_330x330_5_ht2dz5.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_1_nexosm.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_2_sitve1.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_3_qj5yu9.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_4_dpxhoh.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_5_qcpkgp.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_5000x5000_1_upxuds.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Luxury_bag_demo_image_5000x5000_2_xy2wol.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Luxury_bag_demo_image_5000x5000_3_lo8fs9.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Luxury_bag_demo_image_5000x5000_4_dg4npb.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004854/Luxury_bag_demo_image_5000x5000_5_bvzxf3.png',
        ],
      ),
      Product(
        category: Category.luxuryBag, //accessories,
        id: 8,
        isFeatured: true,
        name: 'Shrug bag',
        origPrice: 250,
        price: 198,
        discountPercent: 21,
        marketingText: [
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_1_nexosm.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_2_sitve1.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_3_qj5yu9.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_4_dpxhoh.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_2500x2500_5_qcpkgp.png',
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004854/Luxury_bag_demo_image_330x330_1_yg6laq.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Luxury_bag_demo_image_330x330_2_ctsgen.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Luxury_bag_demo_image_330x330_3_jesz8v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Luxury_bag_demo_image_330x330_4_whh8bu.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Luxury_bag_demo_image_330x330_5_ht2dz5.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Luxury_bag_demo_image_5000x5000_1_upxuds.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Luxury_bag_demo_image_5000x5000_2_xy2wol.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Luxury_bag_demo_image_5000x5000_3_lo8fs9.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Luxury_bag_demo_image_5000x5000_4_dg4npb.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004854/Luxury_bag_demo_image_5000x5000_5_bvzxf3.png',
        ],
      ),
      Product(
        category: Category.gadget, //accessories,
        id: 1,
        isFeatured: true,
        name: 'Stella sunglasses',
        origPrice: 75,
        price: 58,
        discountPercent: 23,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_1_v4yid1.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_2_sshss5.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_3_wkiocq.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_4_xqlp0j.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_5_rmrfk7.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_1_biwt4g.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_2_zkb2jo.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_3_dkm68d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_2500x2500_4_mlo4kk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_2500x2500_5_kqpayz.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_1_cz7sbp.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_5000x5000_2_gledrj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_3_zldqzi.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_4_u7115f.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Gadget_demo_image_5000x5000_5_a0by0z.png',
        ],
      ),
      Product(
        category: Category.gadget, //home,
        id: 18,
        isFeatured: true,
        name: 'Kitchen quattro',
        origPrice: 145,
        price: 129,
        discountPercent: 11,
        marketingText: [
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_1_cz7sbp.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_5000x5000_2_gledrj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_3_zldqzi.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_4_u7115f.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Gadget_demo_image_5000x5000_5_a0by0z.png',
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_1_v4yid1.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_2_sshss5.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_3_wkiocq.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_4_xqlp0j.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_5_rmrfk7.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_1_biwt4g.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_2_zkb2jo.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_3_dkm68d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_2500x2500_4_mlo4kk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_2500x2500_5_kqpayz.png',
        ],
      ),
      Product(
        category: Category.gadget, //home,
        id: 17,
        isFeatured: false,
        name: 'Quartet table',
        origPrice: 200,
        price: 175,
        discountPercent: 13,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_1_biwt4g.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_2_zkb2jo.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_2500x2500_3_dkm68d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_2500x2500_4_mlo4kk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_2500x2500_5_kqpayz.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_1_cz7sbp.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_5000x5000_2_gledrj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_3_zldqzi.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004859/Gadget_demo_image_5000x5000_4_u7115f.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Gadget_demo_image_5000x5000_5_a0by0z.png',
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_1_v4yid1.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_2_sshss5.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_3_wkiocq.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_4_xqlp0j.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004860/Gadget_demo_image_330x330_5_rmrfk7.png',
        ],
      ),
      Product(
        category: Category.others, //accessories,
        id: 5,
        isFeatured: false,
        name: 'Varsity socks',
        origPrice: 20,
        price: 12,
        discountPercent: 40,
        marketingText: [
          'Save Up To 10%',
          'Best Price',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //accessories,
        id: 7,
        isFeatured: true,
        name: 'Gatsby hat',
        origPrice: 65,
        price: 40,
        discountPercent: 38,
        marketingText: [
          'Save Up To 10%',
          '100% Authentic',
          'Best Price',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 9,
        isFeatured: true,
        name: 'Gilt desk trio',
        origPrice: 70,
        price: 58,
        discountPercent: 17,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 10,
        isFeatured: false,
        name: 'Copper wire rack',
        origPrice: 30,
        price: 18,
        discountPercent: 40,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 11,
        isFeatured: false,
        name: 'Soothe ceramic set',
        origPrice: 40,
        price: 28,
        discountPercent: 30,
        marketingText: [
          'Save Up To 10%',
          '100% Authentic',
          'Best Price',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 12,
        isFeatured: false,
        name: 'Hurrahs tea set',
        origPrice: 50,
        price: 34,
        discountPercent: 32,
        marketingText: [
          'Save Up To 10%',
          '100% Authentic',
          'Best Price',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 13,
        isFeatured: true,
        name: 'Blue stone mug',
        origPrice: 30,
        price: 18,
        discountPercent: 40,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 14,
        isFeatured: true,
        name: 'Rainwater tray',
        origPrice: 35,
        price: 27,
        discountPercent: 23,
        marketingText: [
          'Save Up To 10%',
          '100% Authentic',
          'Best Price',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 15,
        isFeatured: true,
        name: 'Chambray napkins',
        origPrice: 25,
        price: 16,
        discountPercent: 36,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.home,
        id: 16,
        isFeatured: true,
        name: 'Succulent planters',
        origPrice: 30,
        price: 16,
        discountPercent: 47,
        marketingText: [
          'Save Up To 10%',
          '100% Authentic',
          'Best Price',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 19,
        isFeatured: false,
        name: 'Clay sweater',
        origPrice: 100,
        price: 48,
        discountPercent: 52,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 20,
        isFeatured: false,
        name: 'Sea tunic',
        origPrice: 60,
        price: 45,
        discountPercent: 25,
        marketingText: [
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 21,
        isFeatured: false,
        name: 'Plaster tunic',
        origPrice: 45,
        price: 38,
        discountPercent: 16,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 22,
        isFeatured: false,
        name: 'White pinstripe shirt',
        origPrice: 105,
        price: 70,
        discountPercent: 33,
        marketingText: [
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 23,
        isFeatured: false,
        name: 'Chambray shirt',
        origPrice: 95,
        price: 70,
        discountPercent: 26,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 24,
        isFeatured: true,
        name: 'Seabreeze sweater',
        origPrice: 85,
        price: 60,
        discountPercent: 29,
        marketingText: [
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 25,
        isFeatured: false,
        name: 'Gentry jacket',
        origPrice: 380,
        price: 178,
        discountPercent: 53,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 26,
        isFeatured: false,
        name: 'Navy trousers',
        origPrice: 110,
        price: 74,
        discountPercent: 33,
        marketingText: [
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
          '0% Credit Interest',
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 27,
        isFeatured: true,
        name: 'Walter henley (white)',
        origPrice: 60,
        price: 38,
        discountPercent: 37,
        marketingText: [
          '0% Credit Interest',
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 28,
        isFeatured: true,
        name: 'Surf and perf shirt',
        origPrice: 70,
        price: 48,
        discountPercent: 31,
        marketingText: [
          '0% Credit Interest',
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
        ],
        imageLists: [
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 29,
        isFeatured: true,
        name: 'Ginger scarf',
        origPrice: 200,
        price: 98,
        discountPercent: 51,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 30,
        isFeatured: true,
        name: 'Ramona crossover',
        origPrice: 105,
        price: 68,
        discountPercent: 35,
        marketingText: [
          '0% Credit Interest',
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
        ],
        imageLists: [
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 31,
        isFeatured: false,
        name: 'Chambray shirt',
        origPrice: 75,
        price: 38,
        discountPercent: 49,
        marketingText: [
          '0% Credit Interest',
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 32,
        isFeatured: false,
        name: 'Classic white collar',
        origPrice: 120,
        price: 58,
        discountPercent: 52,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 33,
        isFeatured: true,
        name: 'Cerise scallop tee',
        origPrice: 80,
        price: 42,
        discountPercent: 48,
        marketingText: [
          '0% Credit Interest',
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 34,
        isFeatured: false,
        name: 'Shoulder rolls tee',
        origPrice: 50,
        price: 27,
        discountPercent: 46,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 35,
        isFeatured: false,
        name: 'Grey slouch tank',
        origPrice: 55,
        price: 24,
        discountPercent: 56,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 36,
        isFeatured: false,
        name: 'Sunshirt dress',
        origPrice: 200,
        price: 58,
        discountPercent: 71,
        marketingText: [
          '0% Credit Interest',
          'Best Price',
          'Save Up To 10%',
          '100% Authentic',
        ],
        imageLists: [
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
      Product(
        category: Category.others, //.clothing,
        id: 37,
        isFeatured: true,
        name: 'Fine lines tee',
        origPrice: 190,
        price: 58,
        discountPercent: 69,
        marketingText: [
          '100% Authentic',
          'Save Up To 10%',
          '0% Credit Interest',
          'Best Price'
        ],
        imageLists: [
          //330x330
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_1_lxdrtl.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_2_lk6mtj.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_3_vedz3x.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_4_uofytw.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_330x330_5_s5qs8q.png',
          //2500x2500
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_1_mwwwpk.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004858/Jewelry_demo_image_2500x2500_2_z6k2ug.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_3_h3oigt.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_4_j7b86b.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_2500x2500_5_sdidyb.png',
          //5000x5000
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_1_zligsn.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004856/Jewelry_demo_image_5000x5000_2_r70m7k.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004857/Jewelry_demo_image_5000x5000_3_tkva1d.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_4_tjky2v.png',
          'https://res.cloudinary.com/dcemjqbpe/image/upload/v1723004855/Jewelry_demo_image_5000x5000_5_hym1t1.png',
        ],
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
