import 'package:flutter/material.dart';
import 'package:introduction_screen/src/model/page_decoration.dart';

class PageViewModel {
  /// Title of page
  final String? title;

  /// Title of page
  final Widget? titleWidget;

  /// Text of page (description)
  final String? body;

  /// Widget content of page (description)
  final Widget? bodyWidget;

  /// Image of page
  /// Tips: Wrap your image with an alignment widget like Align or Center
  final Widget? image;

  /// Footer widget, you can add a button for example
  final Widget? footer;

  /// Page decoration
  /// Contain all page customizations, like page color, text styles
  final PageDecoration decoration;

  /// If widget Order is reverse - body before image
  final bool reverse;

  /// Wrap content in scrollView
  final bool useScrollView;

  final Widget? raw;

  PageViewModel({
    this.title,
    this.titleWidget,
    this.body,
    this.bodyWidget,
    this.image,
    this.footer,
    this.reverse =  false,
    this.decoration = const PageDecoration(),
    this.useScrollView = true,
    this.raw
  })  : assert(
          title != null || titleWidget != null || raw != null,
          "You must provide either title (String), titleWidget (Widget) or raw content.",
        ),
        assert(
          (title == null) != (titleWidget == null) || raw != null, 
          "You can not provide both title and titleWidget.",
        ),
        assert(
          body != null || bodyWidget != null || raw != null,
          "You must provide either body (String), bodyWidget (Widget) or raw content",
        ),
        assert(
          (body == null) != (bodyWidget == null) || raw != null,
          "You can not provide both body and bodyWidget.",
        );
}
