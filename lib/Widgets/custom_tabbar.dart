import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    Key? key,
    //required List<String> tabBarItems,
    required List<String> tabBarItems,
    required List<Widget> tabViewItems,
    Color? selectedCardColor,
    Color? selectedTitleColor,
    Color? unSelectedCardColor,
    Color? unSelectedTitleColor,
    double? selectedTabElevation,
    Duration? duration,
    RoundedRectangleBorder? shape,
    double? tabBarItemExtend,
    EdgeInsets? padding,
    TabBarLocation? tabBarLocation,
    double? tabBarItemHeight,
    double? tabBarItemWidth,
    double? tabViewItemHeight,
    double? tabViewItemWidth,
    TextStyle? titleStyle,
  })  : _selectedCardColor = selectedCardColor,
        _unSelectedCardColor = unSelectedCardColor,
        _selectedTitleColor = selectedTitleColor,
        _unSelectedTitleColor = unSelectedTitleColor,
        _tabBarItems = tabBarItems,
        _tabViewItems = tabViewItems,
        _duration = duration,
        _shape = shape,
        _tabBarItemExtend = tabBarItemExtend,
        _padding = padding,
        _tabBarLocation = tabBarLocation,
        _selectedTabElevation = selectedTabElevation,
        _tabBarItemHeight = tabBarItemHeight,
        _tabBarItemWidth = tabBarItemWidth,
        _tabViewItemHeight = tabViewItemHeight,
        _tabViewItemWidth = tabViewItemWidth,
        _titleStyle = titleStyle,
        super(key: key);

  final Color? _selectedCardColor;
  final Color? _unSelectedCardColor;
  final Color? _selectedTitleColor;
  final Color? _unSelectedTitleColor;

  final double? _selectedTabElevation;
  final double? _tabBarItemHeight;
  final double? _tabBarItemWidth;
  final double? _tabViewItemHeight;
  final double? _tabViewItemWidth;
  final TextStyle? _titleStyle;

 // final List<String> _tabBarItems;
  final List<String> _tabBarItems;
  final List<Widget> _tabViewItems;
  final Duration? _duration;
  final RoundedRectangleBorder? _shape;
  final double? _tabBarItemExtend;
  final EdgeInsets? _padding;
  final TabBarLocation? _tabBarLocation;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

enum TabBarLocation {
  top,
  bottom,
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _selectedIndex = 0;
  late final PageController _pageController;

  void _changeSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(_selectedIndex,
          duration: widget._duration ?? const Duration(milliseconds: 200),
          curve: Curves.ease);
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget._tabBarLocation == TabBarLocation.top ||
                widget._tabBarLocation == null
            ? _TabBarItems(context)
            : const SizedBox.shrink(),
        _TabViewItems(),
        widget._tabBarLocation == TabBarLocation.bottom
            ? _TabBarItems(context)
            : const SizedBox.shrink(),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox _TabViewItems() {
    return SizedBox(
      height:
          widget._tabViewItemHeight ?? MediaQuery.of(context).size.height * 0.8,
      width: widget._tabViewItemWidth ?? MediaQuery.of(context).size.width,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) => _changeSelectedIndex(value),
        children: widget._tabViewItems,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding _TabBarItems(BuildContext context) {
    return Padding(
      padding: widget._padding ??
          EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.01,
          ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: widget._tabBarItemWidth ?? MediaQuery.of(context).size.width,
            height: widget._tabBarItemHeight ??
                MediaQuery.of(context).size.height * 0.07,
            child: ListView.builder(
              itemCount: widget._tabBarItems.length,
              scrollDirection: Axis.horizontal,
              itemExtent: widget._tabBarItemExtend ??
                  MediaQuery.of(context).size.width * 0.33,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => setState(() {
                    _changeSelectedIndex(index);
                  }),
                  child: Card(
                    shape: widget._shape,
                    elevation: _selectedIndex == index
                        ? widget._selectedTabElevation ?? 3
                        : 0,
                    color: _selectedIndex == index
                        ? widget._selectedCardColor ??
                            _CustomTabBarColor().selectedCardColor
                        : widget._unSelectedCardColor ??
                            _CustomTabBarColor().unSelectedCardColor,
                    child: Center(
                      child: Text(
                        widget._tabBarItems[index],
                        textAlign: TextAlign.center,
                        style: widget._titleStyle ??
                            Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: _selectedIndex == index
                                    ? widget._selectedTitleColor ??
                                        _CustomTabBarColor().selectedTitleColor
                                    : widget._unSelectedTitleColor ??
                                        _CustomTabBarColor()
                                            .unSelectedTitleColor),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomTabBarColor {
  final Color unSelectedCardColor = const Color.fromARGB(255, 34, 34, 34);
  final Color selectedCardColor = const Color.fromARGB(255, 13, 172, 158);
  final Color selectedTitleColor = Colors.white;
  final Color unSelectedTitleColor = Colors.white;
}
