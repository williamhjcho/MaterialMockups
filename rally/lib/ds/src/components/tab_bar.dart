import 'package:flutter/material.dart';

@immutable
class RallyTabData {
  const RallyTabData({
    @required this.icon,
    @required this.text,
  })  : assert(icon != null),
        assert(text != null),
        super();

  final IconData icon;
  final String text;
}

class RallyTabBar extends StatelessWidget implements PreferredSizeWidget {
  const RallyTabBar({
    Key key,
    this.primary = true,
    this.onTap,
  }) : super(key: key);

  final bool primary;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    Widget child = _TabCtrl(
      tabs: [
        RallyTabData(
          icon: Icons.pie_chart,
          text: 'OVERVIEW',
        ),
        RallyTabData(
          icon: Icons.attach_money,
          text: 'ACCOUNTS',
        ),
        RallyTabData(
          icon: Icons.money_off,
          text: 'BILLS',
        ),
        RallyTabData(
          icon: Icons.insert_chart,
          text: 'BUDGETS',
        ),
        RallyTabData(
          icon: Icons.settings,
          text: 'SETTINGS',
        ),
      ],
      labelPadding: EdgeInsets.zero,
      onTap: onTap,
    );

    if (primary) {
      child = SafeArea(
        bottom: false,
        top: true,
        child: child,
      );
    }

    return child;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TabCtrl extends StatefulWidget {
  const _TabCtrl({
    Key key,
    @required this.tabs,
    this.labelPadding,
    @required this.onTap,
  })  : assert(tabs != null),
        super(key: key);

  final List<RallyTabData> tabs;
  final EdgeInsetsGeometry labelPadding;
  final ValueChanged<int> onTap;

  @override
  _TabCtrlState createState() => _TabCtrlState();
}

class _TabCtrlState extends State<_TabCtrl> {
  TabController _controller;
  int _currentIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _controller = DefaultTabController.of(context);
    _controller.addListener(_handleTabControllerTick);
    _currentIndex = _controller.index;
  }

  @override
  void dispose() {
    super.dispose();

    _controller?.removeListener(_handleTabControllerTick);
  }

  void _handleTabControllerTick() {
    if (_controller.index != _currentIndex) {
      _currentIndex = _controller.index;
    }
    setState(() {
      // Rebuild the tabs after a (potentially animated) index change
      // has completed.
    });
  }

  void _handleTap(int index) {
    assert(index >= 0 && index < widget.tabs.length);
    _controller.animateTo(index);
    if (widget.onTap != null) {
      widget.onTap(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabBarTheme = theme.tabBarTheme;

    final tabCount = widget.tabs.length;
    final wrappedTabs = List<Widget>(tabCount);
    for (var index = 0; index < tabCount; index++) {
      final selected = index == _currentIndex;
      Widget tab = GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _handleTap(index),
        child: Padding(
          padding: tabBarTheme.labelPadding ?? kTabLabelPadding,
          child: _RallyTab(
            data: widget.tabs[index],
            selected: selected,
          ),
        ),
      );

      if (selected) {
        tab = Expanded(child: tab);
      }
      wrappedTabs[index] = tab;
    }

    return _TabStyle(
      selected: false,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: wrappedTabs,
      ),
    );
  }
}

class _TabStyle extends StatelessWidget {
  const _TabStyle({
    Key key,
    @required this.child,
    @required this.selected,
  }) : super(key: key);

  final Widget child;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabBarTheme = theme.tabBarTheme;

    // TODO: lerp with animation
    final textStyle = tabBarTheme.labelStyle ?? theme.textTheme.button;
    final color =
        selected ? tabBarTheme.labelColor : tabBarTheme.unselectedLabelColor;

    return DefaultTextStyle(
      style: textStyle.copyWith(color: color),
      child: IconTheme.merge(
        data: IconThemeData(color: color),
        child: child,
      ),
    );
  }
}

class _RallyTab extends StatelessWidget {
  const _RallyTab({
    Key key,
    @required this.data,
    @required this.selected,
  }) : super(key: key);

  final RallyTabData data;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    Widget child = Icon(data.icon);
    if (selected) {
      child = Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          child,
          const SizedBox(width: 16),
          Flexible(
            child: Text(
              data.text,
              textAlign: TextAlign.start,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      );
    }
    return SizedBox(
      height: kToolbarHeight,
      child: child,
    );
  }
}
