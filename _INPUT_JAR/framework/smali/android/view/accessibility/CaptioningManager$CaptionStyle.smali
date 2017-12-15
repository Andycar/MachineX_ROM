.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final COLOR_NONE_OPAQUE:I = 0xff

.field private static final COLOR_UNSPECIFIED:I = 0x1ff

.field public static final DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private final mHasBackgroundColor:Z

.field private final mHasEdgeColor:Z

.field private final mHasEdgeType:Z

.field private final mHasForegroundColor:Z

.field private final mHasWindowColor:Z

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/16 v14, 0x1ff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x1000000

    .line 471
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v1, -0x1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 473
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v9, -0x1

    move v8, v2

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 475
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v1, -0x100

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 477
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v8, -0x100

    const v9, -0xffff01

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 479
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v10, -0x1

    move v8, v14

    move v9, v14

    move v11, v14

    move v12, v14

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 484
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 488
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 489
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 490
    return-void
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .registers 13
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeType"    # I
    .param p4, "edgeColor"    # I
    .param p5, "windowColor"    # I
    .param p6, "rawTypeface"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/high16 v4, -0x1000000

    const/16 v5, 0x1ff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    if-eq p1, v5, :cond_43

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    .line 345
    if-eq p2, v5, :cond_45

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    .line 346
    if-eq p3, v3, :cond_47

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    .line 347
    if-eq p4, v5, :cond_49

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    .line 348
    if-eq p5, v5, :cond_4b

    :goto_20
    iput-boolean v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    .line 352
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    if-eqz v0, :cond_4d

    .end local p1    # "foregroundColor":I
    :goto_26
    iput p1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 353
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    if-eqz v0, :cond_4f

    .end local p2    # "backgroundColor":I
    :goto_2c
    iput p2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 354
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    if-eqz v0, :cond_51

    .end local p3    # "edgeType":I
    :goto_32
    iput p3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 355
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    if-eqz v0, :cond_53

    .end local p4    # "edgeColor":I
    :goto_38
    iput p4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 356
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    if-eqz v0, :cond_55

    .end local p5    # "windowColor":I
    :goto_3e
    iput p5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 358
    iput-object p6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 359
    return-void

    .restart local p1    # "foregroundColor":I
    .restart local p2    # "backgroundColor":I
    .restart local p3    # "edgeType":I
    .restart local p4    # "edgeColor":I
    .restart local p5    # "windowColor":I
    :cond_43
    move v0, v2

    .line 344
    goto :goto_d

    :cond_45
    move v0, v2

    .line 345
    goto :goto_12

    :cond_47
    move v0, v2

    .line 346
    goto :goto_17

    :cond_49
    move v0, v2

    .line 347
    goto :goto_1c

    :cond_4b
    move v1, v2

    .line 348
    goto :goto_20

    :cond_4d
    move p1, v3

    .line 352
    goto :goto_26

    .end local p1    # "foregroundColor":I
    :cond_4f
    move p2, v4

    .line 353
    goto :goto_2c

    .end local p2    # "backgroundColor":I
    :cond_51
    move p3, v2

    .line 354
    goto :goto_32

    .end local p3    # "edgeType":I
    :cond_53
    move p4, v4

    .line 355
    goto :goto_38

    .line 356
    .end local p4    # "edgeColor":I
    :cond_55
    const/16 p5, 0xff

    goto :goto_3e
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 449
    sget-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 450
    .local v7, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string v0, "accessibility_captioning_foreground_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 452
    .local v1, "foregroundColor":I
    const-string v0, "accessibility_captioning_background_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 454
    .local v2, "backgroundColor":I
    const-string v0, "accessibility_captioning_edge_type"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 456
    .local v3, "edgeType":I
    const-string v0, "accessibility_captioning_edge_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 458
    .local v4, "edgeColor":I
    const-string v0, "accessibility_captioning_window_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 461
    .local v5, "windowColor":I
    const-string v0, "accessibility_captioning_typeface"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "rawTypeface":Ljava/lang/String;
    if-nez v6, :cond_34

    .line 463
    iget-object v6, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 466
    :cond_34
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 9
    .param p1, "overlay"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_34

    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 373
    .local v1, "newForegroundColor":I
    :goto_8
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v2, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 375
    .local v2, "newBackgroundColor":I
    :goto_10
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget v3, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 377
    .local v3, "newEdgeType":I
    :goto_18
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v4, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 379
    .local v4, "newEdgeColor":I
    :goto_20
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_40

    iget v5, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 381
    .local v5, "newWindowColor":I
    :goto_28
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v6, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 383
    .local v6, "newRawTypeface":Ljava/lang/String;
    :goto_2e
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v0

    .line 371
    .end local v1    # "newForegroundColor":I
    .end local v2    # "newBackgroundColor":I
    .end local v3    # "newEdgeType":I
    .end local v4    # "newEdgeColor":I
    .end local v5    # "newWindowColor":I
    .end local v6    # "newRawTypeface":Ljava/lang/String;
    :cond_34
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_8

    .line 373
    .restart local v1    # "newForegroundColor":I
    :cond_37
    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_10

    .line 375
    .restart local v2    # "newBackgroundColor":I
    :cond_3a
    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_18

    .line 377
    .restart local v3    # "newEdgeType":I
    :cond_3d
    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_20

    .line 379
    .restart local v4    # "newEdgeColor":I
    :cond_40
    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_28

    .line 381
    .restart local v5    # "newWindowColor":I
    :cond_43
    iget-object v6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    goto :goto_2e
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 439
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 441
    :cond_15
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    return v0
.end method

.method public hasEdgeColor()Z
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    return v0
.end method

.method public hasEdgeType()Z
    .registers 2

    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    return v0
.end method

.method public hasForegroundColor()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    return v0
.end method

.method public hasWindowColor()Z
    .registers 2

    .prologue
    .line 429
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    return v0
.end method
