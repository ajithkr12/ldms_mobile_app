class ExploreTabTypes {
  static int all = 0;
  static int water = 1;
  static int lpg = 2;

  static List<Map<String, dynamic>> list = [
    {
      "id": all,
      "name": "All",
      "iconUrl": "assets/icons/double-tick.svg",
      // "widget": const AllTab(),
    },
    {
      "id": water,
      "name": "Water",
      "iconUrl": "assets/icons/water.svg",
      // "widget": const PostsTab(),
    },
    {
      "id": lpg,
      "name": "LPG",
      "iconUrl": "assets/icons/gas.svg",
      // "widget": const ReelsTab(),
    }
  ];
}
