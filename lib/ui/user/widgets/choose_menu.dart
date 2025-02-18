import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../models/product_model.dart';

class ChooseMenu extends StatelessWidget {
  const ChooseMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      ProductModel(
        imageUrl:
            'https://cdn.pixabay.com/photo/2019/11/21/18/28/gopchang-4643143_640.jpg',
        name: 'Ayam Bakar',
        description: 'Ayam yang dibumbui dengan campuran rempah khas',
        price: 32000,
        createdAt: DateTime.now().subtract(const Duration(seconds: 13)),
      ),
      ProductModel(
        imageUrl:
            'https://cdn.idntimes.com/content-images/community/2022/05/img-20220505-090628-6d2cbb4bbec2340f770674be006d2944-242a598410a0b5610ba0c2d3bc499931.jpg',
        name: 'Pecel Ayam',
        description: 'Ayam yang dibumbui dengan campuran rempah khas',
        price: 25000,
        createdAt: DateTime.now().subtract(const Duration(seconds: 13)),
      ),
      ProductModel(
        imageUrl:
            'https://cdn.idntimes.com/content-images/community/2022/05/img-20220505-090628-6d2cbb4bbec2340f770674be006d2944-242a598410a0b5610ba0c2d3bc499931.jpg',
        name: 'Sate Kelinci',
        description: 'Sate kelinci muda dengan olahran rempah Nusantara',
        price: 35000,
        createdAt: DateTime.now().subtract(const Duration(seconds: 13)),
      ),
      ProductModel(
        imageUrl:
            'https://cdn.pixabay.com/photo/2019/11/21/18/28/gopchang-4643143_640.jpg',
        name: 'Ayam Bakar',
        description: 'Ayam yang dibumbui dengan campuran rempah khas',
        price: 32000,
        createdAt: DateTime.now().subtract(const Duration(seconds: 13)),
      ),
      ProductModel(
        imageUrl:
            'https://cdn.idntimes.com/content-images/community/2022/05/img-20220505-090628-6d2cbb4bbec2340f770674be006d2944-242a598410a0b5610ba0c2d3bc499931.jpg',
        name: 'Pecel Ayam',
        description: 'Ayam yang dibumbui dengan campuran rempah khas',
        price: 25000,
        createdAt: DateTime.now().subtract(const Duration(seconds: 13)),
      ),
      ProductModel(
        imageUrl:
            'https://cdn.idntimes.com/content-images/community/2022/05/img-20220505-090628-6d2cbb4bbec2340f770674be006d2944-242a598410a0b5610ba0c2d3bc499931.jpg',
        name: 'Sate Kelinci',
        description: 'Sate kelinci muda dengan olahran rempah Nusantara',
        price: 35000,
        createdAt: DateTime.now().subtract(const Duration(seconds: 13)),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pilih Menu',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SpaceHeight(14.0),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            separatorBuilder: (context, index) => const SpaceHeight(11.0),
            itemBuilder: (context, index) => MenuCard(
              item: products[index],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final ProductModel item;
  const MenuCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 8.0,
            spreadRadius: 0,
            color: AppColors.black.withOpacity(0.2),
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: CachedNetworkImage(
              imageUrl: item.imageUrl,
              fit: BoxFit.cover,
              width: 90.0,
              height: 90.0,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          ),
          const SpaceWidth(28.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SpaceHeight(4.0),
              SizedBox(
                width: context.deviceWidth - 182.0,
                child: Text(
                  item.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray2,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: context.deviceWidth - 230.0,
                    child: Text(
                      item.priceFormatted,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Assets.icons.cart.svg(),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
