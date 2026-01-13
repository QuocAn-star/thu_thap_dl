import 'package:flutter/material.dart';

/* --------------------------- Data Models --------------------------- */

class Place {
  final String name;
  final String desc;
  final String imageUrl;

  const Place({
    required this.name,
    required this.desc,
    required this.imageUrl,
  });
}

class City {
  final String name;
  final String heroImageUrl;
  final List<Place> places;

  const City({
    required this.name,
    required this.heroImageUrl,
    required this.places,
  });
}

/* ===== Trang 3 Models (Trip Plan) ===== */

class HotelInfo {
  final String name;
  final String price;
  final String area;
  final String website;
  final String facebook;
  final String booking;

  const HotelInfo({
    required this.name,
    required this.price,
    required this.area,
    required this.website,
    required this.facebook,
    required this.booking,
  });
}

class BusInfo {
  final String name;
  final String price;
  final String route;

  const BusInfo({
    required this.name,
    required this.price,
    required this.route,
  });
}

class FlightInfo {
  final String airline;
  final String price;
  final String airportTo;

  const FlightInfo({
    required this.airline,
    required this.price,
    required this.airportTo,
  });
}

class ExtraSpot {
  final String name;
  final String desc;

  const ExtraSpot({
    required this.name,
    required this.desc,
  });
}

class DaySchedule {
  final String dayTitle;
  final String morning;
  final String noon;
  final String afternoon;
  final String evening;

  const DaySchedule({
    required this.dayTitle,
    required this.morning,
    required this.noon,
    required this.afternoon,
    required this.evening,
  });
}

class PrepSection {
  final String title;
  final List<String> items;

  const PrepSection({
    required this.title,
    required this.items,
  });
}

class TripPlan {
  final String duration; // 3N2Đ
  final String style; // nghỉ dưỡng/khám phá/check-in
  final List<HotelInfo> hotels;
  final List<BusInfo> buses;
  final List<FlightInfo> flights;
  final List<ExtraSpot> extras;
  final List<DaySchedule> schedule;
  final List<PrepSection> prep;

  const TripPlan({
    required this.duration,
    required this.style,
    required this.hotels,
    required this.buses,
    required this.flights,
    required this.extras,
    required this.schedule,
    required this.prep,
  });
}

/* --------------------------- Data --------------------------- */

