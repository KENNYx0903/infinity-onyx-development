from pathlib import Path
import re
r=Path('work/gamespace-redesign/decoded/smali_classes2/com/ireddragonicy/gamespace/gamebar')
p=r/'PanelThemeKt.smali';s=p.read_text();start=s.index('.method public static final chamferShape-YgX7TsA(FF)');end=s.index('.end method',start)+len('.end method');s=s[:start]+'''.method public static final chamferShape-YgX7TsA(FF)Landroidx/compose/ui/graphics/Shape;
    .locals 1
    const/high16 v0, 0x41000000    # 8.0f
    add-float/2addr p0, v0
    const/high16 v0, 0x41600000    # 14.0f
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F
    move-result p0
    invoke-static {p0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;
    move-result-object v0
    return-object v0
.end method'''+s[end:]
s=s.replace('0xff1a1a2eL','0xff11191dL').replace('0xff16162bL','0xff18242aL').replace('0xff222244L','0xff25343cL')
p.write_text(s)
p=r/'PanelTheme.smali';s=p.read_text().replace('0xff07090fL','0xff11191dL').replace('0xff10141dL','0xff18242aL');p.write_text(s)
p=r/'PanelQuickSettingsKt.smali';s=p.read_text();s=s.replace('const/4 v1, 0x4\n\n    .line 304\n    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->chunked','const/4 v1, 0x3\n\n    .line 304\n    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->chunked')
s=s.replace('const/16 v9, 0x1a\n\n    int-to-float v9, v9','const/16 v9, 0x30\n\n    int-to-float v9, v9')
# Tile icon 18->22, labels 8sp->11sp and line height9->14, max2 lines.
a=s.index('.method public static final TileButton(');b=s.index('.end method',a);part=s[a:b]
part=part.replace('const/16 v14, 0x8','const/16 v14, 0xb').replace('const/16 v2, 0x9','const/16 v2, 0xe').replace('const/16 v23, 0x1','const/16 v23, 0x2')
s=s[:a]+part+s[b:];p.write_text(s)
