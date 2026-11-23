import 'package:flutter/material.dart';
import 'package:flutter_fruit_app/product.dart';
import 'package:flutter_fruit_app/product_detail.dart';

class ItemWidget extends StatefulWidget {
  final Product product;

  const ItemWidget({Key? key, required this.product}) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(product: widget.product),
          ),
        );
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green.withValues(alpha: 0.25),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Hero(
              tag: widget.product.image,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  widget.product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              widget.product.price,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              widget.product.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              widget.product.quantity,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 4),
            const Divider(height: 2, color: Colors.grey),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_shopping_cart,
                  size: 18,
                  color: Colors.green,
                ),
                const SizedBox(width: 2),
                const Text(
                  'Beli',
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    if (count > 0) setState(() => count--);
                  },
                  child: const Icon(
                    Icons.remove_circle_outline,
                    size: 18,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text('$count'),
                ),
                InkWell(
                  onTap: () => setState(() => count++),
                  child: const Icon(
                    Icons.add_circle_outline,
                    size: 18,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