const cities = <City>[
  City(
    name: 'Phan Thiết',
    heroImageUrl:
        'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/01/anh1-17.png',
    places: [
      Place(
        name: 'Đồi cát bay',
        desc: 'Check-in bình minh, trượt cát, chụp ảnh cực đẹp.',
        imageUrl:
            'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/01/anh13-17.png',
      ),
      Place(
        name: 'Bãi rạng',
        desc:
            'Bãi tắm đẹp nhất của Phan Thiết, gió mát, phù hợp nghỉ dưỡng và thể thao biển.',
        imageUrl:
            'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/01/anh22-4.png',
      ),
      Place(
        name: 'Suối Tiên',
        desc: 'Dòng suối đỏ cam độc đáo, đi bộ nhẹ nhàng, cảnh lạ.',
        imageUrl:
            'https://ik.imagekit.io/tvlk/blog/2022/12/suoi-tien-mui-ne-6.jpg',
      ),
      Place(
        name: 'Làng chài',
        desc:
            'Ngắm thuyền thúng, mua hải sản tươi, trải nghiệm đời sống địa phương.',
        imageUrl:
            'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/01/anh12-14.png',
      ),
    ],
  ),
  City(
    name: 'Đà Lạt',
    heroImageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe3ZDh6_bJ_8EJSxh3X9ldpedTUd4Zz5P9yg&s',
    places: [
      Place(
        name: 'Hồ Xuân Hương',
        desc: 'Dạo hồ, đạp vịt, cà phê sáng sương mát.',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ91zGH02WNx1rO7O6K1cK7jMzbekMfGKJMkw&s',
      ),
      Place(
        name: 'Đồi chè Cầu Đất',
        desc: 'Biển chè xanh mướt, săn mây buổi sớm.',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeltKSqCXvu0fTFAULWFnDYu6sPSrynTHp8g&s',
      ),
      Place(
        name: 'Thung lũng Tình Yêu',
        desc: 'Không gian lãng mạn, nhiều góc chụp ảnh.',
        imageUrl:
            'https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1200,h_630/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/t8ojjwnqqzgxuqr80k2o/V%C3%A9ThamQuanThungL%C5%A9ngT%C3%ACnhY%C3%AAu%E1%BB%9F%C4%90%C3%A0L%E1%BA%A1t-KlookVi%E1%BB%87tNam.jpg',
      ),
      Place(
        name: 'Chợ Đà Lạt',
        desc: 'Ăn vặt, đặc sản, trải nghiệm không khí về đêm.',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3-X9U2WAy7cKV4ZPgvfvmg4MyjrGZ85iIuQ&s',
      ),
    ],
  ),
  City(
    name: 'Nha Trang',
    heroImageUrl:
        'https://vcdn1-dulich.vnecdn.net/2022/05/09/shutterstock-280926449-6744-15-3483-9174-1652070682.jpg?w=0&h=0&q=100&dpr=1&fit=crop&s=bGCo6Rv6DseMDE_07TT1Aw',
    places: [
      Place(
        name: 'Bãi biển Trần Phú',
        desc: 'Tắm biển, đi bộ ven bờ, ngắm hoàng hôn.',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCU8-WKCqJbynuEn01MuGqoXCGcUFS6zemVg&s',
      ),
      Place(
        name: 'Tháp Bà Ponagar',
        desc: 'Di tích văn hóa Chăm, kiến trúc cổ, view đẹp.',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/2/2b/Po_Nagar_tower.jpg',
      ),
      Place(
        name: 'Hòn Mun',
        desc: 'Lặn ngắm san hô, nước trong, trải nghiệm biển đảo.',
        imageUrl:
            'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/09/hon-mun-1.jpg',
      ),
      Place(
        name: 'Chợ Đầm',
        desc: 'Mua đặc sản, hải sản khô, đồ lưu niệm.',
        imageUrl:
            'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2016/01/Cho-Dam-Nha-Trang.jpg',
      ),
    ],
  ),
];

