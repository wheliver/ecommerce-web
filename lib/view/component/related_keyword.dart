import 'package:flutter/material.dart';

class RelatedKeyword extends StatelessWidget {
  const RelatedKeyword({
    Key? key,
    required this.relatedKeyword,
    this.size,
  }) : super(key: key);
  final size;
  final List<String> relatedKeyword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width > 1100
          ? size.width - size.width * 0.10
          : size.width > 900
              ? size.width - size.width * 0.13
              : size.width > 670
                  ? size.width - size.width * 0.17
                  : size.width > 570
                      ? size.width - size.width * 0.19
                      : size.width > 450
                          ? size.width - size.width * 0.22
                          : size.width - size.width * 0.25,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 35,
            child: Row(
              children: List.generate(relatedKeyword.length + 1, (index) {
                if (index < 1) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Related',
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      relatedKeyword[index > 0 ? index - 1 : index],
                      maxLines: 1,
                    ),
                  );
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}
