import 'package:flutter/material.dart';

class Card_Button extends StatelessWidget {
  final String name, code, amount;
  final int order;
  final IconData icon;
  final bool isInverted;

  const Card_Button({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        0,
        -20 * (order - 1),
      ),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? Colors.white : const Color(0xFF1F2123),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color:
                            isInverted ? const Color(0xFF1F2123) : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? Colors.black : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            color: isInverted
                                ? const Color(0xFF1F2123).withOpacity(0.5)
                                : Colors.white.withOpacity(0.5),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(2, 15),
                    child: Icon(
                      icon,
                      color:
                          isInverted ? const Color(0xFF1F2123) : Colors.white,
                      size: 78,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
