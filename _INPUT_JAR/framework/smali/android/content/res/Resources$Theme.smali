.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private mKey:Ljava/lang/String;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .prologue
    .line 2742
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2752
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    .line 2755
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    .line 2743
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 2744
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    .line 2745
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources$Theme;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 2416
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 2771
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyStyle(IZ)V
    .registers 5
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2435
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    .line 2437
    iput p1, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_29

    const-string v0, "! "

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    .line 2439
    return-void

    .line 2438
    :cond_29
    const-string v0, " "

    goto :goto_1e
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2733
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    .line 2734
    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2738
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2739
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 2740
    return-void
.end method

.method public getAllAttributes()[I
    .registers 3

    .prologue
    .line 2698
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method getAppliedStyleResId()I
    .registers 2

    .prologue
    .line 2763
    iget v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2722
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2767
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method getNativeTheme()J
    .registers 3

    .prologue
    .line 2759
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    return-wide v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 2707
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()[Ljava/lang/String;
    .registers 9
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    .prologue
    .line 2783
    iget-object v6, p0, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2784
    .local v4, "themeData":[Ljava/lang/String;
    array-length v6, v4

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    .line 2788
    .local v5, "themes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v6, v4

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_11
    array-length v6, v5

    if-ge v1, v6, :cond_45

    .line 2789
    aget-object v3, v4, v2

    .line 2790
    .local v3, "theme":Ljava/lang/String;
    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2791
    .local v0, "forced":Z
    if-eqz v0, :cond_3c

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/content/res/Resources$Theme;->getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2d
    aput-object v6, v5, v1

    .line 2794
    add-int/lit8 v7, v1, 0x1

    if-eqz v0, :cond_41

    const-string v6, "forced"

    :goto_35
    aput-object v6, v5, v7

    .line 2788
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 2791
    :cond_3c
    invoke-direct {p0, v3}, Landroid/content/res/Resources$Theme;->getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2d

    .line 2794
    :cond_41
    const-string/jumbo v6, "not forced"

    goto :goto_35

    .line 2796
    .end local v0    # "forced":Z
    .end local v3    # "theme":Ljava/lang/String;
    :cond_45
    return-object v5
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .registers 14
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2505
    array-length v10, p2

    .line 2506
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2507
    .local v9, "array":Landroid/content/res/TypedArray;
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 2534
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    .line 2535
    return-object v9
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .registers 17
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 2588
    array-length v10, p2

    .line 2589
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v9

    .local v9, "array":Landroid/content/res/TypedArray;
    move-object v11, p1

    .line 2595
    check-cast v11, Landroid/content/res/XmlBlock$Parser;

    .line 2596
    .local v11, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    if-eqz v11, :cond_20

    iget-wide v4, v11, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    :goto_10
    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p3

    move/from16 v3, p4

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    .line 2599
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 2600
    iput-object v11, v9, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 2631
    return-object v9

    .line 2596
    :cond_20
    const-wide/16 v4, 0x0

    goto :goto_10
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .registers 13
    .param p1, "attrs"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2477
    array-length v10, p1

    .line 2478
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2479
    .local v9, "array":Landroid/content/res/TypedArray;
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 2480
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    const-wide/16 v4, 0x0

    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    move v3, v2

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    .line 2481
    return-object v9
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .registers 11
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 2681
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2688
    .local v0, "got":Z
    return v0
.end method

.method public resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .registers 13
    .param p1, "values"    # [I
    .param p2, "attrs"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2649
    array-length v9, p2

    .line 2650
    .local v9, "len":I
    if-eqz p1, :cond_f

    array-length v0, p1

    if-eq v9, v0, :cond_f

    .line 2651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base attribute values must be null or the same length as attrs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2655
    :cond_f
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v9}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2656
    .local v8, "array":Landroid/content/res/TypedArray;
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    iget-object v6, v8, Landroid/content/res/TypedArray;->mData:[I

    iget-object v7, v8, Landroid/content/res/TypedArray;->mIndices:[I

    move v3, v2

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 2657
    iput-object p0, v8, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 2658
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 2660
    return-object v8
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .registers 6
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 2451
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    iget-wide v2, p1, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->copyTheme(JJ)V

    .line 2453
    iget v0, p1, Landroid/content/res/Resources$Theme;->mThemeResId:I

    iput v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    .line 2454
    iget-object v0, p1, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;

    .line 2455
    return-void
.end method