const tripPlansByCity = <String, TripPlan>{
  'Phan Thiết': TripPlan(
    duration: '3 ngày 2 đêm',
    style: 'Nghỉ dưỡng / Check-in / Biển',
    hotels: [
      HotelInfo(
        name: 'Mũi Né Bay Resort',
        price: '900k–1tr5/đêm',
        area: 'Mũi Né',
        website: 'https://example.com/muinebay',
        facebook: 'https://facebook.com/muinebay',
        booking: 'https://example.com/datphong-muinebay',
      ),
      HotelInfo(
        name: 'Homestay Cát Trắng',
        price: '450k–750k/đêm',
        area: 'Trung tâm',
        website: 'https://example.com/cattrang',
        facebook: 'https://facebook.com/cattranghomestay',
        booking: 'https://example.com/datphong-cattrang',
      ),
    ],
    buses: [
      BusInfo(name: 'Phương Trang', price: '180k–250k', route: 'TP.HCM ↔ Phan Thiết'),
      BusInfo(name: 'Kumho Samco', price: '200k–280k', route: 'TP.HCM ↔ Phan Thiết'),
    ],
    flights: [
      // Phan Thiết hiện không có sân bay khai thác thương mại phổ biến -> để rỗng để show thông báo
    ],
    extras: [
      ExtraSpot(name: 'Bàu Trắng', desc: 'Hồ nước giữa đồi cát, chụp ảnh rất “đã”.'),
      ExtraSpot(name: 'Hải đăng Kê Gà', desc: 'Đi sớm để tránh nắng, cảnh biển đẹp.'),
      ExtraSpot(name: 'Bãi đá Ông Địa', desc: 'Đi dạo chiều, hoàng hôn nhẹ nhàng.'),
    ],
    schedule: [
      DaySchedule(
        dayTitle: 'Ngày 1: Di chuyển – Nhận phòng – Điểm gần trung tâm',
        morning: 'Di chuyển đến Phan Thiết, ăn sáng nhẹ.',
        noon: 'Nhận phòng, nghỉ ngơi.',
        afternoon: 'Tham quan Làng Chài / Suối Tiên (đi bộ nhẹ).',
        evening: 'Ăn hải sản, dạo biển, cà phê ven biển.',
      ),
      DaySchedule(
        dayTitle: 'Ngày 2: Điểm nổi bật – Check-in',
        morning: 'Đồi Cát Bay: săn bình minh, trượt cát.',
        noon: 'Ăn trưa, về nghỉ tránh nắng.',
        afternoon: 'Bãi Rạng: tắm biển, chơi thể thao biển.',
        evening: 'Chợ đêm/ẩm thực địa phương, về nghỉ.',
      ),
      DaySchedule(
        dayTitle: 'Ngày 3: Mua đặc sản – Trả phòng – Về',
        morning: 'Mua đặc sản (mực 1 nắng, nước mắm...).',
        noon: 'Trả phòng, ăn trưa.',
        afternoon: 'Di chuyển về lại điểm xuất phát.',
        evening: 'Kết thúc chuyến đi.',
      ),
    ],
    prep: [
      PrepSection(
        title: 'Vật dụng cần mang',
        items: ['Kem chống nắng', 'Kính râm', 'Dép/giày dễ đi', 'Đồ bơi', 'Thuốc say xe (nếu cần)'],
      ),
      PrepSection(
        title: 'Thời tiết',
        items: ['Nắng nhiều, nên đi sáng sớm/chiều', 'Mang áo khoác mỏng nếu đi gió biển tối'],
      ),
      PrepSection(
        title: 'Chi phí',
        items: ['Dự trù 1.5–3tr/người tùy nhu cầu', 'Đi nhóm sẽ tiết kiệm xe/ở'],
      ),
      PrepSection(
        title: 'Mẹo du lịch',
        items: ['Đi Đồi Cát trước 6:00', 'Tránh khung 11:00–14:00', 'Đặt phòng trước cuối tuần/lễ'],
      ),
    ],
  ),

  'Đà Lạt': TripPlan(
    duration: '3 ngày 2 đêm',
    style: 'Khám phá / Chill / Check-in',
    hotels: [
      HotelInfo(
        name: 'Khách sạn Trung tâm Đà Lạt',
        price: '600k–1tr2/đêm',
        area: 'Gần Chợ Đà Lạt',
        website: 'https://example.com/dalat-hotel',
        facebook: 'https://facebook.com/dalat-hotel',
        booking: 'https://example.com/datphong-dalat-hotel',
      ),
      HotelInfo(
        name: 'Homestay View Đồi Thông',
        price: '450k–900k/đêm',
        area: 'Ngoại ô',
        website: 'https://example.com/doithong',
        facebook: 'https://facebook.com/doithonghomestay',
        booking: 'https://example.com/datphong-doithong',
      ),
    ],
    buses: [
      BusInfo(name: 'Thành Bưởi', price: '250k–350k', route: 'TP.HCM ↔ Đà Lạt'),
      BusInfo(name: 'Phương Trang', price: '230k–330k', route: 'TP.HCM ↔ Đà Lạt'),
    ],
    flights: [
      FlightInfo(airline: 'Vietnam Airlines', price: '900k–2tr', airportTo: 'Liên Khương (DLI)'),
      FlightInfo(airline: 'Vietjet Air', price: '700k–1tr8', airportTo: 'Liên Khương (DLI)'),
    ],
    extras: [
      ExtraSpot(name: 'Đồi Thiên Phúc Đức', desc: 'Săn mây, view đẹp, đi sớm.'),
      ExtraSpot(name: 'Cung đường Hàn Quốc', desc: 'Check-in sống ảo, cây thông/đồi dốc.'),
      ExtraSpot(name: 'Làng hoa Vạn Thành', desc: 'Hoa đẹp, hợp chụp ảnh chiều.'),
    ],
    schedule: [
      DaySchedule(
        dayTitle: 'Ngày 1: Nhận phòng – Chill trung tâm',
        morning: 'Di chuyển, ăn sáng.',
        noon: 'Nhận phòng, nghỉ.',
        afternoon: 'Hồ Xuân Hương – cà phê view.',
        evening: 'Chợ Đà Lạt – ăn vặt – dạo đêm.',
      ),
      DaySchedule(
        dayTitle: 'Ngày 2: Điểm nổi bật',
        morning: 'Đồi chè Cầu Đất – săn mây.',
        noon: 'Ăn trưa, nghỉ.',
        afternoon: 'Thung lũng Tình Yêu – check-in.',
        evening: 'BBQ/ăn tối, về nghỉ.',
      ),
      DaySchedule(
        dayTitle: 'Ngày 3: Mua quà – Trả phòng – Về',
        morning: 'Mua đặc sản (hồng, dâu, trà...).',
        noon: 'Trả phòng, ăn trưa.',
        afternoon: 'Di chuyển về.',
        evening: 'Kết thúc chuyến đi.',
      ),
    ],
    prep: [
      PrepSection(
        title: 'Vật dụng cần mang',
        items: ['Áo khoác', 'Ô/áo mưa mỏng', 'Giày thể thao', 'Kem dưỡng (khô lạnh)'],
      ),
      PrepSection(
        title: 'Thời tiết',
        items: ['Sáng/đêm lạnh', 'Mưa bất chợt, nên có ô'],
      ),
      PrepSection(
        title: 'Chi phí',
        items: ['Dự trù 2–4tr/người', 'Thuê xe máy ~120k–180k/ngày'],
      ),
      PrepSection(
        title: 'Mẹo du lịch',
        items: ['Đi Cầu Đất trước 6:30', 'Chọn quán cà phê đặt chỗ nếu cuối tuần'],
      ),
    ],
  ),

  'Nha Trang': TripPlan(
    duration: '3 ngày 2 đêm',
    style: 'Biển / Nghỉ dưỡng / Đảo',
    hotels: [
      HotelInfo(
        name: 'Hotel Trần Phú View Biển',
        price: '700k–1tr6/đêm',
        area: 'Đường Trần Phú',
        website: 'https://example.com/nt-tranphu',
        facebook: 'https://facebook.com/nt-tranphu',
        booking: 'https://example.com/datphong-nt-tranphu',
      ),
    ],
    buses: [
      BusInfo(name: 'Phương Trang', price: '280k–420k', route: 'TP.HCM ↔ Nha Trang'),
    ],
    flights: [
      FlightInfo(airline: 'Vietnam Airlines', price: '900k–2tr2', airportTo: 'Cam Ranh (CXR)'),
      FlightInfo(airline: 'Vietjet Air', price: '700k–1tr9', airportTo: 'Cam Ranh (CXR)'),
    ],
    extras: [
      ExtraSpot(name: 'Hòn Tằm', desc: 'Tour đảo, tắm bùn, phù hợp nghỉ dưỡng.'),
      ExtraSpot(name: 'Viện Hải Dương Học', desc: 'Đi nhẹ nhàng, hợp gia đình.'),
      ExtraSpot(name: 'Chợ Xóm Mới', desc: 'Ăn uống địa phương, giá ổn.'),
    ],
    schedule: [
      DaySchedule(
        dayTitle: 'Ngày 1: Biển trung tâm – Ẩm thực',
        morning: 'Nhận phòng, dạo biển Trần Phú.',
        noon: 'Ăn trưa, nghỉ.',
        afternoon: 'Tháp Bà Ponagar – tham quan văn hóa.',
        evening: 'Hải sản, dạo phố biển.',
      ),
      DaySchedule(
        dayTitle: 'Ngày 2: Tour đảo – Lặn ngắm san hô',
        morning: 'Đi Hòn Mun: lặn ngắm san hô.',
        noon: 'Ăn trưa trên tour/đảo.',
        afternoon: 'Tắm biển, chụp ảnh.',
        evening: 'Nghỉ ngơi, ăn tối nhẹ.',
      ),
      DaySchedule(
        dayTitle: 'Ngày 3: Mua quà – Về',
        morning: 'Chợ Đầm: mua đặc sản, quà.',
        noon: 'Trả phòng, ăn trưa.',
        afternoon: 'Di chuyển về.',
        evening: 'Kết thúc.',
      ),
    ],
    prep: [
      PrepSection(
        title: 'Vật dụng cần mang',
        items: ['Đồ bơi', 'Kem chống nắng', 'Túi chống nước', 'Dép/giày sandal'],
      ),
      PrepSection(
        title: 'Thời tiết',
        items: ['Nắng mạnh, dễ mất nước', 'Đi đảo nên chuẩn bị say sóng (nếu có)'],
      ),
      PrepSection(
        title: 'Chi phí',
        items: ['Tour đảo thường 400k–900k/người', 'Di chuyển Cam Ranh ↔ trung tâm: cân nhắc'],
      ),
      PrepSection(
        title: 'Mẹo du lịch',
        items: ['Đi biển sáng/chiều, tránh trưa', 'Đặt tour có review tốt, hỏi rõ dịch vụ kèm theo'],
      ),
    ],
  ),
};

