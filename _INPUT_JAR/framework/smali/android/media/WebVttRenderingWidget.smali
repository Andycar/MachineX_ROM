.class Landroid/media/WebVttRenderingWidget;
.super Landroid/view/ViewGroup;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttRenderingWidget$SpanLayout;,
        Landroid/media/WebVttRenderingWidget$CueLayout;,
        Landroid/media/WebVttRenderingWidget$RegionLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;

.field private final mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1126
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1171
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1135
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    .line 1139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    .line 1523
    new-instance v0, Landroid/media/WebVttRenderingWidget$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 1174
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1176
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1177
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1178
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1179
    return-void
.end method

.method static synthetic access$100(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 2
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;

    .prologue
    .line 1123
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 3
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;
    .param p1, "x1"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "x2"    # F

    .prologue
    .line 1123
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/WebVttRenderingWidget;)F
    .registers 2
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;

    .prologue
    .line 1123
    iget v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return v0
.end method

.method static synthetic access$400(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 1123
    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v0

    return v0
.end method

.method private calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .registers 8
    .param p1, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .prologue
    const/16 v4, 0x64

    .line 1488
    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v1

    .line 1489
    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v2, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 1490
    .local v2, "linePosition":Ljava/lang/Integer;
    iget-boolean v3, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1491
    .local v3, "snapToLines":Z
    if-nez v2, :cond_1e

    const/4 v0, 0x1

    .line 1493
    .local v0, "autoPosition":Z
    :goto_d
    if-nez v3, :cond_20

    if-nez v0, :cond_20

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_20

    .line 1504
    :cond_1d
    :goto_1d
    return v4

    .line 1491
    .end local v0    # "autoPosition":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_d

    .line 1496
    .restart local v0    # "autoPosition":Z
    :cond_20
    if-nez v0, :cond_27

    .line 1498
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1d

    .line 1499
    :cond_27
    if-eqz v3, :cond_1d

    .line 1504
    # getter for: Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->access$000(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    goto :goto_1d
.end method

.method private layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .registers 23
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .prologue
    .line 1416
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v4

    .line 1417
    .local v4, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getLayoutDirection()I

    move-result v6

    .line 1418
    .local v6, "direction":I
    iget v0, v4, Landroid/media/TextTrackCue;->mAlignment:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v3

    .line 1419
    .local v3, "absAlignment":I
    iget-boolean v5, v4, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1421
    .local v5, "cueSnapToLines":Z
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredWidth()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v12, v17, p1

    .line 1425
    .local v12, "size":I
    packed-switch v3, :pswitch_data_9c

    .line 1434
    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    move/from16 v17, v0

    div-int/lit8 v18, v12, 0x2

    sub-int v15, v17, v18

    .line 1439
    .local v15, "xPosition":I
    :goto_27
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_2f

    .line 1440
    rsub-int/lit8 v15, v15, 0x64

    .line 1446
    :cond_2f
    if-eqz v5, :cond_63

    .line 1447
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingLeft()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v9, v17, p1

    .line 1448
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingRight()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v10, v17, p1

    .line 1449
    .local v10, "paddingRight":I
    if-ge v15, v9, :cond_4b

    add-int v17, v15, v12

    move/from16 v0, v17

    if-le v0, v9, :cond_4b

    .line 1450
    add-int/2addr v15, v9

    .line 1451
    sub-int/2addr v12, v9

    .line 1453
    :cond_4b
    rsub-int/lit8 v17, v10, 0x64

    move/from16 v0, v17

    int-to-float v11, v0

    .line 1454
    .local v11, "rightEdge":F
    int-to-float v0, v15

    move/from16 v17, v0

    cmpg-float v17, v17, v11

    if-gez v17, :cond_63

    add-int v17, v15, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v17, v11

    if-lez v17, :cond_63

    .line 1455
    sub-int/2addr v12, v10

    .line 1460
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "rightEdge":F
    :cond_63
    mul-int v17, v15, p1

    div-int/lit8 v8, v17, 0x64

    .line 1461
    .local v8, "left":I
    mul-int v17, v12, p1

    div-int/lit8 v14, v17, 0x64

    .line 1464
    .local v14, "width":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v16

    .line 1467
    .local v16, "yPosition":I
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredHeight()I

    move-result v7

    .line 1469
    .local v7, "height":I
    if-gez v16, :cond_95

    .line 1471
    mul-int v17, v16, v7

    add-int v13, p2, v17

    .line 1477
    .local v13, "top":I
    :goto_7d
    add-int v17, v8, v14

    add-int v18, v13, v7

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v8, v13, v1, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->layout(IIII)V

    .line 1478
    return-void

    .line 1427
    .end local v7    # "height":I
    .end local v8    # "left":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "xPosition":I
    .end local v16    # "yPosition":I
    :pswitch_8b
    iget v15, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1428
    .restart local v15    # "xPosition":I
    goto :goto_27

    .line 1430
    .end local v15    # "xPosition":I
    :pswitch_8e
    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    move/from16 v17, v0

    sub-int v15, v17, v12

    .line 1431
    .restart local v15    # "xPosition":I
    goto :goto_27

    .line 1473
    .restart local v7    # "height":I
    .restart local v8    # "left":I
    .restart local v14    # "width":I
    .restart local v16    # "yPosition":I
    :cond_95
    sub-int v17, p2, v7

    mul-int v17, v17, v16

    div-int/lit8 v13, v17, 0x64

    .restart local v13    # "top":I
    goto :goto_7d

    .line 1425
    :pswitch_data_9c
    .packed-switch 0xcb
        :pswitch_8b
        :pswitch_8e
    .end packed-switch
.end method

.method private layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .registers 13
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "regionBox"    # Landroid/media/WebVttRenderingWidget$RegionLayout;

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    .line 1398
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    move-result-object v1

    .line 1399
    .local v1, "region":Landroid/media/TextTrackRegion;
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredHeight()I

    move-result v2

    .line 1400
    .local v2, "regionHeight":I
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredWidth()I

    move-result v3

    .line 1403
    .local v3, "regionWidth":I
    iget v5, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 1404
    .local v5, "x":F
    iget v6, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 1405
    .local v6, "y":F
    sub-int v7, p1, v3

    int-to-float v7, v7

    mul-float/2addr v7, v5

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 1406
    .local v0, "left":I
    sub-int v7, p2, v2

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 1408
    .local v4, "top":I
    add-int v7, v0, v3

    add-int v8, v4, v2

    invoke-virtual {p3, v0, v4, v7, v8}, Landroid/media/WebVttRenderingWidget$RegionLayout;->layout(IIII)V

    .line 1409
    return-void
.end method

.method private manageChangeListener()V
    .registers 6

    .prologue
    .line 1224
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getVisibility()I

    move-result v3

    if-nez v3, :cond_37

    const/4 v2, 0x1

    .line 1225
    .local v2, "needsListener":Z
    :goto_d
    iget-boolean v3, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eq v3, v2, :cond_36

    .line 1226
    iput-boolean v2, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    .line 1228
    if-eqz v2, :cond_39

    .line 1229
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1231
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 1232
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const v4, 0x3d5a511a    # 0.0533f

    mul-float v1, v3, v4

    .line 1233
    .local v1, "fontSize":F
    invoke-direct {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1238
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v1    # "fontSize":F
    :cond_36
    :goto_36
    return-void

    .line 1224
    .end local v2    # "needsListener":Z
    :cond_37
    const/4 v2, 0x0

    goto :goto_d

    .line 1235
    .restart local v2    # "needsListener":Z
    :cond_39
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_36
.end method

.method private prepForPrune()V
    .registers 7

    .prologue
    .line 1340
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1341
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v4, :cond_17

    .line 1342
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1343
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    .line 1341
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1346
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_17
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1347
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2e

    .line 1348
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1349
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    .line 1347
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1351
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_2e
    return-void
.end method

.method private prune()V
    .registers 7

    .prologue
    .line 1313
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1314
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v4, :cond_26

    .line 1315
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1316
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1317
    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1318
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1319
    add-int/lit8 v4, v4, -0x1

    .line 1320
    add-int/lit8 v2, v2, -0x1

    .line 1314
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1324
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_26
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1325
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_4c

    .line 1326
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1327
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v5

    if-nez v5, :cond_49

    .line 1328
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1329
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1330
    add-int/lit8 v1, v1, -0x1

    .line 1331
    add-int/lit8 v2, v2, -0x1

    .line 1325
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1334
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_4c
    return-void
.end method

.method private static resolveCueAlignment(II)I
    .registers 4
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    .prologue
    const/16 v1, 0xcc

    const/16 v0, 0xcb

    .line 1512
    packed-switch p1, :pswitch_data_14

    move v0, p1

    .line 1520
    :cond_8
    :goto_8
    return v0

    .line 1514
    :pswitch_9
    if-eqz p0, :cond_8

    move v0, v1

    goto :goto_8

    .line 1517
    :pswitch_d
    if-nez p0, :cond_11

    :goto_f
    move v0, v1

    goto :goto_8

    :cond_11
    move v1, v0

    goto :goto_f

    .line 1512
    nop

    :pswitch_data_14
    .packed-switch 0xc9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method private setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 9
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    .line 1292
    sget-object v5, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    .line 1293
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1294
    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1296
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1297
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_21

    .line 1298
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1299
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1302
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_21
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1303
    .local v4, "regionCount":I
    const/4 v2, 0x0

    :goto_28
    if-ge v2, v4, :cond_38

    .line 1304
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1305
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1303
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1307
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_38
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1192
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1194
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1195
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1199
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1201
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1202
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1372
    sub-int v6, p4, p2

    .line 1373
    .local v6, "viewportWidth":I
    sub-int v5, p5, p3

    .line 1375
    .local v5, "viewportHeight":I
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v8

    const v9, 0x3d5a511a    # 0.0533f

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1378
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1379
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v4, :cond_2c

    .line 1380
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1381
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {p0, v6, v5, v3}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    .line 1379
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1384
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_2c
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1385
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_43

    .line 1386
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1387
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {p0, v6, v5, v0}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    .line 1385
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1389
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_43
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1355
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1357
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1358
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v4, :cond_1a

    .line 1359
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1360
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    .line 1358
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1363
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_1a
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1364
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_31

    .line 1365
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1366
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    .line 1364
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1368
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_31
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v12, -0x2

    .line 1241
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1242
    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1243
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v5, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1245
    .local v5, "fontSize":F
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    .line 1248
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1249
    .local v2, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_11
    if-ge v7, v2, :cond_58

    .line 1250
    invoke-virtual {p1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/TextTrackCue;

    .line 1251
    .local v3, "cue":Landroid/media/TextTrackCue;
    iget-object v8, v3, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1252
    .local v8, "region":Landroid/media/TextTrackRegion;
    if-eqz v8, :cond_3a

    .line 1253
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1254
    .local v9, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    if-nez v9, :cond_34

    .line 1255
    new-instance v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {v9, v1, v8, v0, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1256
    .restart local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    invoke-virtual {p0, v9, v12, v12}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1259
    :cond_34
    invoke-virtual {v9, v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    .line 1249
    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :goto_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 1261
    :cond_3a
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1262
    .local v4, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    if-nez v4, :cond_51

    .line 1263
    new-instance v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {v4, v1, v3, v0, v5}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1264
    .restart local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    invoke-virtual {p0, v4, v12, v12}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1267
    :cond_51
    invoke-virtual {v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1268
    invoke-virtual {v4, v7}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    goto :goto_37

    .line 1272
    .end local v3    # "cue":Landroid/media/TextTrackCue;
    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    .end local v8    # "region":Landroid/media/TextTrackRegion;
    :cond_58
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    .line 1275
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getWidth()I

    move-result v10

    .line 1276
    .local v10, "width":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v6

    .line 1280
    .local v6, "height":I
    if-lez v10, :cond_74

    if-lez v6, :cond_74

    .line 1281
    invoke-virtual {p0, v10, v6}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    .line 1286
    :goto_6a
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v11, :cond_73

    .line 1287
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v11, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1289
    :cond_73
    return-void

    .line 1283
    :cond_74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setActiveCues width : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", height : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .prologue
    .line 1206
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1207
    return-void
.end method

.method public setSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 1183
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1184
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1186
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/WebVttRenderingWidget;->measure(II)V

    .line 1187
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/WebVttRenderingWidget;->layout(IIII)V

    .line 1188
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 1211
    if-eqz p1, :cond_a

    .line 1212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    .line 1217
    :goto_6
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1218
    return-void

    .line 1214
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    goto :goto_6
.end method
