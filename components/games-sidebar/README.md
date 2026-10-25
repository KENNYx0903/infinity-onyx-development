# Games, FPS and sidebar

Integration references cover game preset persistence across menu close and background/foreground, restoration after leaving a game, FPS toggle/counter hooks, and sidebar global/category/app-membership gating. Apply the logic in the matching GameSpace and SystemUI implementation; these scripts are not generic performance configuration.

Check every exit route and observer update. A static menu can legitimately report a static frame rate; do not force synthetic frame production to make a counter move. Keep game/video panel container styling consistent with the accepted fixed container layout and preserve disabled customization controls.
