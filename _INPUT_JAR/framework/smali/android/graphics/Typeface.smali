.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FLIP_ALL_APPS:Z = true

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field private static final SANS_INDEX:I = 0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_MONOTYPE:Ljava/lang/String; = "Monotype"

.field private static final USER_SANS_LOC_POST:Ljava/lang/String; = "/com.android.settings/app_fonts/sans.loc"

.field private static final USER_SANS_LOC_PRE:Ljava/lang/String; = "/data/user/"

.field public static isFlipFontUsed:Z

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public isLikeDefault:Z

.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 56
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 106
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 124
    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "sans-serif-thin"

    aput-object v2, v0, v4

    const-string/jumbo v2, "sans-serif-light"

    aput-object v2, v0, v6

    const-string/jumbo v2, "sans-serif"

    aput-object v2, v0, v7

    const-string/jumbo v2, "sans-serif-medium"

    aput-object v2, v0, v5

    const/4 v2, 0x4

    const-string/jumbo v3, "sans-serif-black"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "sec-roboto-light"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "samsung-sans-thin"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "samsung-sans-light"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    .line 436
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 439
    nop

    nop

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 440
    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 441
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 442
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 443
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 445
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    nop

    nop

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    nop

    nop

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 452
    return-void
.end method

.method private constructor <init>(J)V
    .registers 6
    .param p1, "ni"    # J

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 130
    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_17
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 341
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 342
    return-void
.end method

.method public static SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sAppName"    # Ljava/lang/String;

    .prologue
    .line 850
    invoke-static {p0}, Landroid/graphics/Typeface;->SetFlipFonts(Landroid/content/Context;)V

    .line 854
    return-void
.end method

