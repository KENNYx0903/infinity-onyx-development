# Blur materials and controls

Three modes: 1 stock Android path; 2 customizable core Quick Settings/bouncer blur; 3 adds notification, volume, fingerprint and outer QSB effects. `lunatik_blur_radius` and `lunatik_blur_darkness` are System settings; `disable_window_blurs` is Global. The accepted reference defaults are mode 3, radius 60 px and darkness 43%.

NotificationGlass manages native drawable material, including long-press content/menu transition timing. QsbGlass submits clipped blur regions using a SurfaceControl effect layer and reattaches it to the current root. Both must handle root surface replacement: a surviving ViewRoot object does not imply a surviving SurfaceControl. Preserve visibility/alpha, predraw registration and cleanup. The launcher outer-layer transparency slider is unavailable only in mode 3, with an explanation.

Some native volume/FOD hooks are in the shared notification material helper and integration scripts. Experimental blur of themed icons and launcher popup menus is excluded. See final SystemUI/Launcher deltas for call sites.