/* --------------------------- Screens --------------------------- */

// Trang 1: danh sách thành phố
class HomeScreen extends StatelessWidget {
  final VoidCallback? onLogout;
  const HomeScreen({super.key, this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chọn điểm đến'),
        centerTitle: true,
        actions: [
          if (onLogout != null)
            IconButton(
              tooltip: 'Đăng xuất',
              icon: const Icon(Icons.logout),
              onPressed: onLogout,
            ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: cities.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, i) {
          final city = cities[i];
          return CityCard(
            city: city,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TripDetailScreen(city: city)),
              );
            },
          );
        },
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final City city;
  final VoidCallback onTap;

  const CityCard({super.key, required this.city, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 190,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                city.heroImageUrl,
                fit: BoxFit.cover,
                loadingBuilder: (c, w, p) =>
                    p == null ? w : const Center(child: CircularProgressIndicator()),
                errorBuilder: (_, __, ___) => Container(
                  color: Colors.black12,
                  child: const Icon(Icons.image, size: 40),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [Color(0xAA000000), Color(0x00000000)],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                bottom: 16,
                right: 16,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        city.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* --------------------------- Trang 3: Trip Detail --------------------------- */

class TripDetailScreen extends StatelessWidget {
  final City city;
  const TripDetailScreen({super.key, required this.city});

  static const Color kTeal = Color(0xFF00BFA6);

  TripPlan _planFor(City c) {
    return tripPlansByCity[c.name] ??
        TripPlan(
          duration: '3 ngày 2 đêm',
          style: 'Khám phá / Tự do',
          hotels: const [],
          buses: const [],
          flights: const [],
          extras: const [],
          schedule: const [],
          prep: const [],
        );
  }

  @override
  Widget build(BuildContext context) {
    final plan = _planFor(city);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              expandedHeight: 170,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0,
              forceElevated: innerBoxIsScrolled,

              title: Text(
                city.name,
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
              actions: [
                IconButton(
                  tooltip: 'Chia sẻ (demo)',
                  icon: const Icon(Icons.share),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Chức năng chia sẻ: demo UI')),
                    );
                  },
                ),
              ],

              // ✅ TabBar có nền riêng => không bị chìm vào ảnh
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(54),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    border: Border(
                      top: BorderSide(color: Colors.black.withOpacity(0.06)),
                      bottom: BorderSide(color: Colors.black.withOpacity(0.06)),
                    ),
                  ),
                  child: TabBar(
                    labelColor: kTeal,
                    unselectedLabelColor: Colors.black54,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w800),
                    unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: kTeal.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    indicatorPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    tabs: const [
                      Tab(text: 'Tổng quan'),
                      Tab(text: 'Cụ thể'),
                      Tab(text: 'Chuẩn bị'),
                    ],
                  ),
                ),
              ),

              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      city.heroImageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(color: Colors.black12),
                    ),

                    // ✅ overlay nhẹ để title/icons rõ, nhưng tab đã có nền riêng nên không cần đậm
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(0, 0, 0, 0.25),
                            Color.fromRGBO(0, 0, 0, 0.00),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              _OverviewTab(city: city, plan: plan),
              _ItineraryTab(plan: plan),
              _PrepTab(plan: plan),
            ],
          ),
        ),
      ),
    );
  }
}

