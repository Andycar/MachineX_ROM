.class Landroid/media/ClosedCaptionWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLayout"
.end annotation


# static fields
.field private static final MAX_ROWS:I = 0xf

.field private static final SAFE_AREA_RATIO:F = 0.9f


# instance fields
.field private final mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xf

    const/4 v4, -0x2

    .line 1383
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1380
    new-array v1, v5, [Landroid/media/ClosedCaptionWidget$CCLineBox;

    iput-object v1, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    .line 1384
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLayout;->setGravity(I)V

    .line 1385
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLayout;->setOrientation(I)V

    .line 1386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v5, :cond_2e

    .line 1387
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    new-instance v2, Landroid/media/ClosedCaptionWidget$CCLineBox;

    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 1388
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v4, v4}, Landroid/media/ClosedCaptionWidget$CCLayout;->addView(Landroid/view/View;II)V

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1390
    :cond_2e
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1439
    sub-int v6, p4, p2

    .line 1440
    .local v6, "viewPortWidth":I
    sub-int v5, p5, p3

    .line 1443
    .local v5, "viewPortHeight":I
    mul-int/lit8 v7, v6, 0x3

    mul-int/lit8 v8, v5, 0x4

    if-lt v7, v8, :cond_3f

    .line 1444
    mul-int/lit8 v7, v5, 0x4

    div-int/lit8 v3, v7, 0x3

    .line 1445
    .local v3, "safeWidth":I
    move v2, v5

    .line 1450
    .local v2, "safeHeight":I
    :goto_f
    int-to-float v7, v3

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 1451
    int-to-float v7, v2

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 1452
    sub-int v7, v6, v3

    div-int/lit8 v1, v7, 0x2

    .line 1453
    .local v1, "left":I
    sub-int v7, v5, v2

    div-int/lit8 v4, v7, 0x2

    .line 1455
    .local v4, "top":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    const/16 v7, 0xf

    if-ge v0, v7, :cond_45

    .line 1456
    iget-object v7, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    aget-object v7, v7, v0

    mul-int v8, v2, v0

    div-int/lit8 v8, v8, 0xf

    add-int/2addr v8, v4

    add-int v9, v1, v3

    add-int/lit8 v10, v0, 0x1

    mul-int/2addr v10, v2

    div-int/lit8 v10, v10, 0xf

    add-int/2addr v10, v4

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/media/ClosedCaptionWidget$CCLineBox;->layout(IIII)V

    .line 1455
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1447
    .end local v0    # "i":I
    .end local v1    # "left":I
    .end local v2    # "safeHeight":I
    .end local v3    # "safeWidth":I
    .end local v4    # "top":I
    :cond_3f
    move v3, v6

    .line 1448
    .restart local v3    # "safeWidth":I
    mul-int/lit8 v7, v6, 0x3

    div-int/lit8 v2, v7, 0x4

    .restart local v2    # "safeHeight":I
    goto :goto_f

    .line 1462
    .restart local v0    # "i":I
    .restart local v1    # "left":I
    .restart local v4    # "top":I
    :cond_45
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3f666666    # 0.9f

    .line 1411
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1413
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLayout;->getMeasuredWidth()I

    move-result v5

    .line 1414
    .local v5, "safeWidth":I
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLayout;->getMeasuredHeight()I

    move-result v4

    .line 1417
    .local v4, "safeHeight":I
    mul-int/lit8 v6, v5, 0x3

    mul-int/lit8 v7, v4, 0x4

    if-lt v6, v7, :cond_39

    .line 1418
    mul-int/lit8 v6, v4, 0x4

    div-int/lit8 v5, v6, 0x3

    .line 1422
    :goto_1a
    int-to-float v6, v5

    mul-float/2addr v6, v8

    float-to-int v5, v6

    .line 1423
    int-to-float v6, v4

    mul-float/2addr v6, v8

    float-to-int v4, v6

    .line 1425
    div-int/lit8 v1, v4, 0xf

    .line 1426
    .local v1, "lineHeight":I
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1428
    .local v2, "lineHeightMeasureSpec":I
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1431
    .local v3, "lineWidthMeasureSpec":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    const/16 v6, 0xf

    if-ge v0, v6, :cond_3e

    .line 1432
    iget-object v6, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    aget-object v6, v6, v0

    invoke-virtual {v6, v3, v2}, Landroid/media/ClosedCaptionWidget$CCLineBox;->measure(II)V

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1420
    .end local v0    # "i":I
    .end local v1    # "lineHeight":I
    .end local v2    # "lineHeightMeasureSpec":I
    .end local v3    # "lineWidthMeasureSpec":I
    :cond_39
    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v4, v6, 0x4

    goto :goto_1a

    .line 1434
    .restart local v0    # "i":I
    .restart local v1    # "lineHeight":I
    .restart local v2    # "lineHeightMeasureSpec":I
    .restart local v3    # "lineWidthMeasureSpec":I
    :cond_3e
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 1393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_f

    .line 1394
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1396
    :cond_f
    return-void
.end method

.method update([Landroid/text/SpannableStringBuilder;)V
    .registers 6
    .param p1, "textBuffer"    # [Landroid/text/SpannableStringBuilder;

    .prologue
    .line 1399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_28

    .line 1400
    aget-object v1, p1, v0

    if-eqz v1, :cond_1f

    .line 1401
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1402
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setVisibility(I)V

    .line 1399
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1404
    :cond_1f
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$CCLayout;->mLineBoxes:[Landroid/media/ClosedCaptionWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setVisibility(I)V

    goto :goto_1c

    .line 1407
    :cond_28
    return-void
.end method
