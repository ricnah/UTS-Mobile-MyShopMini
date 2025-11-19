import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String categoryName;
  const ProductListScreen({super.key, required this.categoryName});

  // ==========================================
  // 60 PRODUK – 10 KATEGORI × 6 PRODUK PER KATEGORI
  // ==========================================
  List<ProductModel> _productsFor(String cat) {
    switch (cat) {

      // ================================
      // 1. MAKANAN
      // ================================
      case "Makanan":
        return [
          ProductModel(
            name: "Nasi Goreng Special",
            price: "Rp 25.000",
            image: "assets/images/makanan_nasgor.jpg",
            description: "Nasi goreng lezat dengan telur ayam, sayuran segar, dan bumbu pilihan.",
          ),
          ProductModel(
            name: "Ayam Geprek Krispi",
            price: "Rp 28.000",
            image: "assets/images/makanan_geprek.jpg",
            description: "Ayam geprek dengan sambal pedas level menyesuaikan, tekstur renyah.",
          ),
          ProductModel(
            name: "Sate Ayam Bumbu Kacang",
            price: "Rp 22.000",
            image: "assets/images/makanan_sate.jpg",
            description: "Sate ayam juicy dipadu bumbu kacang kental dan lontong lembut.",
          ),
          ProductModel(
            name: "Burger Beef Deluxe",
            price: "Rp 35.000",
            image: "assets/images/makanan_burger.jpg",
            description: "Burger daging sapi premium dengan keju melt dan sayuran segar.",
          ),
          ProductModel(
            name: "Bakso Urat Jumbo",
            price: "Rp 20.000",
            image: "assets/images/makanan_bakso.jpg",
            description: "Bakso urat jumbo dengan kuah kaldunya kuat dan gurih.",
          ),
          ProductModel(
            name: "Pizza Mini Mozarella",
            price: "Rp 30.000",
            image: "assets/images/makanan_pizza.jpg",
            description: "Pizza mini renyah dengan topping keju mozarella melimpah.",
          ),
        ];

      // ================================
      // 2. MINUMAN
      // ================================
      case "Minuman":
        return [
          ProductModel(
            name: "Es Teh Lemon",
            price: "Rp 8.000",
            image: "assets/images/minuman_lemontea.jpg",
            description: "Es teh segar dengan perasan lemon asli.",
          ),
          ProductModel(
            name: "Kopi Susu Gula Aren",
            price: "Rp 18.000",
            image: "assets/images/minuman_kopisusu.jpg",
            description: "Kopi susu creamy dengan gula aren premium.",
          ),
          ProductModel(
            name: "Milkshake Cokelat",
            price: "Rp 15.000",
            image: "assets/images/minuman_milkshake.jpg",
            description: "Milkshake cokelat pekat dengan tekstur lembut.",
          ),
          ProductModel(
            name: "Matcha Latte",
            price: "Rp 22.000",
            image: "assets/images/minuman_matcha.jpg",
            description: "Matcha latte premium dengan rasa autentik Jepang.",
          ),
          ProductModel(
            name: "Es Jeruk Peras",
            price: "Rp 10.000",
            image: "assets/images/minuman_jeruk.jpg",
            description: "Es jeruk peras segar tanpa pemanis tambahan.",
          ),
          ProductModel(
            name: "Thai Tea Original",
            price: "Rp 16.000",
            image: "assets/images/minuman_thaitea.jpg",
            description: "Thai Tea creamy dengan wangi rempah khas.",
          ),
        ];

      // ================================
      // 3. ELEKTRONIK
      // ================================
      case "Elektronik":
        return [
          ProductModel(
            name: "Iphone 11",
            price: "Rp 6.500.000",
            image: "assets/images/elektronik_hp.jpg",
            description: "Smartphone layar 6.5 inch dengan kamera 50MP.",
          ),
          ProductModel(
            name: "Headset Bluetooth",
            price: "Rp 150.000",
            image: "assets/images/elektronik_headset.jpg",
            description: "Headset wireless bass bertenaga, baterai tahan 20 jam.",
          ),
          ProductModel(
            name: "Keyboard Mechanical",
            price: "Rp 350.000",
            image: "assets/images/elektronik_keyboard.jpg",
            description: "Keyboard mechanical switch biru untuk gaming.",
          ),
          ProductModel(
            name: "Smartwatch Pro",
            price: "Rp 490.000",
            image: "assets/images/elektronik_smartwatch.jpg",
            description: "Smartwatch tahan air dengan sensor lengkap.",
          ),
          ProductModel(
            name: "Earphone Type-C",
            price: "Rp 45.000",
            image: "assets/images/elektronik_earphone.jpg",
            description: "Earphone jernih dengan konektor Type-C.",
          ),
          ProductModel(
            name: "Speaker Mini Bass",
            price: "Rp 99.000",
            image: "assets/images/elektronik_speaker.jpg",
            description: "Speaker portable dengan suara bass kuat.",
          ),
        ];

      // ================================
      // 4. FASHION
      // ================================
      case "Fashion":
        return [
          ProductModel(
            name: "Kemeja Slim Fit",
            price: "Rp 120.000",
            image: "assets/images/fashion_kemeja.jpg",
            description: "Kemeja slim fit bahan premium halus.",
          ),
          ProductModel(
            name: "Hoodie Oversize",
            price: "Rp 180.000",
            image: "assets/images/fashion_hoodie.jpg",
            description: "Hoodie oversize soft fleece hangat.",
          ),
          ProductModel(
            name: "Celana Jeans Denim",
            price: "Rp 150.000",
            image: "assets/images/fashion_jeans.jpg",
            description: "Jeans denim kuat dan nyaman dipakai.",
          ),
          ProductModel(
            name: "Jaket Bomber",
            price: "Rp 220.000",
            image: "assets/images/fashion_bomber.jpg",
            description: "Jaket bomber retro dengan zipper kuat.",
          ),
          ProductModel(
            name: "Kaos Cotton Premium",
            price: "Rp 75.000",
            image: "assets/images/fashion_kaos.jpg",
            description: "Kaos cotton combed 30s sangat lembut.",
          ),
          ProductModel(
            name: "Topi Snapback",
            price: "Rp 55.000",
            image: "assets/images/fashion_topi.jpg",
            description: "Topi snapback stylish untuk harian.",
          ),
        ];

      // ================================
      // 5. KECANTIKAN
      // ================================
      case "Kecantikan":
        return [
          ProductModel(
            name: "Serum Vitamin C",
            price: "Rp 60.000",
            image: "assets/images/beauty_serum.jpg",
            description: "Serum pencerah wajah dengan vitamin C murni.",
          ),
          ProductModel(
            name: "Lip Tint Cherry",
            price: "Rp 40.000",
            image: "assets/images/beauty_liptint.jpg",
            description: "Lip tint warna cherry tahan lama.",
          ),
          ProductModel(
            name: "Cushion Matte",
            price: "Rp 95.000",
            image: "assets/images/beauty_cushion.jpg",
            description: "Cushion matte ringan dengan coverage medium.",
          ),
          ProductModel(
            name: "Bedak Tabur Glow",
            price: "Rp 55.000",
            image: "assets/images/beauty_powder.jpg",
            description: "Bedak tabur halus memberikan efek glowing.",
          ),
          ProductModel(
            name: "Masker Lumpur",
            price: "Rp 25.000",
            image: "assets/images/beauty_mask.jpg",
            description: "Masker lumpur untuk membersihkan pori.",
          ),
          ProductModel(
            name: "Facial Wash Soft",
            price: "Rp 30.000",
            image: "assets/images/beauty_facewash.jpg",
            description: "Pembersih wajah lembut untuk kulit sensitif.",
          ),
        ];

      // ================================
      // 6. GAMING
      // ================================
      case "Gaming":
        return [
          ProductModel(
            name: "Mouse Gaming RGB",
            price: "Rp 120.000",
            image: "assets/images/gaming_mouse.jpg",
            description: "Mouse gaming RGB dengan DPI hingga 7200.",
          ),
          ProductModel(
            name: "Keyboard Gaming",
            price: "Rp 250.000",
            image: "assets/images/gaming_keyboard.jpg",
            description: "Keyboard gaming mechanical responsif.",
          ),
          ProductModel(
            name: "Kursi Gaming",
            price: "Rp 1.200.000",
            image: "assets/images/gaming_chair.jpg",
            description: "Kursi gaming ergonomis untuk kenyamanan.",
          ),
          ProductModel(
            name: "Controller Bluetooth",
            price: "Rp 199.000",
            image: "assets/images/gaming_controller.jpg",
            description: "Controller bluetooth kompatibel Android/PC.",
          ),
          ProductModel(
            name: "Headset Gaming RGB",
            price: "Rp 185.000",
            image: "assets/images/gaming_headset.jpg",
            description: "Headset gaming RGB dengan noise cancelling.",
          ),
          ProductModel(
            name: "Mousepad XXL",
            price: "Rp 65.000",
            image: "assets/images/gaming_mousepad.jpg",
            description: "Mousepad besar untuk akurasi tinggi.",
          ),
        ];

      // ================================
      // 7. OTOMOTIF
      // ================================
      case "Otomotif":
        return [
          ProductModel(
            name: "Helm Fullface",
            price: "Rp 350.000",
            image: "assets/images/otomotif_helm.jpg",
            description: "Helm fullface standar SNI dengan ventilasi.",
          ),
          ProductModel(
            name: "Sarung Jok Motor",
            price: "Rp 45.000",
            image: "assets/images/otomotif_jok.jpg",
            description: "Sarung jok kulit sintetis anti slip.",
          ),
          ProductModel(
            name: "Oli Mesin Motor",
            price: "Rp 55.000",
            image: "assets/images/otomotif_oli.jpg",
            description: "Oli mesin full synthetic untuk performa optimal.",
          ),
          ProductModel(
            name: "Lampu LED Motor",
            price: "Rp 25.000",
            image: "assets/images/otomotif_lampu.jpg",
            description: "Lampu LED terang hemat daya.",
          ),
          ProductModel(
            name: "Spion Carbon",
            price: "Rp 70.000",
            image: "assets/images/otomotif_spion.jpg",
            description: "Spion model carbon modern.",
          ),
          ProductModel(
            name: "Cover Motor Waterproof",
            price: "Rp 60.000",
            image: "assets/images/otomotif_cover.jpg",
            description: "Cover motor tahan hujan anti bocor.",
          ),
        ];

      // ================================
      // 8. DAPUR
      // ================================
      case "Dapur":
        return [
          ProductModel(
            name: "Set Pisau Dapur",
            price: "Rp 85.000",
            image: "assets/images/dapur_pisau.jpg",
            description: "Set pisau dapur tajam stainless steel.",
          ),
          ProductModel(
            name: "Wajan Anti Lengket",
            price: "Rp 95.000",
            image: "assets/images/dapur_wajan.jpg",
            description: "Wajan anti lengket diameter 30cm.",
          ),
          ProductModel(
            name: "Panci Stainless",
            price: "Rp 120.000",
            image: "assets/images/dapur_panci.jpg",
            description: "Panci stainless steel anti karat.",
          ),
          ProductModel(
            name: "Blender Serbaguna",
            price: "Rp 280.000",
            image: "assets/images/dapur_blender.jpg",
            description: "Blender banyak fungsi dengan mata pisau kuat.",
          ),
          ProductModel(
            name: "Talenan Kayu",
            price: "Rp 30.000",
            image: "assets/images/dapur_talenan.jpg",
            description: "Talenan kayu premium tebal dan kuat.",
          ),
          ProductModel(
            name: "Gelas Takar",
            price: "Rp 25.000",
            image: "assets/images/dapur_gelas.jpg",
            description: "Gelas takar akurat untuk memasak.",
          ),
        ];

      // ================================
      // 9. OLAHRAGA
      // ================================
      case "Olahraga":
        return [
          ProductModel(
            name: "Sepatu Running",
            price: "Rp 450.000",
            image: "assets/images/olahraga_sepatu.jpg",
            description: "Sepatu running ringan dengan bantalan empuk.",
          ),
          ProductModel(
            name: "Matras Yoga",
            price: "Rp 120.000",
            image: "assets/images/olahraga_matras.jpg",
            description: "Matras yoga anti slip tebal 8mm.",
          ),
          ProductModel(
            name: "Dumbbell 5kg",
            price: "Rp 150.000",
            image: "assets/images/olahraga_dumbbell.jpg",
            description: "Dumbbell berbahan besi dilapisi karet.",
          ),
          ProductModel(
            name: "Skipping Rope",
            price: "Rp 25.000",
            image: "assets/images/olahraga_lompat.jpg",
            description: "Tali skipping ringan untuk latihan kardio.",
          ),
          ProductModel(
            name: "Bola Basket",
            price: "Rp 95.000",
            image: "assets/images/olahraga_basket.jpg",
            description: "Bola basket ukuran standar, bahan PU.",
          ),
          ProductModel(
            name: "Sarung Tangan Gym",
            price: "Rp 35.000",
            image: "assets/images/olahraga_gloves.jpg",
            description: "Sarung tangan gym anti slip.",
          ),
        ];

      // ================================
      // 10. FURNITURE
      // ================================
      case "Furniture":
        return [
          ProductModel(
            name: "Kursi Kayu Minimalis",
            price: "Rp 220.000",
            image: "assets/images/furniture_kursi.jpg",
            description: "Kursi kayu jati minimalis finishing halus.",
          ),
          ProductModel(
            name: "Meja Belajar",
            price: "Rp 350.000",
            image: "assets/images/furniture_meja.jpg",
            description: "Meja belajar modern dengan rak samping.",
          ),
          ProductModel(
            name: "Rak Buku Minimalis",
            price: "Rp 280.000",
            image: "assets/images/furniture_rak.jpg",
            description: "Rak buku 4 tingkat desain elegan.",
          ),
          ProductModel(
            name: "Sofa Mini 2 Dudukan",
            price: "Rp 750.000",
            image: "assets/images/furniture_sofa.jpg",
            description: "Sofa kecil empuk dengan bahan fabric.",
          ),
          ProductModel(
            name: "Lemari Pakaian",
            price: "Rp 1.200.000",
            image: "assets/images/furniture_lemari.jpg",
            description: "Lemari pakaian 2 pintu kuat dan awet.",
          ),
          ProductModel(
            name: "Meja TV Modern",
            price: "Rp 400.000",
            image: "assets/images/furniture_mejatv.jpg",
            description: "Meja TV minimalis kayu kombinasi metal.",
          ),
        ];
    }

    return [];
  }

  // ==========================================
  // UI
  // ==========================================
  @override
  Widget build(BuildContext context) {
    final products = _productsFor(categoryName);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: const Color(0xFF6A42A3),
      ),
      backgroundColor: const Color(0xFFF9F5FF),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final p = products[index];
            return ProductCard(
              data: p,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen(product: p),
                  ),
                );
              },
              onDetailTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen(product: p),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
