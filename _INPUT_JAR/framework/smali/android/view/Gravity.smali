.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final ARRANGE_UPPER_SIDE_INPUT_METHOD_MASK:I = -0x20000000

.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final BOTTOM_ARRANGE_UPPER_SIDE_INPUT_METHOD:I = -0x80000000

.field public static final CENTER:I = 0x11

.field public static final CENTER_ARRANGE_UPPER_SIDE_INPUT_METHOD:I = 0x20000000

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final FULL_ARRANGE_UPPER_SIDE_INPUT_METHOD:I = 0x40000000

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 12
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x8

    .line 219
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_110

    .line 255
    :pswitch_9
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 256
    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 262
    :cond_13
    :goto_13
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_11e

    .line 281
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_12c

    .line 317
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 318
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 321
    :cond_28
    :goto_28
    return-void

    .line 221
    :pswitch_29
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 223
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 224
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_13

    .line 226
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_4a

    .line 227
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 229
    :cond_4a
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_13

    .line 230
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_13

    .line 235
    :pswitch_55
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 236
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 237
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_13

    .line 239
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_13

    .line 240
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_13

    .line 245
    :pswitch_6e
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 246
    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 247
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_13

    .line 249
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_13

    .line 250
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_13

    .line 265
    :sswitch_87
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 266
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_28

    .line 269
    :sswitch_9a
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 270
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_28

    .line 274
    :sswitch_a4
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 275
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_28

    .line 283
    :sswitch_af
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 285
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 286
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_28

    .line 288
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_d0

    .line 289
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 291
    :cond_d0
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_28

    .line 292
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_28

    .line 297
    :sswitch_dc
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 298
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 299
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_28

    .line 301
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_28

    .line 302
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_28

    .line 307
    :sswitch_f6
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 309
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_28

    .line 311
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_28

    .line 312
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_28

    .line 219
    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_29
        :pswitch_9
        :pswitch_55
        :pswitch_9
        :pswitch_6e
    .end packed-switch

    .line 262
    :sswitch_data_11e
    .sparse-switch
        -0x80000000 -> :sswitch_9a
        0x20000000 -> :sswitch_87
        0x40000000 -> :sswitch_a4
    .end sparse-switch

    .line 281
    :sswitch_data_12c
    .sparse-switch
        0x0 -> :sswitch_af
        0x20 -> :sswitch_dc
        0x40 -> :sswitch_f6
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 15
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "layoutDirection"    # I

    .prologue
    .line 473
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 474
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 475
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 170
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 171
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 13
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    .line 193
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 194
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZZZFF)V
    .registers 17
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "xAdj"    # I
    .param p6, "yAdj"    # I
    .param p7, "outRect"    # Landroid/graphics/Rect;
    .param p8, "typeBase"    # Z
    .param p9, "isFloating"    # Z
    .param p10, "attached"    # Z
    .param p11, "hScale"    # F
    .param p12, "vScale"    # F

    .prologue
    .line 328
    if-eqz p8, :cond_21

    if-nez p9, :cond_21

    .line 329
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 330
    iget v0, p7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 331
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 332
    iget v0, p7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 443
    :cond_20
    :goto_20
    return-void

    .line 336
    :cond_21
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_1be

    .line 373
    :pswitch_26
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 374
    iget v0, p7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 378
    :cond_3b
    :goto_3b
    if-nez p10, :cond_48

    .line 379
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_48

    .line 380
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_1cc

    .line 399
    :cond_48
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_1da

    .line 438
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    int-to-float v1, v1

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 440
    iget v0, p7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto :goto_20

    .line 338
    :pswitch_66
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, p11

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p5

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 340
    iget v0, p7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 341
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 343
    iget v0, p7, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_93

    .line 344
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 346
    :cond_93
    iget v0, p7, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3b

    .line 347
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    goto :goto_3b

    .line 352
    :pswitch_9e
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 353
    iget v0, p7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 354
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 356
    iget v0, p7, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3b

    .line 357
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3b

    .line 362
    :pswitch_c1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p5

    int-to-float v1, v1

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 363
    iget v0, p7, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    int-to-float v1, p1

    mul-float/2addr v1, p11

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 364
    iget v0, p7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 365
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 367
    iget v0, p7, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_3b

    .line 368
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3b

    .line 383
    :sswitch_f5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 384
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_20

    .line 387
    :sswitch_109
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 388
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_20

    .line 392
    :sswitch_114
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 393
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_20

    .line 401
    :sswitch_11f
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float v1, v1, p12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    int-to-float v1, v1

    mul-float v1, v1, p12

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 404
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 405
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_20

    .line 407
    iget v0, p7, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_154

    .line 408
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 410
    :cond_154
    iget v0, p7, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_20

    .line 411
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_20

    .line 416
    :sswitch_160
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    int-to-float v1, v1

    mul-float v1, v1, p12

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 418
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 419
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_20

    .line 421
    iget v0, p7, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_20

    .line 422
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_20

    .line 427
    :sswitch_187
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, p6

    int-to-float v1, v1

    mul-float v1, v1, p12

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 428
    iget v0, p7, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float v1, v1, p12

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 429
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 430
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_20

    .line 432
    iget v0, p7, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_20

    .line 433
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    goto/16 :goto_20

    .line 336
    nop

    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_66
        :pswitch_26
        :pswitch_9e
        :pswitch_26
        :pswitch_c1
    .end packed-switch

    .line 380
    :sswitch_data_1cc
    .sparse-switch
        -0x80000000 -> :sswitch_109
        0x20000000 -> :sswitch_f5
        0x40000000 -> :sswitch_114
    .end sparse-switch

    .line 399
    :sswitch_data_1da
    .sparse-switch
        0x0 -> :sswitch_11f
        0x20 -> :sswitch_160
        0x40 -> :sswitch_187
    .end sparse-switch
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;

    .prologue
    .line 494
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_33

    .line 495
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_f

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 496
    :cond_f
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_19

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 512
    :cond_19
    :goto_19
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6e

    .line 513
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_28

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 514
    :cond_28
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_32

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 529
    :cond_32
    :goto_32
    return-void

    .line 498
    :cond_33
    const/4 v0, 0x0

    .line 499
    .local v0, "off":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_56

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 501
    :cond_40
    :goto_40
    if-eqz v0, :cond_19

    .line 502
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_63

    .line 503
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 504
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_19

    .line 500
    :cond_56
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_40

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    goto :goto_40

    .line 506
    :cond_63
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 507
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_19

    .line 516
    .end local v0    # "off":I
    :cond_6e
    const/4 v0, 0x0

    .line 517
    .restart local v0    # "off":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_91

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 519
    :cond_7b
    :goto_7b
    if-eqz v0, :cond_32

    .line 520
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_9e

    .line 521
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 522
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_32

    .line 518
    :cond_91
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_7b

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    goto :goto_7b

    .line 524
    :cond_9e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 525
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_32
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 552
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 553
    .local v0, "absGravity":I
    invoke-static {v0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 554
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .registers 7
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v4, 0x800005

    const v3, 0x800003

    const/4 v2, 0x1

    .line 588
    move v0, p0

    .line 590
    .local v0, "result":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_1d

    .line 591
    and-int v1, v0, v3

    if-ne v1, v3, :cond_21

    .line 593
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 594
    if-ne p1, v2, :cond_1e

    .line 596
    or-int/lit8 v0, v0, 0x5

    .line 614
    :cond_19
    :goto_19
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 616
    :cond_1d
    return v0

    .line 599
    :cond_1e
    or-int/lit8 v0, v0, 0x3

    goto :goto_19

    .line 601
    :cond_21
    and-int v1, v0, v4

    if-ne v1, v4, :cond_19

    .line 603
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 604
    if-ne p1, v2, :cond_2e

    .line 606
    or-int/lit8 v0, v0, 0x3

    goto :goto_19

    .line 609
    :cond_2e
    or-int/lit8 v0, v0, 0x5

    goto :goto_19
.end method

.method public static isHorizontal(I)Z
    .registers 2
    .param p0, "gravity"    # I

    .prologue
    .line 573
    if-lez p0, :cond_a

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVertical(I)Z
    .registers 2
    .param p0, "gravity"    # I

    .prologue
    .line 563
    if-lez p0, :cond_8

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