.method private static SetFlipFonts(Landroid/content/Context;)V
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 720
    const-string v4, ""

    .line 723
    .local v4, "strFontPathBold":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "strFontPath":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 730
    const/4 v5, 0x0

    sput-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 744
    :goto_12
    sget-object v5, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 837
    :cond_1a
    :goto_1a
    return-void

    .line 734
    :cond_1b
    const/4 v5, 0x1

    sput-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DroidSans-Bold.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DroidSans.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 749
    :cond_51
    sput-object v1, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 766
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 767
    .local v2, "iNative":J
    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_61

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_155

    .line 768
    :cond_61
    sget-object v5, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 769
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 782
    :cond_73
    :goto_73
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 787
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 788
    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_8d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_189

    .line 789
    :cond_8d
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 801
    :cond_98
    :goto_98
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 806
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 807
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 808
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 812
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 813
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 814
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 818
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 819
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 820
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 824
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 825
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 826
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 829
    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_1a

    .line 830
    sget-object v5, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    goto/16 :goto_1a

    .line 774
    :cond_155
    :try_start_155
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J
    :try_end_15f
    .catch Ljava/lang/RuntimeException; {:try_start_155 .. :try_end_15f} :catch_179

    .line 779
    :goto_15f
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_73

    .line 780
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_73

    .line 775
    :catch_179
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_15f

    .line 793
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_189
    :try_start_189
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J
    :try_end_193
    .catch Ljava/lang/RuntimeException; {:try_start_189 .. :try_end_193} :catch_1ad

    .line 798
    :goto_193
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_98

    .line 799
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_98

    .line 794
    :catch_1ad
    move-exception v0

    .line 795
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_193
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 8
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 194
    const-wide/16 v0, 0x0

    .line 198
    .local v0, "ni":J
    if-ltz p1, :cond_7

    const/4 v4, 0x3

    if-le p1, v4, :cond_8

    .line 199
    :cond_7
    const/4 p1, 0x0

    .line 202
    :cond_8
    if-eqz p0, :cond_1a

    .line 204
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_10

    move-object v3, p0

    .line 241
    :cond_f
    :goto_f
    return-object v3

    .line 208
    :cond_10
    sget-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v4, :cond_4e

    iget-boolean v4, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v4, :cond_4e

    .line 209
    const-wide/16 v0, 0x0

    .line 216
    :cond_1a
    :goto_1a
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 218
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_2c

    .line 219
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 221
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_f

    .line 226
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_2c
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 230
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_3d

    if-eqz p0, :cond_3d

    .line 232
    iget-boolean v4, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v4, v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 235
    :cond_3d
    if-nez v2, :cond_4a

    .line 236
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 237
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 239
    :cond_4a
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    .line 211
    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4e
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_1a
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 176
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 177
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 179
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_1a

    .line 266
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 267
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 268
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 269
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 272
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_1a
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 309
    array-length v2, p0

    new-array v1, v2, [J

    .line 310
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_10

    .line 311
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 313
    :cond_10
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 324
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 325
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 326
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 328
    :cond_14
    const/4 v0, 0x0

    :goto_15
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    .line 329
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 331
    :cond_27
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_1a

    .line 293
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 294
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 295
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 296
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 299
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_1a
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "style"    # I

    .prologue
    .line 252
    if-ltz p0, :cond_5

    const/4 v0, 0x3

    if-le p0, v0, :cond_6

    .line 253
    :cond_5
    const/4 p0, 0x0

    .line 255
    :cond_6
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 506
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1e

    .line 514
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 515
    const-string v2, "default"

    .line 519
    :goto_1b
    return-object v2

    .line 517
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b

    .line 519
    :cond_1e
    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_1b
.end method

.method public static getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 530
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .registers 16
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 545
    const-string v10, "default"

    .line 547
    .local v10, "systemFont":Ljava/lang/String;
    packed-switch p1, :pswitch_data_1e2

    .line 711
    :cond_5
    :goto_5
    :pswitch_5
    if-nez v10, :cond_9

    .line 712
    const-string v10, "default"

    .line 714
    .end local v10    # "systemFont":Ljava/lang/String;
    :cond_9
    return-object v10

    .line 550
    .restart local v10    # "systemFont":Ljava/lang/String;
    :pswitch_a
    const-string v8, ""

    .line 551
    .local v8, "sans_path":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 554
    .local v3, "currentUser":I
    if-eqz p0, :cond_26

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v11

    if-eqz v11, :cond_26

    if-nez v3, :cond_26

    .line 557
    :try_start_1a
    const-string v11, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 558
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_1df

    move-result v3

    .line 565
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_26
    :goto_26
    if-nez v3, :cond_89

    .line 566
    const-string v8, "/data/data/com.android.settings/app_fonts/sans.loc"

    .line 569
    const-string/jumbo v11, "persist.sys.flipfontpath"

    const-string v12, "empty"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 573
    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 575
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 578
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 579
    .local v9, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 582
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_43
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_48} :catch_69
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_74
    .catchall {:try_start_43 .. :try_end_48} :catchall_82

    .line 583
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_48
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_52} :catch_1d6
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_52} :catch_1cd
    .catchall {:try_start_48 .. :try_end_52} :catchall_1c4

    .line 584
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 587
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 588
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_5c} :catch_1da
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5c} :catch_1d1
    .catchall {:try_start_52 .. :try_end_5c} :catchall_1c8

    .line 597
    if-eqz v7, :cond_61

    .line 598
    :try_start_5e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_65

    :cond_61
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 604
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_63
    :goto_63
    move-object v10, v9

    .line 606
    goto :goto_5

    .line 600
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_65
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 603
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_63

    .line 590
    :catch_69
    move-exception v4

    .line 591
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_6a
    :try_start_6a
    const-string v9, "default"
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_82

    .line 597
    if-eqz v6, :cond_63

    .line 598
    :try_start_6e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_63

    .line 600
    :catch_72
    move-exception v11

    goto :goto_63

    .line 592
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_74
    move-exception v4

    .line 593
    .local v4, "e":Ljava/io/IOException;
    :goto_75
    :try_start_75
    const-string v9, "default"

    .line 594
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_82

    .line 597
    if-eqz v6, :cond_63

    .line 598
    :try_start_7c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_63

    .line 600
    :catch_80
    move-exception v11

    goto :goto_63

    .line 596
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_82
    move-exception v11

    .line 597
    :goto_83
    if-eqz v6, :cond_88

    .line 598
    :try_start_85
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_18d

    .line 602
    :cond_88
    :goto_88
    throw v11

    .line 607
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "string":Ljava/lang/String;
    :cond_89
    const/16 v11, 0x64

    if-lt v3, v11, :cond_11b

    .line 610
    const-string v8, "/data/data/com.android.settings/app_fonts/sans.loc"

    .line 613
    const-string/jumbo v11, "persist.sys.flipfontpath"

    const-string v12, "empty"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 617
    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 619
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .restart local v5    # "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 622
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 623
    .restart local v9    # "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 626
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_a8
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_ad
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_ad} :catch_fb
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ad} :catch_106
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_114

    .line 627
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :try_start_ad
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b7} :catch_1bb
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_1b2
    .catchall {:try_start_ad .. :try_end_b7} :catchall_1a9

    .line 628
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_b7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 631
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 632
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_b7 .. :try_end_c1} :catch_1bf
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_1b6
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_1ad

    .line 641
    if-eqz v7, :cond_c6

    .line 642
    :try_start_c3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_f7

    :cond_c6
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 648
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_c8
    :goto_c8
    move-object v10, v9

    .line 651
    :try_start_c9
    const-string/jumbo v11, "persist.sys.flipfontpath"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cf} :catch_d1

    goto/16 :goto_5

    .line 652
    :catch_d1
    move-exception v4

    .line 653
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "FLIPFONT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "systemFont = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 644
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_f7
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 647
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_c8

    .line 634
    :catch_fb
    move-exception v4

    .line 635
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_fc
    :try_start_fc
    const-string v9, "default"
    :try_end_fe
    .catchall {:try_start_fc .. :try_end_fe} :catchall_114

    .line 641
    if-eqz v6, :cond_c8

    .line 642
    :try_start_100
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_104

    goto :goto_c8

    .line 644
    :catch_104
    move-exception v11

    goto :goto_c8

    .line 636
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_106
    move-exception v4

    .line 637
    .local v4, "e":Ljava/io/IOException;
    :goto_107
    :try_start_107
    const-string v9, "default"

    .line 638
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_107 .. :try_end_10c} :catchall_114

    .line 641
    if-eqz v6, :cond_c8

    .line 642
    :try_start_10e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_c8

    .line 644
    :catch_112
    move-exception v11

    goto :goto_c8

    .line 640
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_114
    move-exception v11

    .line 641
    :goto_115
    if-eqz v6, :cond_11a

    .line 642
    :try_start_117
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_190

    .line 646
    :cond_11a
    :goto_11a
    throw v11

    .line 657
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "string":Ljava/lang/String;
    :cond_11b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/user/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/com.android.settings/app_fonts/sans.loc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 661
    const-string v10, "empty"

    .line 664
    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 666
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .restart local v5    # "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 669
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 670
    .restart local v9    # "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 673
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_146
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14b
    .catch Ljava/io/FileNotFoundException; {:try_start_146 .. :try_end_14b} :catch_16d
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14b} :catch_178
    .catchall {:try_start_146 .. :try_end_14b} :catchall_186

    .line 674
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :try_start_14b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_155
    .catch Ljava/io/FileNotFoundException; {:try_start_14b .. :try_end_155} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_155} :catch_19b
    .catchall {:try_start_14b .. :try_end_155} :catchall_194

    .line 675
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_155
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 678
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 679
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15f
    .catch Ljava/io/FileNotFoundException; {:try_start_155 .. :try_end_15f} :catch_1a5
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15f} :catch_19e
    .catchall {:try_start_155 .. :try_end_15f} :catchall_197

    .line 688
    if-eqz v7, :cond_164

    .line 689
    :try_start_161
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_169

    :cond_164
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 695
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_166
    :goto_166
    move-object v10, v9

    goto/16 :goto_5

    .line 691
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_169
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 694
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_166

    .line 681
    :catch_16d
    move-exception v4

    .line 682
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_16e
    :try_start_16e
    const-string v9, "default"
    :try_end_170
    .catchall {:try_start_16e .. :try_end_170} :catchall_186

    .line 688
    if-eqz v6, :cond_166

    .line 689
    :try_start_172
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_176

    goto :goto_166

    .line 691
    :catch_176
    move-exception v11

    goto :goto_166

    .line 683
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_178
    move-exception v4

    .line 684
    .local v4, "e":Ljava/io/IOException;
    :goto_179
    :try_start_179
    const-string v9, "default"

    .line 685
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17e
    .catchall {:try_start_179 .. :try_end_17e} :catchall_186

    .line 688
    if-eqz v6, :cond_166

    .line 689
    :try_start_180
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_183} :catch_184

    goto :goto_166

    .line 691
    :catch_184
    move-exception v11

    goto :goto_166

    .line 687
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_186
    move-exception v11

    .line 688
    :goto_187
    if-eqz v6, :cond_18c

    .line 689
    :try_start_189
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_192

    .line 693
    :cond_18c
    :goto_18c
    throw v11

    .line 600
    :catch_18d
    move-exception v12

    goto/16 :goto_88

    .line 644
    :catch_190
    move-exception v12

    goto :goto_11a

    .line 691
    :catch_192
    move-exception v12

    goto :goto_18c

    .line 687
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_194
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_187

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_197
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_187

    .line 683
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_19b
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_179

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_19e
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_179

    .line 681
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1a2
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_16e

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1a5
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_16e

    .line 640
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1a9
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_115

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1ad
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_115

    .line 636
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1b2
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_107

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1b6
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_107

    .line 634
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1bb
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_fc

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1bf
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_fc

    .line 596
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1c4
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_83

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1c8
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_83

    .line 592
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1cd
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_75

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1d1
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_75

    .line 590
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1d6
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_6a

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1da
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_6a

    .line 560
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "string":Ljava/lang/String;
    :catch_1df
    move-exception v11

    goto/16 :goto_26

    .line 547
    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .registers 2

    .prologue
    .line 455
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .registers 25

    .prologue
    .line 359
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v18

    .line 360
    .local v18, "systemFontConfigLocation":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v22, "fonts.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .local v6, "configFilename":Ljava/io/File;
    :try_start_f
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 363
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v13}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v11

    .line 365
    .local v11, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v10, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1e
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_4a

    .line 369
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 370
    .local v8, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v14, :cond_3e

    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_47

    .line 371
    :cond_3e
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_47
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 374
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    :cond_4a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/graphics/FontFamily;

    sput-object v22, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 375
    sget-object v22, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v22 .. v22}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 377
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v19, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v14, 0x0

    :goto_6d
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_da

    .line 380
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 381
    .restart local v8    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c1

    .line 382
    if-nez v14, :cond_c4

    .line 385
    sget-object v20, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 393
    .local v20, "typeface":Landroid/graphics/Typeface;
    :goto_8f
    const/16 v16, 0x0

    .local v16, "ix":I
    :goto_91
    sget-object v22, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b4

    .line 394
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v23, v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d7

    .line 395
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 400
    :cond_b4
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v16    # "ix":I
    .end local v20    # "typeface":Landroid/graphics/Typeface;
    :cond_c1
    add-int/lit8 v14, v14, 0x1

    goto :goto_6d

    .line 387
    :cond_c4
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 388
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v9, v0, [Landroid/graphics/FontFamily;

    const/16 v22, 0x0

    aput-object v12, v9, v22

    .line 389
    .local v9, "families":[Landroid/graphics/FontFamily;
    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v20

    .restart local v20    # "typeface":Landroid/graphics/Typeface;
    goto :goto_8f

    .line 393
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .restart local v16    # "ix":I
    :cond_d7
    add-int/lit8 v16, v16, 0x1

    goto :goto_91

    .line 403
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v16    # "ix":I
    .end local v20    # "typeface":Landroid/graphics/Typeface;
    :cond_da
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_e2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_162

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 404
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 405
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v17, v5

    .line 406
    .local v17, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v21, v0

    .line 407
    .local v21, "weight":I
    const/16 v22, 0x190

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_144

    .line 408
    new-instance v17, Landroid/graphics/Typeface;

    .end local v17    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 411
    .restart local v17    # "newFace":Landroid/graphics/Typeface;
    const/16 v16, 0x0

    .restart local v16    # "ix":I
    :goto_121
    sget-object v22, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_144

    .line 412
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v23, v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15f

    .line 413
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 419
    .end local v16    # "ix":I
    :cond_144
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_151
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_151} :catch_152
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_151} :catch_165
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_151} :catch_181
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_151} :catch_19d

    goto :goto_e2

    .line 423
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "newFace":Landroid/graphics/Typeface;
    .end local v19    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v21    # "weight":I
    :catch_152
    move-exception v7

    .line 424
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v23, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_15e
    return-void

    .line 411
    .restart local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .restart local v5    # "base":Landroid/graphics/Typeface;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "ix":I
    .restart local v17    # "newFace":Landroid/graphics/Typeface;
    .restart local v19    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .restart local v21    # "weight":I
    :cond_15f
    add-int/lit8 v16, v16, 0x1

    goto :goto_121

    .line 421
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v16    # "ix":I
    .end local v17    # "newFace":Landroid/graphics/Typeface;
    .end local v21    # "weight":I
    :cond_162
    :try_start_162
    sput-object v19, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_164
    .catch Ljava/lang/RuntimeException; {:try_start_162 .. :try_end_164} :catch_152
    .catch Ljava/io/FileNotFoundException; {:try_start_162 .. :try_end_164} :catch_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_164} :catch_181
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_162 .. :try_end_164} :catch_19d

    goto :goto_15e

    .line 426
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_165
    move-exception v7

    .line 427
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error opening "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 428
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_181
    move-exception v7

    .line 429
    .local v7, "e":Ljava/io/IOException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error reading "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 430
    .end local v7    # "e":Ljava/io/IOException;
    :catch_19d
    move-exception v7

    .line 431
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "XML parse exception for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .registers 7
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 345
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 347
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_f

    .line 349
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_25
    return-object v1
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .registers 3
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 145
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 146
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 147
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    if-ne p0, p1, :cond_5

    .line 474
    :cond_4
    :goto_4
    return v1

    .line 470
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 472
    check-cast v0, Landroid/graphics/Typeface;

    .line 474
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_24

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 461
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 463
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    return-void

    .line 463
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 483
    const/16 v0, 0x11

    .line 484
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 485
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 486
    return v0
.end method

.method public final isBold()Z
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isItalic()Z
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