/* ===== Tab 1: Tổng quan ===== */

class _OverviewTab extends StatelessWidget {
  final City city;
  final TripPlan plan;

  const _OverviewTab({required this.city, required this.plan});

  void _showHotelSheet(BuildContext context) {
    if (plan.hotels.isEmpty) {
      _showEmptySheet(context, 'Khách sạn', 'Chưa có gợi ý khách sạn cho địa điểm này.');
      return;
    }

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) {
        return SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            itemCount: plan.hotels.length,
            separatorBuilder: (_, __) => const Divider(height: 18),
            itemBuilder: (_, i) {
              final h = plan.hotels[i];
              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.hotel)),
                title: Text(h.name, style: const TextStyle(fontWeight: FontWeight.w800)),
                subtitle: Text('${h.price} • ${h.area}'),
                trailing: const Icon(Icons.link),
                onTap: () => _showLinksDialog(
                  context,
                  title: h.name,
                  lines: [
                    'Website: ${h.website}',
                    'Facebook: ${h.facebook}',
                    'Đặt phòng: ${h.booking}',
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _showBusSheet(BuildContext context) {
    if (plan.buses.isEmpty) {
      _showEmptySheet(
        context,
        'Xe khách',
        'Hiện vẫn chưa khai thác tuyến xe đến địa điểm này.',
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) {
        return SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            itemCount: plan.buses.length,
            separatorBuilder: (_, __) => const Divider(height: 18),
            itemBuilder: (_, i) {
              final b = plan.buses[i];
              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.directions_bus)),
                title: Text(b.name, style: const TextStyle(fontWeight: FontWeight.w800)),
                subtitle: Text('${b.price} • ${b.route}'),
              );
            },
          ),
        );
      },
    );
  }

  void _showFlightSheet(BuildContext context) {
    if (plan.flights.isEmpty) {
      _showEmptySheet(
        context,
        'Máy bay',
        'Hiện vẫn chưa khai thác đường bay đến khu vực này.',
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) {
        return SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            itemCount: plan.flights.length,
            separatorBuilder: (_, __) => const Divider(height: 18),
            itemBuilder: (_, i) {
              final f = plan.flights[i];
              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.flight)),
                title: Text(f.airline, style: const TextStyle(fontWeight: FontWeight.w800)),
                subtitle: Text('${f.price} • Đến: ${f.airportTo}'),
              );
            },
          ),
        );
      },
    );
  }

  void _showEmptySheet(BuildContext context, String title, String message) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
                const SizedBox(height: 10),
                Text(message),
                const SizedBox(height: 6),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showLinksDialog(BuildContext context, {required String title, required List<String> lines}) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: SelectableText(lines.join('\n')),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Đóng')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // 3.1.1 Tổng quan nhanh
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  city.name,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    _Chip(text: plan.duration, icon: Icons.timelapse, color: cs.primary),
                    const SizedBox(width: 8),
                    _Chip(text: plan.style, icon: Icons.style, color: cs.tertiary),
                  ],
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 14),

        // 3.1.2 Circle icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _CircleAction(
              icon: Icons.hotel,
              label: 'Khách sạn',
              onTap: () => _showHotelSheet(context),
            ),
            _CircleAction(
              icon: Icons.directions_bus,
              label: 'Xe khách',
              onTap: () => _showBusSheet(context),
            ),
            _CircleAction(
              icon: Icons.flight,
              label: 'Máy bay',
              onTap: () => _showFlightSheet(context),
            ),
          ],
        ),

        const SizedBox(height: 18),

        // 3.1.3 Khám phá thêm
        Text(
          'Khám phá thêm',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: cs.onSurface),
        ),
        const SizedBox(height: 10),

        if (plan.extras.isEmpty)
          Text('Chưa có gợi ý thêm.', style: TextStyle(color: cs.onSurfaceVariant))
        else
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: plan.extras.map((e) {
              return InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (_) => SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 18),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(e.name,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900)),
                            const SizedBox(height: 10),
                            Text(e.desc),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: cs.primary.withOpacity(0.08),
                    border: Border.all(color: cs.primary.withOpacity(0.18)),
                  ),
                  child: Text(
                    e.name,
                    style: TextStyle(fontWeight: FontWeight.w700, color: cs.primary),
                  ),
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}

