---
title: Robolectric 3.0 RC2 Released
date: 2015-03-30
tags: android,robolectric
---

# Robolectric 3.0 RC2 Released

Ever since 2.4 was released back in November, we’ve been hard at work on
Robolectric 3.0. We wanted to deliver on some big features that the community
has been wanting for a long time. As of this morning, release candidate 2
should be available on Maven Central with the coordinates
“org.robolectric:robolectric:3.0-rc2″.

## New Features

* Support for KitKat (API 19)
* Support for Lollipop (API 21)
* Out of the box support for Gradle / Android Studio
* Support for add-on shadow modules

The work we did to support Lollipop was extensive and should put us in a
better position to support newer versions of Android as they are released.

## Upgrading from 2.4

Since there have been backwards incompatible changes from 2.4, we’ve created
a wiki page detailing some of the major changes. Most of the changes involve
methods moving to a different class or methods being renamed. Very few (if any)
methods had their semantics changed.

## Reporting Bugs

If you come across a bugs or have any questions, feel free to ask on the
mailing list robolectric@googlegroups.com or file an issue on the issue
tracker. If you do open an issue, please include information about how you
are running your tests (Gradle / Maven, etc).

## Acknowledgements

I want to personally thank the contributors that helped do a lot of the heavy
lifting in this release (in no particular order): Ryan Spore, Aaron VonderHarr,
Jonathan Gerrish and Fr. Jeremy Kreig.
