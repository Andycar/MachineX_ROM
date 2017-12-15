.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;III)V
    .registers 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "tabId"    # I
    .param p3, "barId"    # I
    .param p4, "targetId"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 185
    iput v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 198
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103030b

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 213
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab$Slider;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab$Slider;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getTabHeight()I
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method hide()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 242
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v5, v4, :cond_3e

    :cond_b
    move v2, v4

    .line 243
    .local v2, "horiz":Z
    :goto_c
    if-eqz v2, :cond_4b

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v5, :cond_40

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    sub-int v0, v5, v6

    .line 245
    .local v0, "dx":I
    :goto_1c
    if-eqz v2, :cond_4d

    .line 248
    .local v1, "dy":I
    :goto_1e
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-direct {v3, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 249
    .local v3, "trans":Landroid/view/animation/Animation;
    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 250
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 251
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    return-void

    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "horiz":Z
    .end local v3    # "trans":Landroid/view/animation/Animation;
    :cond_3e
    move v2, v1

    .line 242
    goto :goto_c

    .line 243
    .restart local v2    # "horiz":Z
    :cond_40
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    sub-int v0, v5, v6

    goto :goto_1c

    :cond_4b
    move v0, v1

    goto :goto_1c

    .line 245
    .restart local v0    # "dx":I
    :cond_4d
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5d

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_1e

    :cond_5d
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_1e
.end method

.method public hideTarget()V
    .registers 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    return-void
.end method

.method layout(IIIII)V
    .registers 32
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .param p5, "alignment"    # I

    .prologue
    .line 342
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 344
    .local v14, "tabBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 345
    .local v7, "handleWidth":I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 346
    .local v6, "handleHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 347
    .local v16, "targetDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 348
    .local v21, "targetWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 349
    .local v17, "targetHeight":I
    sub-int v11, p3, p1

    .line 350
    .local v11, "parentWidth":I
    sub-int v10, p4, p2

    .line 352
    .local v10, "parentHeight":I
    const v23, 0x3f2aaaab

    int-to-float v0, v11

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v21

    div-int/lit8 v24, v7, 0x2

    add-int v9, v23, v24

    .line 353
    .local v9, "leftTarget":I
    const v23, 0x3eaaaaaa

    int-to-float v0, v11

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v7, 0x2

    sub-int v13, v23, v24

    .line 354
    .local v13, "rightTarget":I
    sub-int v23, v11, v7

    div-int/lit8 v8, v23, 0x2

    .line 355
    .local v8, "left":I
    add-int v12, v8, v7

    .line 357
    .local v12, "right":I
    if-eqz p5, :cond_62

    const/16 v23, 0x1

    move/from16 v0, p5

    move/from16 v1, v23

    if-ne v0, v1, :cond_100

    .line 359
    :cond_62
    sub-int v23, v10, v17

    div-int/lit8 v20, v23, 0x2

    .line 360
    .local v20, "targetTop":I
    add-int v15, v20, v17

    .line 361
    .local v15, "targetBottom":I
    sub-int v23, v10, v6

    div-int/lit8 v22, v23, 0x2

    .line 362
    .local v22, "top":I
    add-int v23, v10, v6

    div-int/lit8 v5, v23, 0x2

    .line 363
    .local v5, "bottom":I
    if-nez p5, :cond_bb

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    rsub-int/lit8 v24, v11, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v9, v21

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v9, v1, v2, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 368
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 394
    .end local v15    # "targetBottom":I
    .end local v20    # "targetTop":I
    :goto_ba
    return-void

    .line 370
    .restart local v15    # "targetBottom":I
    .restart local v20    # "targetTop":I
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sub-int v24, v11, v7

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v11, v11

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v13, v21

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x30

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 374
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto :goto_ba

    .line 378
    .end local v5    # "bottom":I
    .end local v15    # "targetBottom":I
    .end local v20    # "targetTop":I
    .end local v22    # "top":I
    :cond_100
    sub-int v23, v11, v21

    div-int/lit8 v18, v23, 0x2

    .line 379
    .local v18, "targetLeft":I
    add-int v23, v11, v21

    div-int/lit8 v19, v23, 0x2

    .line 380
    .local v19, "targetRight":I
    const v23, 0x3f2aaaab

    int-to-float v0, v10

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    add-int v23, v23, v24

    sub-int v22, v23, v17

    .line 381
    .restart local v22    # "top":I
    const v23, 0x3eaaaaaa

    int-to-float v0, v10

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    sub-int v5, v23, v24

    .line 382
    .restart local v5    # "bottom":I
    const/16 v23, 0x2

    move/from16 v0, p5

    move/from16 v1, v23

    if-ne v0, v1, :cond_173

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    rsub-int/lit8 v24, v10, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v8, v1, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v22, v17

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 386
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_ba

    .line 388
    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sub-int v24, v10, v6

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v8, v1, v12, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v10, v10

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v8, v10, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v5, v17

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v24

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 391
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_ba
.end method

.method public measure()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 408
    return-void
.end method

.method reset(Z)V
    .registers 11
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 298
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 299
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x103030b

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 301
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v5, :cond_2c

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v5, v2, :cond_5b

    .line 304
    .local v2, "horiz":Z
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_68

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v5, :cond_5d

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    sub-int v0, v5, v6

    .line 306
    .local v0, "dx":I
    :goto_3c
    if-eqz v2, :cond_6a

    move v1, v4

    .line 308
    .local v1, "dy":I
    :goto_3f
    if-eqz p1, :cond_85

    .line 309
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-direct {v3, v8, v5, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 310
    .local v3, "trans":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 311
    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 312
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 326
    .end local v3    # "trans":Landroid/view/animation/TranslateAnimation;
    :goto_5a
    return-void

    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "horiz":Z
    :cond_5b
    move v2, v4

    .line 303
    goto :goto_2c

    .line 304
    .restart local v2    # "horiz":Z
    :cond_5d
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    sub-int v0, v5, v6

    goto :goto_3c

    :cond_68
    move v0, v4

    goto :goto_3c

    .line 306
    .restart local v0    # "dx":I
    :cond_6a
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7a

    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_3f

    :cond_7a
    iget v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_3f

    .line 315
    .restart local v1    # "dy":I
    :cond_85
    if-eqz v2, :cond_a1

    .line 316
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 317
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 322
    :goto_91
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 323
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 324
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_5a

    .line 319
    :cond_a1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 320
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_91
.end method

.method setBarBackgroundResource(I)V
    .registers 3
    .param p1, "barId"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 235
    return-void
.end method

.method setHintText(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    return-void
.end method

.method setIcon(I)V
    .registers 3
    .param p1, "iconId"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    return-void
.end method

.method setState(I)V
    .registers 7
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v2, :cond_57

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 274
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_59

    move v1, v2

    :goto_f
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 275
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5b

    .line 276
    new-array v0, v2, [I

    const v1, 0x10100a2

    aput v1, v0, v3

    .line 277
    .local v0, "activeState":[I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 278
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 280
    :cond_31
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 281
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 283
    :cond_46
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103030c

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 287
    .end local v0    # "activeState":[I
    :goto_54
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 288
    return-void

    :cond_57
    move v1, v3

    .line 273
    goto :goto_7

    :cond_59
    move v1, v3

    .line 274
    goto :goto_f

    .line 285
    :cond_5b
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103030b

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_54
.end method

.method setTabBackgroundResource(I)V
    .registers 3
    .param p1, "tabId"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 231
    return-void
.end method

.method setTarget(I)V
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    return-void
.end method

.method show(Z)V
    .registers 9
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 257
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    if-eqz p1, :cond_3d

    .line 261
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_17

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v2, :cond_3e

    .line 262
    .local v2, "horiz":Z
    :cond_17
    :goto_17
    if-eqz v2, :cond_48

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 263
    .local v0, "dx":I
    :goto_23
    if-eqz v2, :cond_4a

    .line 265
    .local v1, "dy":I
    :goto_25
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 266
    .local v3, "trans":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 267
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "horiz":Z
    .end local v3    # "trans":Landroid/view/animation/Animation;
    :cond_3d
    return-void

    :cond_3e
    move v2, v1

    .line 261
    goto :goto_17

    .line 262
    .restart local v2    # "horiz":Z
    :cond_40
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    neg-int v0, v4

    goto :goto_23

    :cond_48
    move v0, v1

    goto :goto_23

    .line 263
    .restart local v0    # "dx":I
    :cond_4a
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_56

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_25

    :cond_56
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    neg-int v1, v4

    goto :goto_25
.end method

.method showTarget()V
    .registers 5

    .prologue
    .line 291
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 292
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 293
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "anim1"    # Landroid/view/animation/Animation;
    .param p2, "anim2"    # Landroid/view/animation/Animation;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 436
    return-void
.end method

.method public updateDrawableStates()V
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 398
    return-void
.end method