class _CircleAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _CircleAction({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Expanded(
      child: Column(
        children: [
          InkResponse(
            onTap: onTap,
            radius: 38,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: cs.primary.withOpacity(0.10),
              child: Icon(icon, color: cs.primary, size: 28),
            ),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const _Chip({
    required this.text,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: color.withOpacity(0.10),
        border: Border.all(color: color.withOpacity(0.22)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 6),
          Text(text, style: TextStyle(fontWeight: FontWeight.w700, color: color)),
        ],
      ),
    );
  }
}

/* ===== Tab 2: Cụ thể (Lịch trình) ===== */

class _ItineraryTab extends StatelessWidget {
  final TripPlan plan;
  const _ItineraryTab({required this.plan});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    if (plan.schedule.isEmpty) {
      return Center(
        child: Text('Chưa có lịch trình.', style: TextStyle(color: cs.onSurfaceVariant)),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: plan.schedule.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, i) {
        final d = plan.schedule[i];
        return Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: ExpansionTile(
            title: Text(d.dayTitle, style: const TextStyle(fontWeight: FontWeight.w900)),
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
            children: [
              _DayPart(icon: Icons.wb_sunny_outlined, title: 'Buổi sáng', text: d.morning),
              _DayPart(icon: Icons.lunch_dining, title: 'Buổi trưa', text: d.noon),
              _DayPart(icon: Icons.landscape_outlined, title: 'Buổi chiều', text: d.afternoon),
              _DayPart(icon: Icons.nightlight_outlined, title: 'Buổi tối', text: d.evening),
            ],
          ),
        );
      },
    );
  }
}

class _DayPart extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;

  const _DayPart({required this.icon, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: cs.primary),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: '$title: ',
                    style: const TextStyle(fontWeight: FontWeight.w900),
                  ),
                  TextSpan(text: text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* ===== Tab 3: Chuẩn bị & Lưu ý ===== */

class _PrepTab extends StatelessWidget {
  final TripPlan plan;
  const _PrepTab({required this.plan});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    if (plan.prep.isEmpty) {
      return Center(
        child: Text('Chưa có gợi ý chuẩn bị.', style: TextStyle(color: cs.onSurfaceVariant)),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: plan.prep.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, i) {
        final s = plan.prep[i];
        return Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(s.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                const SizedBox(height: 10),
                ...s.items.map(
                  (it) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check_circle, size: 18, color: cs.primary),
                        const SizedBox(width: 10),
                        Expanded(child: Text(it)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
