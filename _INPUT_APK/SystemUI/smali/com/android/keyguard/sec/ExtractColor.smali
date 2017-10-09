.class public Lcom/android/keyguard/sec/ExtractColor;
.super Ljava/lang/Object;
.source "ExtractColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 40
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 15
    const-wide/16 v34, 0x0

    .line 16
    .local v34, "sumR":J
    const-wide/16 v32, 0x0

    .line 17
    .local v32, "sumG":J
    const-wide/16 v30, 0x0

    .line 18
    .local v30, "sumB":J
    const-wide/16 v26, 0x0

    .line 20
    .local v26, "sampleCount":J
    const-wide/16 v24, 0x0

    .line 21
    .local v24, "lowestR":J
    const-wide/16 v22, 0x0

    .line 22
    .local v22, "lowestG":J
    const-wide/16 v20, 0x0

    .line 24
    .local v20, "lowestB":J
    const-wide/16 v10, 0x0

    .line 25
    .local v10, "curR":J
    const-wide/16 v8, 0x0

    .line 26
    .local v8, "curG":J
    const-wide/16 v6, 0x0

    .line 29
    .local v6, "curB":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 30
    .local v29, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 32
    .local v18, "h":I
    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    .line 33
    .local v28, "step":I
    :goto_0
    if-gtz v28, :cond_0

    .line 34
    const/16 v28, 0x1

    .line 35
    :cond_0
    const/16 v36, 0x0

    .local v36, "x":I
    :goto_1
    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 36
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    .local v37, "y":I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_8

    .line 37
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 38
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v10, v0

    .line 39
    add-long v34, v34, v10

    .line 40
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v8, v0

    .line 41
    add-long v32, v32, v8

    .line 42
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v6, v0

    .line 43
    add-long v30, v30, v6

    .line 44
    const-wide/16 v38, 0x1

    add-long v26, v26, v38

    .line 46
    cmp-long v38, v24, v10

    if-gtz v38, :cond_1

    const-wide/16 v38, 0x0

    cmp-long v38, v24, v38

    if-nez v38, :cond_2

    .line 47
    :cond_1
    move-wide/from16 v24, v10

    .line 48
    :cond_2
    cmp-long v38, v22, v8

    if-gtz v38, :cond_3

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-nez v38, :cond_4

    .line 49
    :cond_3
    move-wide/from16 v22, v8

    .line 50
    :cond_4
    cmp-long v38, v20, v6

    if-gtz v38, :cond_5

    const-wide/16 v38, 0x0

    cmp-long v38, v20, v38

    if-nez v38, :cond_6

    .line 51
    :cond_5
    move-wide/from16 v20, v6

    .line 36
    :cond_6
    add-int v37, v37, v28

    goto :goto_2

    .line 32
    .end local v4    # "color":I
    .end local v28    # "step":I
    .end local v36    # "x":I
    .end local v37    # "y":I
    :cond_7
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto :goto_0

    .line 35
    .restart local v28    # "step":I
    .restart local v36    # "x":I
    .restart local v37    # "y":I
    :cond_8
    add-int v36, v36, v28

    goto :goto_1

    .line 55
    .end local v37    # "y":I
    :cond_9
    const/4 v13, 0x0

    .local v13, "everageR":I
    const/4 v5, 0x0

    .local v5, "everageB":I
    const/4 v12, 0x0

    .line 56
    .local v12, "everageG":I
    const/4 v14, 0x0

    .local v14, "fianlR":I
    const/16 v16, 0x0

    .local v16, "finalG":I
    const/4 v15, 0x0

    .line 58
    .local v15, "finalB":I
    div-long v38, v34, v26

    move-wide/from16 v0, v38

    long-to-int v13, v0

    .line 59
    div-long v38, v32, v26

    move-wide/from16 v0, v38

    long-to-int v12, v0

    .line 60
    div-long v38, v30, v26

    move-wide/from16 v0, v38

    long-to-int v5, v0

    .line 62
    int-to-long v0, v13

    move-wide/from16 v38, v0

    cmp-long v38, v38, v24

    if-lez v38, :cond_a

    .line 63
    int-to-long v0, v13

    move-wide/from16 v38, v0

    sub-long v38, v38, v24

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    .line 64
    .local v17, "gap":I
    div-int/lit8 v38, v17, 0x2

    sub-int v14, v13, v38

    .line 67
    .end local v17    # "gap":I
    :goto_3
    int-to-long v0, v12

    move-wide/from16 v38, v0

    cmp-long v38, v38, v22

    if-lez v38, :cond_b

    .line 68
    int-to-long v0, v12

    move-wide/from16 v38, v0

    sub-long v38, v38, v22

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    .line 69
    .restart local v17    # "gap":I
    div-int/lit8 v38, v17, 0x2

    sub-int v16, v12, v38

    .line 72
    .end local v17    # "gap":I
    :goto_4
    int-to-long v0, v5

    move-wide/from16 v38, v0

    cmp-long v38, v38, v20

    if-lez v38, :cond_c

    .line 73
    int-to-long v0, v5

    move-wide/from16 v38, v0

    sub-long v38, v38, v20

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    .line 74
    .restart local v17    # "gap":I
    div-int/lit8 v38, v17, 0x2

    sub-int v15, v5, v38

    .line 78
    .end local v17    # "gap":I
    :goto_5
    const/16 v38, 0xff

    move/from16 v0, v38

    move/from16 v1, v16

    invoke-static {v0, v14, v1, v15}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 86
    .end local v5    # "everageB":I
    .end local v12    # "everageG":I
    .end local v13    # "everageR":I
    .end local v14    # "fianlR":I
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v18    # "h":I
    .end local v28    # "step":I
    .end local v29    # "w":I
    .end local v36    # "x":I
    :goto_6
    return v19

    .line 66
    .restart local v5    # "everageB":I
    .restart local v12    # "everageG":I
    .restart local v13    # "everageR":I
    .restart local v14    # "fianlR":I
    .restart local v15    # "finalB":I
    .restart local v16    # "finalG":I
    .restart local v18    # "h":I
    .restart local v28    # "step":I
    .restart local v29    # "w":I
    .restart local v36    # "x":I
    :cond_a
    move v14, v13

    goto :goto_3

    .line 71
    :cond_b
    move/from16 v16, v12

    goto :goto_4

    .line 76
    :cond_c
    move v15, v5

    goto :goto_5

    .line 83
    .end local v5    # "everageB":I
    .end local v12    # "everageG":I
    .end local v13    # "everageR":I
    .end local v14    # "fianlR":I
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v18    # "h":I
    .end local v28    # "step":I
    .end local v29    # "w":I
    .end local v36    # "x":I
    :catch_0
    move-exception v38

    .line 86
    const/16 v19, 0x0

    goto :goto_6
.end method
