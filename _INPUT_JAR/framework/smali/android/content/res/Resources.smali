.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$RCCallable;
    }
.end annotation


# static fields
.field private static CONCURRENCY:I = 0x0

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final DEBUG_RC:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field private static final LAYOUT_DIR_CONFIG:I

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final TYPE_APP_NAME:Ljava/lang/String; = "AppName"

.field private static final TYPE_DEFAULT_VALUE:Ljava/lang/String; = "Def="

.field private static final TYPE_FORMATTED_STRING:Ljava/lang/String; = "Formatted"

.field private static final TYPE_INT_ARRAY_POSITION:Ljava/lang/String; = "IntPoz="

.field private static final TYPE_MENU_ITEM_TITLE:Ljava/lang/String; = "Menu"

.field private static final TYPE_PREFERENCES:Ljava/lang/String; = "Pref"

.field private static final TYPE_QUANTITY:Ljava/lang/String; = "Quantity="

.field private static final TYPE_QUANTITY_ID_OTHER:Ljava/lang/String; = "QuantityIdOther="

.field private static final TYPE_STRING_ARRAY_POSITION:Ljava/lang/String; = "StringPoz="

.field private static final TYPE_TEXT:Ljava/lang/String; = "Text"

.field private static final TYPE_TEXT_ARRAY_POSITION:Ljava/lang/String; = "TextPoz="

.field private static date:Ljava/util/Date; = null

.field private static mStartStoringRL:I = 0x0

.field static mSystem:Landroid/content/res/Resources; = null

.field private static final mTAG:Ljava/lang/String;

.field private static notificationStringsOriginMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreloaded:Z = false

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I = 0x0

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;

.field private static final timeOut:I = 0x14

.field private static final totalWaitLimit:I = 0x7d0


# instance fields
.field private appAndWidgetStringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private ecs:Ljava/util/concurrent/ExecutorService;

.field private volatile file:Ljava/io/File;

.field private final mALDC:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mAccessLock:Ljava/lang/Object;

.field public mAppIconResId:I

.field final mAssets:Landroid/content/res/AssetManager;

.field private mCachedStyledAttributes:Landroid/content/res/TypedArray;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mColorStateListCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mLastCachedXmlBlockIndex:I

.field final mMetrics:Landroid/util/DisplayMetrics;

.field public mPackageName:Ljava/lang/String;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTmpValue:Landroid/util/TypedValue;

.field private mToken:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field private refThemeKey:Ljava/lang/String;

.field private resourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private resourcesMapType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 127
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->date:Ljava/util/Date;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceCaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/Resources;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/content/res/Resources;->mTAG:Ljava/lang/String;

    .line 130
    sput v3, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 132
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/Resources;->CONCURRENCY:I

    .line 146
    const/16 v1, 0x2000

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v1

    sput v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    .line 157
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 159
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    .line 166
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 202
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/LongSparseArray;

    sput-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 203
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v2, v1, v3

    .line 204
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v3, v1, v2

    .line 274
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_72

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_72
    sput-object v0, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v1, p0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedValue:Ljava/util/List;

    .line 135
    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 163
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/ArrayMap;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/ArrayMap;

    .line 178
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 181
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 184
    iput-object v1, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 187
    new-array v0, v4, [I

    fill-array-data v0, :array_b2

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 188
    new-array v0, v4, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 191
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 193
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 196
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 219
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_75
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    .line 231
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_ae

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_80
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    .line 257
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_b0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_8b
    iput-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    .line 1016
    iput-object v1, p0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1021
    iput v3, p0, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1023
    iput v3, p0, Landroid/content/res/Resources;->mUserId:I

    .line 3988
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 3992
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3993
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 3994
    invoke-virtual {p0, v1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3995
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 3996
    return-void

    :cond_ac
    move-object v0, v1

    .line 219
    goto :goto_75

    :cond_ae
    move-object v0, v1

    .line 231
    goto :goto_80

    :cond_b0
    move-object v0, v1

    .line 257
    goto :goto_8b

    .line 187
    :array_b2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1254
    sget-object v4, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 1255
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v1, p0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedValue:Ljava/util/List;

    .line 135
    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 163
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/ArrayMap;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/ArrayMap;

    .line 178
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 181
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 184
    iput-object v1, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 187
    new-array v0, v4, [I

    fill-array-data v0, :array_b2

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 188
    new-array v0, v4, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 191
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 193
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 196
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 219
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_75
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    .line 231
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_ae

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_80
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    .line 257
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_b0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_8b
    iput-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    .line 1016
    iput-object v1, p0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1021
    iput v3, p0, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1023
    iput v3, p0, Landroid/content/res/Resources;->mUserId:I

    .line 1271
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 1272
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1273
    if-eqz p4, :cond_9e

    .line 1274
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1276
    :cond_9e
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mToken:Ljava/lang/ref/WeakReference;

    .line 1277
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1278
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 1279
    return-void

    :cond_ac
    move-object v0, v1

    .line 219
    goto :goto_75

    :cond_ae
    move-object v0, v1

    .line 231
    goto :goto_80

    :cond_b0
    move-object v0, v1

    .line 257
    goto :goto_8b

    .line 187
    :array_b2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private varargs addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 14
    .param p1, "id"    # I
    .param p2, "formattedString"    # Ljava/lang/String;
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 992
    const-string v8, "Formatted"

    invoke-direct {p0, p2, p1, v8}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 994
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_9
    if-ge v3, v4, :cond_56

    aget-object v0, v1, v3

    .line 995
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_13

    .line 994
    .end local v3    # "i$":I
    :cond_f
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_9

    .line 999
    :cond_13
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1001
    .local v6, "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_f

    .line 1005
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1006
    .local v5, "resId":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, "typeKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, p2, v9, v8}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    goto :goto_25

    .line 1010
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "resId":Ljava/lang/Integer;
    .end local v6    # "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "typeKey":Ljava/lang/String;
    .restart local v3    # "i$":I
    :cond_56
    return-void
.end method

.method private addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "stringName"    # Ljava/lang/CharSequence;

    .prologue
    .line 319
    iget-object v4, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v4

    .line 320
    :try_start_3
    iget-object v3, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 321
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_25

    .line 322
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 328
    .local v2, "temp":Ljava/lang/CharSequence;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 329
    monitor-exit v4

    .line 339
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :goto_24
    return-void

    .line 333
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2a
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v3, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    monitor-exit v4

    goto :goto_24

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .registers 11
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "resid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v5, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v5

    .line 290
    :try_start_3
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 291
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_25

    .line 292
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 293
    .local v2, "temp":I
    if-ne p2, v2, :cond_11

    .line 294
    monitor-exit v5

    .line 306
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":I
    :goto_24
    return-void

    .line 298
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "typKey":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v4, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    monitor-exit v5

    goto :goto_24

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "typKey":Ljava/lang/String;
    :catchall_52
    move-exception v4

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v4
.end method

.method private addToNotiMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "stringName"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    sget-object v4, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    monitor-enter v4

    .line 353
    :try_start_3
    sget-object v3, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 354
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_25

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 356
    .local v2, "temp":Ljava/lang/CharSequence;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 357
    monitor-exit v4

    .line 366
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :goto_24
    return-void

    .line 361
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2a
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v3, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    monitor-exit v4

    goto :goto_24

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 3084
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3088
    .local v2, "separator":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 3089
    move-object v0, p0

    .line 3090
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 3096
    .local v1, "remainder":Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3092
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3093
    .restart local v0    # "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainder":Ljava/lang/String;
    goto :goto_c
.end method

.method private static attrForQuantityCode(I)I
    .registers 2
    .param p0, "quantityCode"    # I

    .prologue
    .line 1392
    packed-switch p0, :pswitch_data_1c

    .line 1398
    const v0, 0x1000004

    :goto_6
    return v0

    .line 1393
    :pswitch_7
    const v0, 0x1000005

    goto :goto_6

    .line 1394
    :pswitch_b
    const v0, 0x1000006

    goto :goto_6

    .line 1395
    :pswitch_f
    const v0, 0x1000007

    goto :goto_6

    .line 1396
    :pswitch_13
    const v0, 0x1000008

    goto :goto_6

    .line 1397
    :pswitch_17
    const v0, 0x1000009

    goto :goto_6

    .line 1392
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method private cacheDrawable(Landroid/util/TypedValue;Landroid/content/res/Resources$Theme;ZLandroid/util/ArrayMap;JLandroid/graphics/drawable/Drawable;)V
    .registers 15
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "isColorDrawable"    # Z
    .param p5, "key"    # J
    .param p7, "dr"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedValue;",
            "Landroid/content/res/Resources$Theme;",
            "Z",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;J",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3647
    .local p4, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 3648
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_7

    .line 3684
    :cond_6
    :goto_6
    return-void

    .line 3652
    :cond_7
    iget-boolean v4, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v4, :cond_52

    .line 3654
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    .line 3655
    .local v0, "changingConfigs":I
    if-eqz p3, :cond_22

    .line 3656
    const/4 v4, 0x0

    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "drawable"

    invoke-direct {p0, v0, v4, v5, v6}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3657
    sget-object v4, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p5, p6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    .line 3660
    :cond_22
    sget v4, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "drawable"

    invoke-direct {p0, v0, v4, v5, v6}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3662
    sget v4, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    and-int/2addr v4, v0

    if-nez v4, :cond_44

    .line 3665
    sget-object v4, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p5, p6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3666
    sget-object v4, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p5, p6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    .line 3669
    :cond_44
    sget-object v4, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v5, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, p5, p6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    .line 3674
    .end local v0    # "changingConfigs":I
    :cond_52
    iget-object v5, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3675
    if-nez p2, :cond_77

    :try_start_57
    const-string v2, ""

    .line 3676
    .local v2, "themeKey":Ljava/lang/String;
    :goto_59
    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 3677
    .local v3, "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v3, :cond_6a

    .line 3678
    new-instance v3, Landroid/util/LongSparseArray;

    .end local v3    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 3679
    .restart local v3    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    :cond_6a
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p5, p6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3682
    monitor-exit v5

    goto :goto_6

    .end local v2    # "themeKey":Ljava/lang/String;
    .end local v3    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :catchall_74
    move-exception v4

    monitor-exit v5
    :try_end_76
    .catchall {:try_start_57 .. :try_end_76} :catchall_74

    throw v4

    .line 3675
    :cond_77
    :try_start_77
    # getter for: Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;
    invoke-static {p2}, Landroid/content/res/Resources$Theme;->access$000(Landroid/content/res/Resources$Theme;)Ljava/lang/String;
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_74

    move-result-object v2

    goto :goto_59
.end method

.method private clearDrawableCacheLocked(Landroid/util/LongSparseArray;I)V
    .registers 8
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 3045
    .local p1, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3046
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_28

    .line 3047
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 3048
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_25

    .line 3049
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3050
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_25

    .line 3051
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3059
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 3046
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3070
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_28
    return-void
.end method

.method private clearDrawableCachesLocked(Landroid/util/ArrayMap;I)V
    .registers 6
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 3030
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3034
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 3035
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p2}, Landroid/content/res/Resources;->clearDrawableCacheLocked(Landroid/util/LongSparseArray;I)V

    .line 3034
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3037
    :cond_13
    return-void
.end method

.method private clearRCCachedDrawableLocked(Landroid/util/LongSparseArray;I)V
    .registers 9
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 2985
    .local p1, "futureCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2990
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_6
    if-ltz v3, :cond_54

    .line 2992
    :try_start_8
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2993
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2994
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_35

    .line 2995
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3004
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 2990
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 3014
    :cond_38
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 3015
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->removeAt(I)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_41} :catch_42
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_41} :catch_4b

    goto :goto_35

    .line 3018
    :catch_42
    move-exception v2

    .line 3019
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "Resources"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 3020
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_4b
    move-exception v2

    .line 3021
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "Resources"

    const-string v5, "ExecutionException"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 3024
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_54
    return-void
.end method

.method private getCachedColorStateList(J)Landroid/content/res/ColorStateList;
    .registers 8
    .param p1, "key"    # J

    .prologue
    .line 3886
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3887
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3888
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v1, :cond_1c

    .line 3889
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 3890
    .local v0, "entry":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_17

    .line 3894
    monitor-exit v3

    .line 3900
    .end local v0    # "entry":Landroid/content/res/ColorStateList;
    :goto_16
    return-object v0

    .line 3896
    .restart local v0    # "entry":Landroid/content/res/ColorStateList;
    :cond_17
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3899
    .end local v0    # "entry":Landroid/content/res/ColorStateList;
    :cond_1c
    monitor-exit v3

    .line 3900
    const/4 v0, 0x0

    goto :goto_16

    .line 3899
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private getCachedDrawable(Landroid/util/ArrayMap;JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p2, "key"    # J
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;J",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 3748
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3749
    if-eqz p4, :cond_19

    :try_start_5
    # getter for: Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;
    invoke-static {p4}, Landroid/content/res/Resources$Theme;->access$000(Landroid/content/res/Resources$Theme;)Ljava/lang/String;

    move-result-object v0

    .line 3750
    .local v0, "themeKey":Ljava/lang/String;
    :goto_9
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 3751
    .local v1, "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v1, :cond_1c

    .line 3752
    invoke-direct {p0, v1, p2, p3}, Landroid/content/res/Resources;->getCachedDrawableLocked(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3753
    .local v2, "themedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1c

    .line 3754
    monitor-exit v4

    .line 3759
    .end local v2    # "themedDrawable":Landroid/graphics/drawable/Drawable;
    :goto_18
    return-object v2

    .line 3749
    .end local v0    # "themeKey":Ljava/lang/String;
    .end local v1    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_19
    const-string v0, ""

    goto :goto_9

    .line 3759
    .restart local v0    # "themeKey":Ljava/lang/String;
    .restart local v1    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_1c
    const/4 v2, 0x0

    monitor-exit v4

    goto :goto_18

    .line 3760
    .end local v0    # "themeKey":Ljava/lang/String;
    .end local v1    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private getCachedDrawableLocked(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p2, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 3782
    .local p1, "drawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;->getConstantStateLocked(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 3783
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_b

    .line 3784
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3786
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getConstantStateLocked(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 6
    .param p2, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable$ConstantState;"
        }
    .end annotation

    .prologue
    .line 3765
    .local p1, "drawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3766
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_14

    .line 3767
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3768
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_11

    .line 3777
    .end local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_10
    return-object v0

    .line 3774
    .restart local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_11
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3777
    .end local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .registers 3

    .prologue
    .line 1383
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1384
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_11

    .line 1385
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 1387
    :cond_11
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    monitor-exit v1

    return-object v0

    .line 1388
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private getRCCachedDrawable(Landroid/util/ArrayMap;JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p2, "key"    # J
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;J",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 3618
    .local p1, "drawableCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    const/4 v2, 0x0

    .line 3619
    .local v2, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p4, :cond_26

    # getter for: Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;
    invoke-static {p4}, Landroid/content/res/Resources$Theme;->access$000(Landroid/content/res/Resources$Theme;)Ljava/lang/String;

    move-result-object v5

    .line 3620
    .local v5, "mThemeKey":Ljava/lang/String;
    :goto_7
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LongSparseArray;

    .line 3621
    .local v4, "futureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v4, :cond_2c

    .line 3623
    :try_start_f
    invoke-virtual {v4, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 3624
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_2c

    .line 3625
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v0

    .line 3626
    if-eqz v2, :cond_29

    .line 3627
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_24} :catch_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_24} :catch_37

    move-result-object v6

    .line 3640
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :goto_25
    return-object v6

    .line 3619
    .end local v4    # "futureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v5    # "mThemeKey":Ljava/lang/String;
    :cond_26
    const-string v5, ""

    goto :goto_7

    .line 3631
    .restart local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .restart local v4    # "futureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v5    # "mThemeKey":Ljava/lang/String;
    :cond_29
    :try_start_29
    invoke-virtual {v4, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_29 .. :try_end_2c} :catch_37

    .line 3640
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_2c
    :goto_2c
    const/4 v6, 0x0

    goto :goto_25

    .line 3634
    :catch_2e
    move-exception v1

    .line 3635
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v6, "Resources"

    const-string v7, "InterruptedException"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 3636
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_37
    move-exception v1

    .line 3637
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v6, "Resources"

    const-string v7, "ExecutionException"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method private getStringName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 600
    const/4 v2, 0x0

    .line 605
    .local v2, "stringName":Ljava/lang/CharSequence;
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1f

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 657
    :goto_1e
    return-object v3

    .line 609
    :cond_1f
    iget v3, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v3, :cond_33

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_33

    .line 610
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 611
    if-eqz v2, :cond_33

    move-object v3, v2

    .line 612
    goto :goto_1e

    .line 616
    :cond_33
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_4b

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 618
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    :goto_39
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 620
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v3, :cond_4e

    .line 621
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 622
    if-eqz v2, :cond_4e

    move-object v3, v2

    .line 623
    goto :goto_1e

    .line 616
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_4b
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_39

    .line 631
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_4e
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6c

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6c

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 635
    :cond_6c
    iget v3, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v3, :cond_7c

    .line 636
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 637
    if-eqz v2, :cond_7c

    move-object v3, v2

    .line 638
    goto :goto_1e

    .line 646
    :cond_7c
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9a

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_9a

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 650
    :cond_9a
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_af

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_af

    .line 651
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 652
    if-eqz v2, :cond_af

    move-object v3, v2

    .line 653
    goto/16 :goto_1e

    :cond_af
    move-object v3, v2

    .line 657
    goto/16 :goto_1e
.end method

.method private getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "labelRes"    # I
    .param p3, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 674
    const/4 v2, 0x0

    .line 676
    .local v2, "stringName":Ljava/lang/CharSequence;
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 679
    :try_start_5
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_8} :catch_f

    move-result-object v1

    .line 684
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_d
    move-object v3, v2

    .line 687
    :goto_e
    return-object v3

    .line 680
    :catch_f
    move-exception v0

    .line 681
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_e
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 1288
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1289
    :try_start_3
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 1290
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_e

    .line 1291
    new-instance v0, Landroid/content/res/Resources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 1292
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 1295
    :cond_e
    monitor-exit v2

    return-object v0

    .line 1296
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private loadAppNames(Landroid/content/pm/PackageManager;)V
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 517
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 519
    return-void
.end method

.method private loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 3690
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v7, :cond_39

    .line 3691
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resource \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")  is not a Drawable (color or path): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3695
    :cond_39
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3714
    .local v2, "file":Ljava/lang/String;
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3716
    :try_start_44
    const-string v7, ".xml"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 3717
    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v8, "drawable"

    invoke-virtual {p0, v2, p2, v7, v8}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 3719
    .local v5, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v5, p3}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3720
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5b} :catch_9e

    .line 3740
    .end local v5    # "rp":Landroid/content/res/XmlResourceParser;
    :goto_5b
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3742
    return-object v0

    .line 3721
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_61
    :try_start_61
    const-string v7, ".spr"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 3722
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 3724
    .local v3, "is":Ljava/io/InputStream;
    const-string v7, "com.samsung.android.sdk.spr.drawable.SprDrawable"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 3725
    .local v6, "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "createFromStream"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/io/InputStream;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 3726
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_9d} :catch_9e

    goto :goto_5b

    .line 3733
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_9e
    move-exception v1

    .line 3734
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3735
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from drawable resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 3737
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3738
    throw v4

    .line 3728
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_ce
    :try_start_ce
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 3730
    .restart local v3    # "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-static {p0, p1, v3, v2, v7}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3731
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_df} :catch_9e

    goto/16 :goto_5b
.end method

.method private loadNamesFromMetaData(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 539
    .local v0, "c":Landroid/content/Context;
    :try_start_1
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {p3, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_d

    move-result-object v0

    .line 546
    :goto_a
    if-nez v0, :cond_12

    .line 575
    :cond_c
    :goto_c
    return-void

    .line 542
    :catch_d
    move-exception v2

    .line 543
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_a

    .line 550
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 552
    .local v1, "contextRes":Landroid/content/res/Resources;
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 554
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_c

    .line 559
    :cond_22
    :try_start_22
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_25} :catch_42
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_47

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_2c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_22

    .line 568
    .end local v7    # "type":I
    :cond_2c
    :goto_2c
    const/4 v8, 0x0

    const-string v9, "description"

    const/4 v10, 0x0

    invoke-interface {v4, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 569
    .local v3, "id":I
    if-eqz v3, :cond_c

    .line 570
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "stringName":Ljava/lang/String;
    invoke-direct {p0, v6, v5}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 561
    .end local v3    # "id":I
    .end local v5    # "stringName":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :catch_42
    move-exception v2

    .line 562
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2c

    .line 563
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_47
    move-exception v2

    .line 564
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c
.end method

.method private mClearALDCLocked(Landroid/util/ArrayMap;I)V
    .registers 6
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 2973
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    if-eqz p1, :cond_1b

    .line 2974
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2975
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 2976
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 2977
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p2}, Landroid/content/res/Resources;->clearRCCachedDrawableLocked(Landroid/util/LongSparseArray;I)V

    .line 2975
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2980
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private matchFormattedStringToKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "formattedString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "%"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 752
    :cond_f
    :goto_f
    return v4

    .line 733
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%d|%s|%[0-9]?[0-9]?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[s,d]?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 740
    .local v5, "splited":[Ljava/lang/String;
    array-length v6, v5

    if-eqz v6, :cond_f

    .line 744
    const/4 v4, 0x1

    .line 746
    .local v4, "match":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3a
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    .line 747
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 748
    const/4 v4, 0x0

    .line 749
    goto :goto_f

    .line 746
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a
.end method

.method private resetStringNames(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 699
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2f

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 704
    iget-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 705
    iget-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 706
    iget-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 708
    :cond_2f
    return-void
.end method

.method public static resourceHasPackage(I)Z
    .registers 2
    .param p0, "resid"    # I

    .prologue
    .line 3196
    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private searchAppAndWidgetStringNames(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "stringNames"    # Ljava/lang/StringBuilder;
    .param p2, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 435
    iget-object v5, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v5

    .line 436
    :try_start_3
    iget-object v4, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 437
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_43

    .line 438
    if-eqz v1, :cond_46

    .line 439
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 445
    .local v3, "temp":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v2, "names":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 448
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v4, "AppName"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 437
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "names":Ljava/lang/StringBuilder;
    .end local v3    # "temp":Ljava/lang/CharSequence;
    :catchall_43
    move-exception v4

    :try_start_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v4

    .line 455
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_46
    return-void
.end method

.method private searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v5, "stringNames":Ljava/lang/StringBuilder;
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v8

    .line 382
    :try_start_8
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 383
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v8
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_61

    .line 384
    if-eqz v2, :cond_64

    .line 385
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 388
    .local v4, "resid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v3, "names":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "typKey":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 383
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "names":Ljava/lang/StringBuilder;
    .end local v4    # "resid":I
    .end local v6    # "typKey":Ljava/lang/String;
    :catchall_61
    move-exception v7

    :try_start_62
    monitor-exit v8
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v7

    .line 398
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_64
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v8

    .line 399
    :try_start_67
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 400
    .local v1, "key":Ljava/lang/CharSequence;
    if-eqz v1, :cond_93

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Landroid/content/res/Resources;->matchFormattedStringToKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 403
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "stringNames":Ljava/lang/StringBuilder;
    monitor-exit v8

    .line 417
    .end local v1    # "key":Ljava/lang/CharSequence;
    :goto_92
    return-object v5

    .line 404
    .restart local v1    # "key":Ljava/lang/CharSequence;
    .restart local v5    # "stringNames":Ljava/lang/StringBuilder;
    :cond_93
    if-eqz v1, :cond_71

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 407
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "stringNames":Ljava/lang/StringBuilder;
    monitor-exit v8

    goto :goto_92

    .line 410
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/CharSequence;
    :catchall_a9
    move-exception v7

    monitor-exit v8
    :try_end_ab
    .catchall {:try_start_67 .. :try_end_ab} :catchall_a9

    throw v7

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v5    # "stringNames":Ljava/lang/StringBuilder;
    :cond_ac
    :try_start_ac
    monitor-exit v8
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_a9

    .line 413
    :cond_ad
    invoke-direct {p0, v5, p1}, Landroid/content/res/Resources;->searchAppAndWidgetStringNames(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 415
    invoke-direct {p0, v5, p1}, Landroid/content/res/Resources;->searchNotificationStringName(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_92
.end method

.method private searchNotificationStringName(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "stringNames"    # Ljava/lang/StringBuilder;
    .param p2, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 472
    sget-object v5, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    monitor-enter v5

    .line 473
    :try_start_3
    sget-object v4, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 474
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_39

    .line 475
    if-eqz v1, :cond_3c

    .line 476
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 483
    .local v3, "temp":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .local v2, "names":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 486
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 474
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "names":Ljava/lang/StringBuilder;
    .end local v3    # "temp":Ljava/lang/CharSequence;
    :catchall_39
    move-exception v4

    :try_start_3a
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v4

    .line 491
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3c
    return-void
.end method

.method public static selectDefaultTheme(II)I
    .registers 8
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 1205
    const v2, 0x1030005

    const v3, 0x103006b

    const v4, 0x1030128

    const v5, 0x103013f

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .registers 7
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .prologue
    .line 1215
    if-eqz p0, :cond_3

    .line 1227
    .end local p0    # "curTheme":I
    :goto_2
    return p0

    .line 1218
    .restart local p0    # "curTheme":I
    :cond_3
    const/16 v0, 0xb

    if-ge p1, v0, :cond_9

    move p0, p2

    .line 1219
    goto :goto_2

    .line 1221
    :cond_9
    const/16 v0, 0xe

    if-ge p1, v0, :cond_f

    move p0, p3

    .line 1222
    goto :goto_2

    .line 1224
    :cond_f
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_15

    move p0, p4

    .line 1225
    goto :goto_2

    :cond_15
    move p0, p5

    .line 1227
    goto :goto_2
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .registers 2
    .param p0, "quantityCode"    # I

    .prologue
    .line 1403
    packed-switch p0, :pswitch_data_1a

    .line 1409
    const-string/jumbo v0, "other"

    :goto_6
    return-object v0

    .line 1404
    :pswitch_7
    const-string/jumbo v0, "zero"

    goto :goto_6

    .line 1405
    :pswitch_b
    const-string/jumbo v0, "one"

    goto :goto_6

    .line 1406
    :pswitch_f
    const-string/jumbo v0, "two"

    goto :goto_6

    .line 1407
    :pswitch_13
    const-string v0, "few"

    goto :goto_6

    .line 1408
    :pswitch_16
    const-string/jumbo v0, "many"

    goto :goto_6

    .line 1403
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3107
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_9

    .line 3108
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 3112
    :cond_9
    return-void
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .registers 10
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 3442
    const v2, -0x40001001    # -1.9995116f

    and-int/2addr v2, p1

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_49

    .line 3446
    :try_start_9
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_c} :catch_45

    move-result-object v1

    .line 3452
    .local v1, "resName":Ljava/lang/String;
    :goto_d
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") that varies with configuration!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    const/4 v2, 0x0

    .line 3468
    .end local v1    # "resName":Ljava/lang/String;
    :goto_44
    return v2

    .line 3447
    :catch_45
    move-exception v0

    .line 3448
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_d

    .line 3468
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "resName":Ljava/lang/String;
    :cond_49
    const/4 v2, 0x1

    goto :goto_44
.end method


# virtual methods
.method public addAccountsNames(Landroid/content/Context;[Landroid/accounts/AuthenticatorDescription;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Landroid/accounts/AuthenticatorDescription;

    .prologue
    .line 920
    sget-boolean v12, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v12, :cond_46

    .line 921
    iget-object v13, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v13

    .line 925
    const/4 v3, 0x0

    .line 926
    .local v3, "firstAdd":Z
    :try_start_8
    iget-object v12, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 927
    const/4 v3, 0x1

    .line 929
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 930
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v1, p2

    .local v1, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_19
    if-ge v4, v7, :cond_40

    aget-object v0, v1, v4

    .line 931
    .local v0, "ad":Landroid/accounts/AuthenticatorDescription;
    iget v6, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 932
    .local v6, "labelId":I
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_3d

    .line 933
    .local v8, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 935
    .local v10, "res":Landroid/content/res/Resources;
    :try_start_22
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_25} :catch_38
    .catchall {:try_start_22 .. :try_end_25} :catchall_3d

    move-result-object v10

    .line 939
    :goto_26
    if-eqz v10, :cond_35

    if-eqz v6, :cond_35

    .line 940
    :try_start_2a
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 941
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    .line 942
    .local v11, "stringName":Ljava/lang/String;
    invoke-direct {p0, v5, v11}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 930
    .end local v5    # "label":Ljava/lang/String;
    .end local v11    # "stringName":Ljava/lang/String;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 936
    :catch_38
    move-exception v2

    .line 937
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_26

    .line 948
    .end local v0    # "ad":Landroid/accounts/AuthenticatorDescription;
    .end local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i$":I
    .end local v6    # "labelId":I
    .end local v7    # "len$":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "res":Landroid/content/res/Resources;
    :catchall_3d
    move-exception v12

    monitor-exit v13
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_3d

    throw v12

    .line 945
    .restart local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_40
    if-eqz v3, :cond_45

    .line 946
    :try_start_42
    invoke-direct {p0, v9}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 948
    :cond_45
    monitor-exit v13
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_3d

    .line 950
    .end local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "firstAdd":Z
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_46
    return-void
.end method

.method public addAppsNames(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_57

    .line 839
    iget-object v8, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v8

    .line 843
    const/4 v1, 0x0

    .line 844
    .local v1, "firstAdd":Z
    :try_start_8
    iget-object v7, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 845
    const/4 v1, 0x1

    .line 847
    :cond_11
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 848
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 849
    .local v4, "label":Ljava/lang/CharSequence;
    invoke-direct {p0, v5, p2}, Landroid/content/res/Resources;->getStringName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 850
    .local v6, "stringName":Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v6}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 851
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_15

    .line 852
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 853
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_15

    .line 854
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 856
    .local v3, "keyset":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 857
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, v5, p1}, Landroid/content/res/Resources;->loadNamesFromMetaData(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    goto :goto_3e

    .line 866
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keyset":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "stringName":Ljava/lang/CharSequence;
    :catchall_4e
    move-exception v7

    monitor-exit v8
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_4e

    throw v7

    .line 863
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_51
    if-eqz v1, :cond_56

    .line 864
    :try_start_53
    invoke-direct {p0, p2}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 866
    :cond_56
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_4e

    .line 868
    .end local v1    # "firstAdd":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_57
    return-void
.end method

.method public addAppsNames(Landroid/content/Context;Ljava/util/List;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_40

    .line 885
    iget-object v6, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v6

    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "firstAdd":Z
    :try_start_8
    iget-object v5, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 891
    const/4 v0, 0x1

    .line 893
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 894
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 895
    .local v2, "item":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I

    invoke-direct {p0, v5, v7, v3}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 897
    .local v4, "stringName":Ljava/lang/CharSequence;
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 902
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "stringName":Ljava/lang/CharSequence;
    :catchall_37
    move-exception v5

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_37

    throw v5

    .line 899
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3a
    if-eqz v0, :cond_3f

    .line 900
    :try_start_3c
    invoke-direct {p0, v3}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 902
    :cond_3f
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_37

    .line 904
    .end local v0    # "firstAdd":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_40
    return-void
.end method

.method public addMenuItemTitle(Landroid/content/res/TypedArray;)V
    .registers 6
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 803
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_1d

    .line 804
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 806
    .local v0, "itemTitle":Landroid/util/TypedValue;
    if-eqz v0, :cond_1d

    .line 807
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_1d

    .line 809
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "Menu"

    invoke-direct {p0, v1, v2, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 814
    .end local v0    # "itemTitle":Landroid/util/TypedValue;
    :cond_1d
    return-void
.end method

.method public addNotificationString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "stringNames"    # Ljava/lang/CharSequence;

    .prologue
    .line 966
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_10

    .line 967
    move-object v0, p2

    .line 969
    .local v0, "stringName":Ljava/lang/CharSequence;
    if-nez v0, :cond_b

    .line 970
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 973
    :cond_b
    if-eqz v0, :cond_10

    .line 974
    invoke-direct {p0, p1, v0}, Landroid/content/res/Resources;->addToNotiMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 977
    .end local v0    # "stringName":Ljava/lang/CharSequence;
    :cond_10
    return-void
.end method

.method public addPreferenceString(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "resid"    # I

    .prologue
    .line 789
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 790
    const-string v0, "Pref"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 792
    :cond_b
    return-void
.end method

.method public final finishPreloading()V
    .registers 2

    .prologue
    .line 3423
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_a

    .line 3424
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 3425
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 3427
    :cond_a
    return-void
.end method

.method public final flushLayoutCache()V
    .registers 7

    .prologue
    .line 3386
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 3388
    :try_start_3
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 3389
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_1f

    .line 3390
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 3391
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 3392
    .local v2, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_17

    .line 3393
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 3395
    :cond_17
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 3389
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3397
    .end local v2    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1f
    monitor-exit v4

    .line 3398
    return-void

    .line 3397
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_21
    move-exception v3

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v3
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2185
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 3377
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getBoolean(I)Z
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2068
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2069
    :try_start_4
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2070
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_f

    .line 2071
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2073
    :cond_f
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2074
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_27

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_27

    .line 2076
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_25

    :goto_23
    monitor-exit v2

    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_23

    .line 2078
    :cond_27
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2081
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_5a
    move-exception v1

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public getColor(I)I
    .registers 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1982
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1983
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1984
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_c

    .line 1985
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1987
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1988
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_22

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_22

    .line 1990
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1991
    iget v2, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    .line 2005
    :goto_21
    return v2

    .line 1992
    :cond_22
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5d

    .line 1993
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1998
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v2

    .line 1997
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_5d
    const/4 v2, 0x0

    :try_start_5e
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1998
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_5a

    .line 1999
    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2000
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2001
    :try_start_68
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_6e

    .line 2002
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2004
    :cond_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_74

    .line 2005
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_21

    .line 2004
    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v2
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2024
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->twGetColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .prologue
    .line 3144
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 3133
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDimension(I)F
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1665
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1666
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1667
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_e

    .line 1668
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1670
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1671
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    .line 1672
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1674
    :cond_21
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1677
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_54
    move-exception v1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1700
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1701
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1702
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_e

    .line 1703
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1705
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1706
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    .line 1707
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1710
    :cond_21
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1713
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_54
    move-exception v1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1737
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1738
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1739
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_e

    .line 1740
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1742
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1743
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    .line 1744
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1747
    :cond_21
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1750
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_54
    move-exception v1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .prologue
    .line 3123
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1818
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1819
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1820
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has unresolved theme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "attributes! Consider using Resources.getDrawable(int, Theme) or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Context.getDrawable(int)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1824
    :cond_3e
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1843
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1844
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1845
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_25

    .line 1846
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1850
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1851
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_29

    .line 1852
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1853
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    .line 1854
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    .line 1856
    :cond_1a
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1857
    :try_start_1d
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_23

    .line 1858
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1860
    :cond_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2c

    .line 1861
    return-object v0

    .line 1848
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_25
    const/4 v2, 0x0

    :try_start_26
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_c

    .line 1851
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_29

    throw v2

    .line 1860
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1890
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1909
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1910
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1911
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_3a

    .line 1912
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1916
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1925
    iget v2, v1, Landroid/util/TypedValue;->density:I

    if-lez v2, :cond_25

    iget v2, v1, Landroid/util/TypedValue;->density:I

    const v4, 0xffff

    if-eq v2, v4, :cond_25

    .line 1926
    iget v2, v1, Landroid/util/TypedValue;->density:I

    if-ne v2, p2, :cond_41

    .line 1927
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/util/TypedValue;->density:I

    .line 1932
    :cond_25
    :goto_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3e

    .line 1934
    invoke-virtual {p0, v1, p1, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1935
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2f

    .line 1936
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    .line 1938
    :cond_2f
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1939
    :try_start_32
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_38

    .line 1940
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1942
    :cond_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_4c

    .line 1943
    return-object v0

    .line 1914
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_3a
    const/4 v2, 0x0

    :try_start_3b
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_c

    .line 1932
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_3e
    move-exception v2

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_3e

    throw v2

    .line 1929
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_41
    :try_start_41
    iget v2, v1, Landroid/util/TypedValue;->density:I

    iget-object v4, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v2, v4

    div-int/2addr v2, p2

    iput v2, v1, Landroid/util/TypedValue;->density:I
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_3e

    goto :goto_25

    .line 1942
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public getFloat(I)F
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 2126
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2127
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2128
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_e

    .line 2129
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2131
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2132
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1d

    .line 2133
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    monitor-exit v2

    return v1

    .line 2135
    :cond_1d
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2137
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public getFraction(III)F
    .registers 9
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .prologue
    .line 1771
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1772
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1773
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_e

    .line 1774
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1776
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1777
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_21

    .line 1778
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1780
    :cond_21
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1783
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_54
    move-exception v1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 3179
    if-nez p1, :cond_b

    .line 3180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3183
    :cond_b
    :try_start_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result v0

    .line 3187
    :goto_f
    return v0

    .line 3184
    :catch_10
    move-exception v0

    .line 3187
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_f
.end method

.method public getIntArray(I)[I
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1607
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v1

    .line 1608
    .local v1, "res":[I
    if-eqz v1, :cond_32

    .line 1609
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_4f

    array-length v2, v1

    if-lez v2, :cond_4f

    .line 1610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_4f

    .line 1611
    aget v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IntPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1610
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1616
    .end local v0    # "i":I
    :cond_32
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Int array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1614
    :cond_4f
    return-object v1
.end method

.method public getInteger(I)I
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2096
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2097
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2098
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_e

    .line 2099
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2101
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2102
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_22

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_22

    .line 2104
    iget v1, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v2

    return v1

    .line 2106
    :cond_22
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2109
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_55
    move-exception v1

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2161
    const-string v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1955
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1956
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 1958
    .local v1, "movie":Landroid/graphics/Movie;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1963
    :goto_b
    return-object v1

    .line 1960
    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3433
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .registers 4
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1520
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1491
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, "raw":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1493
    .local v0, "formatted":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_17

    .line 1494
    invoke-direct {p0, p1, v0, p3}, Landroid/content/res/Resources;->addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1496
    :cond_17
    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v6, 0x1000004

    .line 1359
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v3

    .line 1360
    .local v3, "rule":Llibcore/icu/NativePluralRules;
    iget-object v4, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v3, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1362
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_37

    .line 1363
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_35

    .line 1364
    invoke-static {p2}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    .local v0, "quantityCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quantity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .end local v0    # "quantityCode":Ljava/lang/String;
    :cond_35
    move-object v2, v1

    .line 1375
    .end local v1    # "res":Ljava/lang/CharSequence;
    .local v2, "res":Ljava/lang/CharSequence;
    :goto_36
    return-object v2

    .line 1369
    .end local v2    # "res":Ljava/lang/CharSequence;
    .restart local v1    # "res":Ljava/lang/CharSequence;
    :cond_37
    iget-object v4, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v4, p1, v6}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1370
    if-eqz v1, :cond_5f

    .line 1371
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_5d

    .line 1372
    invoke-static {v6}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1373
    .restart local v0    # "quantityCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuantityIdOther="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .end local v0    # "quantityCode":Ljava/lang/String;
    :cond_5d
    move-object v2, v1

    .line 1375
    .end local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "res":Ljava/lang/CharSequence;
    goto :goto_36

    .line 1377
    .end local v2    # "res":Ljava/lang/CharSequence;
    .restart local v1    # "res":Ljava/lang/CharSequence;
    :cond_5f
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Plural resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " quantity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3271
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 3272
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 3273
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3214
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 3215
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 3216
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3233
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 3234
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 3235
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3252
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 3253
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 3254
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1428
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1429
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 1430
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1432
    :cond_b
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1456
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1457
    .local v1, "raw":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "formatted":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_13

    .line 1459
    invoke-direct {p0, p1, v0, p2}, Landroid/content/res/Resources;->addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1461
    :cond_13
    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1582
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1583
    .local v1, "res":[Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 1584
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_4b

    array-length v2, v1

    if-lez v2, :cond_4b

    .line 1585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_4b

    .line 1586
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StringPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1585
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1591
    .end local v0    # "i":I
    :cond_2e
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1589
    :cond_4b
    return-object v1
.end method

.method public getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 770
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 771
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 773
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1327
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1328
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_12

    .line 1329
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_11

    .line 1330
    const-string v1, "Text"

    invoke-direct {p0, v0, p1, v1}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1332
    :cond_11
    return-object v0

    .line 1334
    :cond_12
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 1538
    if-eqz p1, :cond_27

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1539
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_8
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_24

    if-eqz p1, :cond_24

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Def="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1542
    :cond_24
    if-eqz v0, :cond_29

    .end local v0    # "res":Ljava/lang/CharSequence;
    :goto_26
    return-object v0

    .line 1538
    :cond_27
    const/4 v0, 0x0

    goto :goto_8

    .restart local v0    # "res":Ljava/lang/CharSequence;
    :cond_29
    move-object v0, p2

    .line 1542
    goto :goto_26
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1557
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1558
    .local v1, "res":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_2e

    .line 1559
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_4b

    array-length v2, v1

    if-lez v2, :cond_4b

    .line 1560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_4b

    .line 1561
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1560
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1566
    .end local v0    # "i":I
    :cond_2e
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1564
    :cond_4b
    return-object v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2341
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2342
    .local v0, "found":Z
    if-eqz v0, :cond_a

    .line 2343
    return-void

    .line 2345
    :cond_a
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2393
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2394
    .local v0, "id":I
    if-eqz v0, :cond_e

    .line 2395
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2396
    return-void

    .line 2398
    :cond_e
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2364
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2365
    .local v0, "found":Z
    if-eqz v0, :cond_9

    .line 2366
    return-void

    .line 2368
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2210
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public isStoringRL()I
    .registers 2

    .prologue
    .line 1301
    sget v0, Landroid/content/res/Resources;->mStartStoringRL:I

    return v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .registers 4
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->twLoadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 28
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3482
    move-object/from16 v0, p0

    iget v3, v0, Landroid/content/res/Resources;->mAppIconResId:I

    move/from16 v0, p2

    if-ne v0, v3, :cond_61

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_61

    .line 3484
    :try_start_e
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    .line 3485
    .local v2, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/res/Resources;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v15

    .line 3486
    .local v15, "imageData":[B
    const/4 v13, 0x0

    .line 3487
    .local v13, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_61

    .line 3488
    new-instance v16, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3490
    .local v16, "is":Ljava/io/ByteArrayInputStream;
    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    .line 3491
    .local v21, "typedValue":Landroid/util/TypedValue;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Landroid/util/TypedValue;->density:I

    .line 3492
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v3, v0, v1, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3494
    const-string v3, "Resources"

    const-string v4, "EDM:ApplicationIcon got from EDM database "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_47} :catch_48

    .line 3613
    .end local v2    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v13    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v15    # "imageData":[B
    .end local v16    # "is":Ljava/io/ByteArrayInputStream;
    .end local v21    # "typedValue":Landroid/util/TypedValue;
    :goto_47
    return-object v13

    .line 3499
    :catch_48
    move-exception v14

    .line 3500
    .local v14, "e":Ljava/lang/Exception;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EDM: Get Icon EX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_61
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_8f

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_8f

    .line 3510
    const/4 v6, 0x1

    .line 3511
    .local v6, "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/ArrayMap;

    .line 3512
    .local v7, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    int-to-long v8, v3

    .line 3521
    .local v8, "key":J
    :goto_7b
    const/16 v17, 0x0

    .line 3522
    .local v17, "mDR":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v3, :cond_187

    .line 3525
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v8, v9, v1}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/ArrayMap;JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 3526
    .local v11, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_a6

    move-object v13, v11

    .line 3527
    goto :goto_47

    .line 3514
    .end local v6    # "isColorDrawable":Z
    .end local v7    # "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    .end local v8    # "key":J
    .end local v11    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "mDR":Landroid/graphics/drawable/Drawable;
    :cond_8f
    const/4 v6, 0x0

    .line 3515
    .restart local v6    # "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/ArrayMap;

    .line 3516
    .restart local v7    # "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    or-long v8, v4, v22

    .restart local v8    # "key":J
    goto :goto_7b

    .line 3532
    .restart local v11    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "mDR":Landroid/graphics/drawable/Drawable;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v8, v9, v1}, Landroid/content/res/Resources;->getRCCachedDrawable(Landroid/util/ArrayMap;JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 3533
    if-eqz v17, :cond_b7

    move-object/from16 v13, v17

    .line 3537
    goto :goto_47

    .line 3554
    :cond_b7
    if-eqz p3, :cond_1b0

    # getter for: Landroid/content/res/Resources$Theme;->mKey:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/content/res/Resources$Theme;->access$000(Landroid/content/res/Resources$Theme;)Ljava/lang/String;

    move-result-object v18

    .line 3555
    .local v18, "mThemeKey":Ljava/lang/String;
    :goto_bd
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 3556
    if-eqz p1, :cond_cf

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_cf

    .line 3560
    :cond_cf
    sget v3, Landroid/content/res/Resources;->mStartStoringRL:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_187

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_187

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_187

    invoke-static {}, Landroid/app/ActivityThread;->getCurrActivityFromThread()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_187

    .line 3562
    const/16 v19, 0x0

    .line 3564
    .local v19, "out":Ljava/io/FileWriter;
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v3, :cond_12f

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_12f

    .line 3566
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "rList-"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityThread;->getCurrActivityFromThread()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 3569
    :cond_12f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v3, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_182

    .line 3570
    new-instance v20, Ljava/io/FileWriter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_155} :catch_1ce
    .catchall {:try_start_f2 .. :try_end_155} :catchall_1f6

    .line 3571
    .end local v19    # "out":Ljava/io/FileWriter;
    .local v20, "out":Ljava/io/FileWriter;
    :try_start_155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 3572
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileWriter;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_180} :catch_244
    .catchall {:try_start_155 .. :try_end_180} :catchall_240

    move-object/from16 v19, v20

    .line 3577
    .end local v20    # "out":Ljava/io/FileWriter;
    .restart local v19    # "out":Ljava/io/FileWriter;
    :cond_182
    if-eqz v19, :cond_187

    .line 3579
    :try_start_184
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileWriter;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_1b4

    .line 3591
    .end local v11    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v18    # "mThemeKey":Ljava/lang/String;
    .end local v19    # "out":Ljava/io/FileWriter;
    :cond_187
    :goto_187
    if-eqz v6, :cond_219

    .line 3592
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3598
    .local v12, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_191
    if-eqz v12, :cond_22d

    .line 3599
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3608
    .local v10, "dr":Landroid/graphics/drawable/Drawable;
    :goto_19b
    if-eqz v10, :cond_1ad

    .line 3609
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    .line 3610
    invoke-direct/range {v3 .. v10}, Landroid/content/res/Resources;->cacheDrawable(Landroid/util/TypedValue;Landroid/content/res/Resources$Theme;ZLandroid/util/ArrayMap;JLandroid/graphics/drawable/Drawable;)V

    :cond_1ad
    move-object v13, v10

    .line 3613
    goto/16 :goto_47

    .line 3554
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v12    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v11    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1b0
    const-string v18, ""

    goto/16 :goto_bd

    .line 3580
    .restart local v18    # "mThemeKey":Ljava/lang/String;
    .restart local v19    # "out":Ljava/io/FileWriter;
    :catch_1b4
    move-exception v14

    .line 3581
    .local v14, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_187

    .line 3574
    .end local v14    # "e":Ljava/io/IOException;
    :catch_1ce
    move-exception v14

    .line 3575
    .restart local v14    # "e":Ljava/io/IOException;
    :goto_1cf
    :try_start_1cf
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d6
    .catchall {:try_start_1cf .. :try_end_1d6} :catchall_1f6

    .line 3577
    if-eqz v19, :cond_187

    .line 3579
    :try_start_1d8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileWriter;->close()V
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1db} :catch_1dc

    goto :goto_187

    .line 3580
    :catch_1dc
    move-exception v14

    .line 3581
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_187

    .line 3577
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_1f6
    move-exception v3

    :goto_1f7
    if-eqz v19, :cond_1fc

    .line 3579
    :try_start_1f9
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileWriter;->close()V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_1fc} :catch_1fd

    .line 3582
    :cond_1fc
    :goto_1fc
    throw v3

    .line 3580
    :catch_1fd
    move-exception v14

    .line 3581
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " IOException"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fc

    .line 3594
    .end local v11    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v18    # "mThemeKey":Ljava/lang/String;
    .end local v19    # "out":Ljava/io/FileWriter;
    :cond_219
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable$ConstantState;

    .restart local v12    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto/16 :goto_191

    .line 3600
    :cond_22d
    if-eqz v6, :cond_23a

    .line 3601
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v10, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v10    # "dr":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_19b

    .line 3603
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_23a
    invoke-direct/range {p0 .. p3}, Landroid/content/res/Resources;->loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "dr":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_19b

    .line 3577
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v12    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v11    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "mThemeKey":Ljava/lang/String;
    .restart local v20    # "out":Ljava/io/FileWriter;
    :catchall_240
    move-exception v3

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileWriter;
    .restart local v19    # "out":Ljava/io/FileWriter;
    goto :goto_1f7

    .line 3574
    .end local v19    # "out":Ljava/io/FileWriter;
    .restart local v20    # "out":Ljava/io/FileWriter;
    :catch_244
    move-exception v14

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileWriter;
    .restart local v19    # "out":Ljava/io/FileWriter;
    goto :goto_1cf
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 8
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3905
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3906
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 3907
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_e

    .line 3908
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 3910
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3911
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_25

    .line 3912
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 3915
    :cond_25
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3918
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_58
    move-exception v1

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 16
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3923
    if-eqz p2, :cond_89

    .line 3926
    :try_start_2
    iget-object v9, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_53

    .line 3928
    :try_start_5
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v8

    .line 3929
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v3, :cond_23

    .line 3930
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v8, v8, v2

    if-ne v8, p2, :cond_20

    .line 3933
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 3934
    .local v6, "result":Landroid/content/res/XmlResourceParser;
    if-eqz v6, :cond_1e

    .line 3935
    invoke-interface {v6, p1}, Landroid/content/res/XmlResourceParser;->setFilePath(Ljava/lang/String;)V

    .line 3937
    :cond_1e
    monitor-exit v9

    .line 3961
    :goto_1f
    return-object v6

    .line 3929
    .end local v6    # "result":Landroid/content/res/XmlResourceParser;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3943
    :cond_23
    iget-object v8, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v8, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 3945
    .local v0, "block":Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_88

    .line 3946
    iget v8, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v8, 0x1

    .line 3947
    .local v5, "pos":I
    if-lt v5, v3, :cond_32

    const/4 v5, 0x0

    .line 3948
    :cond_32
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 3949
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v8, v5

    .line 3950
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_3d

    .line 3951
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 3953
    :cond_3d
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v8, v5

    .line 3954
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v8, v5

    .line 3957
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 3958
    .restart local v6    # "result":Landroid/content/res/XmlResourceParser;
    if-eqz v6, :cond_4e

    .line 3959
    invoke-interface {v6, p1}, Landroid/content/res/XmlResourceParser;->setFilePath(Ljava/lang/String;)V

    .line 3961
    :cond_4e
    monitor-exit v9

    goto :goto_1f

    .line 3963
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    .end local v5    # "pos":I
    .end local v6    # "result":Landroid/content/res/XmlResourceParser;
    :catchall_50
    move-exception v8

    monitor-exit v9
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    :try_start_52
    throw v8
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 3964
    :catch_53
    move-exception v1

    .line 3965
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 3968
    .local v7, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3969
    throw v7

    .line 3963
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "block":Landroid/content/res/XmlBlock;
    .restart local v2    # "i":I
    .restart local v3    # "num":I
    :cond_88
    :try_start_88
    monitor-exit v9
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_50

    .line 3973
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_89
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from xml type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 2807
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 12
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 2823
    array-length v7, p2

    .line 2824
    .local v7, "len":I
    invoke-static {p0, v7}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "array":Landroid/content/res/TypedArray;
    move-object v8, p1

    .line 2830
    check-cast v8, Landroid/content/res/XmlBlock$Parser;

    .line 2831
    .local v8, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, v8, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->retrieveAttributes(J[I[I[I)Z

    .line 2834
    iput-object v8, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 2836
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1634
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 1635
    .local v1, "len":I
    if-gez v1, :cond_26

    .line 1636
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1640
    :cond_26
    invoke-static {p0, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1641
    .local v0, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 1642
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    .line 1644
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2229
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2230
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2231
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1c

    .line 2232
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2236
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_c
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_20

    .line 2237
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 2238
    .local v0, "res":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2239
    :try_start_14
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_1a

    .line 2240
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2242
    :cond_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_23

    .line 2243
    return-object v0

    .line 2234
    .end local v0    # "res":Ljava/io/InputStream;
    :cond_1c
    const/4 v2, 0x0

    :try_start_1d
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_c

    .line 2236
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_20

    throw v2

    .line 2242
    .restart local v0    # "res":Ljava/io/InputStream;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 9
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2260
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2263
    :try_start_4
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    move-result-object v2

    return-object v2

    .line 2265
    :catch_14
    move-exception v0

    .line 2266
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2268
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2269
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2296
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2297
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2298
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_2a

    .line 2299
    new-instance v2, Landroid/util/TypedValue;

    .end local v2    # "value":Landroid/util/TypedValue;
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2303
    .restart local v2    # "value":Landroid/util/TypedValue;
    :goto_c
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2304
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2e

    .line 2306
    :try_start_11
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_34
    .catchall {:try_start_11 .. :try_end_1e} :catchall_65

    move-result-object v3

    .line 2316
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2317
    :try_start_22
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_28

    .line 2318
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2320
    :cond_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_31

    return-object v3

    .line 2301
    :cond_2a
    const/4 v3, 0x0

    :try_start_2b
    iput-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_c

    .line 2304
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_2e

    throw v3

    .line 2320
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3

    .line 2308
    :catch_34
    move-exception v0

    .line 2309
    .local v0, "e":Ljava/lang/Exception;
    :try_start_35
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2313
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2314
    throw v1
    :try_end_65
    .catchall {:try_start_35 .. :try_end_65} :catchall_65

    .line 2316
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_65
    move-exception v3

    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2317
    :try_start_69
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_6f

    .line 2318
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2320
    :cond_6f
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_71

    throw v3

    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3332
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3335
    .local v2, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3337
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_38

    .line 3338
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3339
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:name attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3344
    :cond_38
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3346
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_a7

    .line 3347
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4e

    .line 3348
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3349
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3370
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_4a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3371
    return-void

    .line 3350
    :cond_4e
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_5e

    .line 3351
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_5c

    :goto_58
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4a

    :cond_5c
    move v4, v5

    goto :goto_58

    .line 3352
    :cond_5e
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_70

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_70

    .line 3354
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4a

    .line 3355
    :cond_70
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7d

    .line 3356
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4a

    .line 3358
    :cond_7d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3359
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3364
    :cond_a7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3365
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 3290
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 3293
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_32

    if-ne v2, v4, :cond_14

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_32

    .line 3294
    :cond_14
    if-eq v2, v4, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 3298
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3299
    .local v0, "nodeName":Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3300
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3301
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 3304
    :cond_2e
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 3307
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method recycleCachedStyledAttributes(Landroid/content/res/TypedArray;)V
    .registers 6
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 3979
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3980
    :try_start_3
    iget-object v0, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 3981
    .local v0, "cached":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v1, v1

    iget-object v3, p1, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v1, v3, :cond_11

    .line 3982
    :cond_f
    iput-object p1, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 3984
    :cond_11
    monitor-exit v2

    .line 3985
    return-void

    .line 3984
    .end local v0    # "cached":Landroid/content/res/TypedArray;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3152
    if-eqz p1, :cond_b

    .line 3153
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3154
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3156
    :cond_b
    return-void
.end method

.method public setRCable(ILjava/io/File;)V
    .registers 3
    .param p1, "value"    # I
    .param p2, "fileName"    # Ljava/io/File;

    .prologue
    .line 1306
    sput p1, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 1307
    iput-object p2, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1308
    return-void
.end method

.method public setRLRable(Ljava/lang/String;)V
    .registers 6
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 1128
    if-eqz p1, :cond_4f

    .line 1131
    iget-object v0, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v0, :cond_33

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1132
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rList-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1133
    :cond_33
    iget-object v0, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1134
    iget-object v0, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    .line 1137
    const/4 v0, 0x0

    sput v0, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 1140
    :cond_4f
    return-void
.end method

.method public final startPreloading()V
    .registers 4

    .prologue
    .line 3406
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3407
    :try_start_3
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    if-eqz v0, :cond_12

    .line 3408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3415
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 3410
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    .line 3411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 3412
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    .line 3413
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3414
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3415
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_f

    .line 3416
    return-void
.end method

.method public startRC(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "rFile"    # Ljava/io/File;

    .prologue
    .line 1032
    sget v3, Landroid/content/res/Resources;->CONCURRENCY:I

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    .line 1033
    const/4 v12, 0x0

    .line 1034
    .local v12, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v13, 0x0

    .line 1035
    .local v13, "in":Ljava/io/BufferedReader;
    const-wide/16 v8, 0x0

    .line 1036
    .local v8, "key":J
    const/16 v16, 0x0

    .line 1037
    .local v16, "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1040
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v3, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1041
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "rList-"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1042
    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v3, :cond_172

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_172

    sget v3, Landroid/content/res/Resources;->mStartStoringRL:I

    if-nez v3, :cond_172

    .line 1043
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_69} :catch_289
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_69} :catch_280
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_69} :catch_1ac
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_69} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_69} :catch_212
    .catchall {:try_start_16 .. :try_end_69} :catchall_23c

    .line 1044
    .end local v13    # "in":Ljava/io/BufferedReader;
    .local v14, "in":Ljava/io/BufferedReader;
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_171

    .line 1045
    const-string v3, "/"

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "arrayString":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1050
    .local v18, "resourceId":I
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_149

    .line 1051
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 1057
    :goto_86
    if-eqz v18, :cond_69

    .line 1058
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1059
    .local v5, "mTmp":Landroid/util/TypedValue;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1060
    iget-object v3, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_69

    .line 1061
    iget v3, v5, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const/16 v3, 0x20

    shl-long v20, v20, v3

    iget v3, v5, Landroid/util/TypedValue;->data:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    or-long v8, v20, v22

    .line 1065
    const/4 v10, 0x0

    .line 1066
    .local v10, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    check-cast v10, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1067
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v10, :cond_be

    .line 1072
    :cond_be
    iget-object v3, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1073
    .local v6, "file":Ljava/lang/String;
    const-wide/16 v20, 0x0

    cmp-long v3, v8, v20

    if-ltz v3, :cond_69

    if-eqz v6, :cond_69

    const-string v3, ".jpg"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    const-string v3, ".xml"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 1074
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongSparseArray;

    move-object/from16 v16, v0

    .line 1075
    if-nez v16, :cond_103

    .line 1076
    new-instance v17, Landroid/util/LongSparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/LongSparseArray;-><init>()V
    :try_end_f4
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_f4} :catch_133
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_69 .. :try_end_f4} :catch_152
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_f4} :catch_276
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_f4} :catch_26c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_f4} :catch_264
    .catchall {:try_start_69 .. :try_end_f4} :catchall_25c

    .line 1077
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .local v17, "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_f4 .. :try_end_101} :catch_28c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f4 .. :try_end_101} :catch_283
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_101} :catch_27a
    .catch Ljava/io/FileNotFoundException; {:try_start_f4 .. :try_end_101} :catch_270
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_101} :catch_267
    .catchall {:try_start_f4 .. :try_end_101} :catchall_25f

    move-object/from16 v16, v17

    .line 1079
    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_103
    :try_start_103
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v12, v0

    .line 1080
    if-eqz v12, :cond_115

    invoke-interface {v12}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_69

    :cond_115
    if-nez v10, :cond_69

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v19, v0

    new-instance v3, Landroid/content/res/Resources$RCCallable;

    move-object/from16 v4, p0

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v9}, Landroid/content/res/Resources$RCCallable;-><init>(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/content/res/Resources;J)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v12

    .line 1087
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9, v12}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V
    :try_end_131
    .catch Ljava/lang/InterruptedException; {:try_start_103 .. :try_end_131} :catch_133
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_103 .. :try_end_131} :catch_152
    .catch Ljava/lang/RuntimeException; {:try_start_103 .. :try_end_131} :catch_276
    .catch Ljava/io/FileNotFoundException; {:try_start_103 .. :try_end_131} :catch_26c
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_131} :catch_264
    .catchall {:try_start_103 .. :try_end_131} :catchall_25c

    goto/16 :goto_69

    .line 1096
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_133
    move-exception v11

    move-object v13, v14

    .line 1097
    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/lang/InterruptedException;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :goto_135
    :try_start_135
    const-string v3, "Resources"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13c
    .catchall {:try_start_135 .. :try_end_13c} :catchall_23c

    .line 1107
    if-eqz v13, :cond_148

    .line 1109
    :try_start_13e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1110
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_148} :catch_191
    .catch Ljava/lang/RuntimeException; {:try_start_13e .. :try_end_148} :catch_19a

    .line 1121
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_148
    :goto_148
    return-void

    .line 1053
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v18    # "resourceId":I
    :cond_149
    const/4 v3, 0x1

    :try_start_14a
    aget-object v3, v2, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;
    :try_end_150
    .catch Ljava/lang/InterruptedException; {:try_start_14a .. :try_end_150} :catch_133
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14a .. :try_end_150} :catch_152
    .catch Ljava/lang/RuntimeException; {:try_start_14a .. :try_end_150} :catch_276
    .catch Ljava/io/FileNotFoundException; {:try_start_14a .. :try_end_150} :catch_26c
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_150} :catch_264
    .catchall {:try_start_14a .. :try_end_150} :catchall_25c

    goto/16 :goto_86

    .line 1098
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_152
    move-exception v11

    move-object v13, v14

    .line 1099
    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :goto_154
    :try_start_154
    const-string v3, "Resources"

    const-string v4, "ExecutionException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15b
    .catchall {:try_start_154 .. :try_end_15b} :catchall_23c

    .line 1107
    if-eqz v13, :cond_148

    .line 1109
    :try_start_15d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1110
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_167} :catch_168
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_167} :catch_1a3

    goto :goto_148

    .line 1111
    :catch_168
    move-exception v11

    .line 1112
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_171
    move-object v13, v14

    .line 1107
    .end local v14    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :cond_172
    if-eqz v13, :cond_148

    .line 1109
    :try_start_174
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1110
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_17e} :catch_17f
    .catch Ljava/lang/RuntimeException; {:try_start_174 .. :try_end_17e} :catch_188

    goto :goto_148

    .line 1111
    :catch_17f
    move-exception v11

    .line 1112
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .line 1113
    .end local v11    # "e":Ljava/io/IOException;
    :catch_188
    move-exception v11

    .line 1114
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .line 1111
    .local v11, "e":Ljava/lang/InterruptedException;
    :catch_191
    move-exception v11

    .line 1112
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .line 1113
    .local v11, "e":Ljava/lang/InterruptedException;
    :catch_19a
    move-exception v11

    .line 1114
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .line 1113
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    :catch_1a3
    move-exception v11

    .line 1114
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .line 1100
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_1ac
    move-exception v11

    .line 1101
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    :goto_1ad
    :try_start_1ad
    const-string v3, "Resources"

    const-string v4, "RunTimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b4
    .catchall {:try_start_1ad .. :try_end_1b4} :catchall_23c

    .line 1107
    if-eqz v13, :cond_148

    .line 1109
    :try_start_1b6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1110
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1c0} :catch_1c1
    .catch Ljava/lang/RuntimeException; {:try_start_1b6 .. :try_end_1c0} :catch_1cb

    goto :goto_148

    .line 1111
    :catch_1c1
    move-exception v11

    .line 1112
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_148

    .line 1113
    .local v11, "e":Ljava/lang/RuntimeException;
    :catch_1cb
    move-exception v11

    .line 1114
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_148

    .line 1102
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_1d5
    move-exception v11

    .line 1103
    .local v11, "e":Ljava/io/FileNotFoundException;
    :goto_1d6
    :try_start_1d6
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f0
    .catchall {:try_start_1d6 .. :try_end_1f0} :catchall_23c

    .line 1107
    if-eqz v13, :cond_148

    .line 1109
    :try_start_1f2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1110
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1fc} :catch_1fe
    .catch Ljava/lang/RuntimeException; {:try_start_1f2 .. :try_end_1fc} :catch_208

    goto/16 :goto_148

    .line 1111
    :catch_1fe
    move-exception v11

    .line 1112
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_148

    .line 1113
    .local v11, "e":Ljava/io/FileNotFoundException;
    :catch_208
    move-exception v11

    .line 1114
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_148

    .line 1104
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_212
    move-exception v11

    .line 1105
    .local v11, "e":Ljava/io/IOException;
    :goto_213
    :try_start_213
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21a
    .catchall {:try_start_213 .. :try_end_21a} :catchall_23c

    .line 1107
    if-eqz v13, :cond_148

    .line 1109
    :try_start_21c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1110
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_226} :catch_228
    .catch Ljava/lang/RuntimeException; {:try_start_21c .. :try_end_226} :catch_232

    goto/16 :goto_148

    .line 1111
    :catch_228
    move-exception v11

    .line 1112
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_148

    .line 1113
    :catch_232
    move-exception v11

    .line 1114
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_148

    .line 1107
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catchall_23c
    move-exception v3

    :goto_23d
    if-eqz v13, :cond_249

    .line 1109
    :try_start_23f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1110
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_249} :catch_24a
    .catch Ljava/lang/RuntimeException; {:try_start_23f .. :try_end_249} :catch_253

    .line 1115
    :cond_249
    :goto_249
    throw v3

    .line 1111
    :catch_24a
    move-exception v11

    .line 1112
    .local v11, "e":Ljava/io/IOException;
    const-string v4, "Resources"

    const-string v7, "IOException"

    invoke-static {v4, v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_249

    .line 1113
    .end local v11    # "e":Ljava/io/IOException;
    :catch_253
    move-exception v11

    .line 1114
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v4, "Resources"

    const-string v7, "RuntimeException"

    invoke-static {v4, v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_249

    .line 1107
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catchall_25c
    move-exception v3

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_23d

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catchall_25f
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_23d

    .line 1104
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_264
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_213

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_267
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_213

    .line 1102
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_26c
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1d6

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_270
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1d6

    .line 1100
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_276
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1ad

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_27a
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1ad

    .line 1098
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_280
    move-exception v11

    goto/16 :goto_154

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_283
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_154

    .line 1096
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_289
    move-exception v11

    goto/16 :goto_135

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_28c
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_135
.end method

.method public twGetColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2036
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2037
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2038
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_20

    .line 2039
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2043
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2044
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_24

    .line 2045
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->twLoadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2046
    .local v0, "res":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2047
    :try_start_18
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_1e

    .line 2048
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2050
    :cond_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_27

    .line 2051
    return-object v0

    .line 2041
    .end local v0    # "res":Landroid/content/res/ColorStateList;
    :cond_20
    const/4 v2, 0x0

    :try_start_21
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_c

    .line 2044
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_24

    throw v2

    .line 2050
    .restart local v0    # "res":Landroid/content/res/ColorStateList;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2
.end method

.method twLoadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 16
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3804
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    iget v10, p1, Landroid/util/TypedValue;->data:I

    int-to-long v10, v10

    or-long v4, v8, v10

    .line 3808
    .local v4, "key":J
    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_41

    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_41

    .line 3811
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 3812
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_23

    move-object v1, v0

    .line 3882
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .local v1, "csl":Landroid/content/res/ColorStateList;
    :goto_22
    return-object v1

    .line 3816
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_23
    iget v8, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3817
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_3f

    .line 3818
    iget v8, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const/4 v9, 0x0

    iget v10, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v11, "color"

    invoke-direct {p0, v8, v9, v10, v11}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 3820
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3f
    move-object v1, v0

    .line 3824
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    goto :goto_22

    .line 3827
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_41
    invoke-direct {p0, v4, v5}, Landroid/content/res/Resources;->getCachedColorStateList(J)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3828
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_49

    move-object v1, v0

    .line 3829
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    goto :goto_22

    .line 3832
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_49
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 3833
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_55

    move-object v1, v0

    .line 3834
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    goto :goto_22

    .line 3837
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_55
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_72

    .line 3838
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resource is not a ColorStateList (color or path): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3842
    :cond_72
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3844
    .local v3, "file":Ljava/lang/String;
    const-string v8, ".xml"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 3845
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3847
    :try_start_85
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v9, "colorstatelist"

    invoke-virtual {p0, v3, p2, v8, v9}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 3849
    .local v7, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v7, p3}, Landroid/content/res/ColorStateList;->twCreateFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3850
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_94} :catch_b4

    .line 3859
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3866
    if-eqz v0, :cond_b1

    .line 3867
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_111

    .line 3868
    iget v8, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const/4 v9, 0x0

    iget v10, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v11, "color"

    invoke-direct {p0, v8, v9, v10, v11}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 3870
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_b1
    :goto_b1
    move-object v1, v0

    .line 3882
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    goto/16 :goto_22

    .line 3851
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .end local v7    # "rp":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :catch_b4
    move-exception v2

    .line 3852
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3853
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from color state list resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 3856
    .local v6, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3857
    throw v6

    .line 3861
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_e4
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": .xml extension required"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3873
    .restart local v7    # "rp":Landroid/content/res/XmlResourceParser;
    :cond_111
    iget-object v9, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3877
    :try_start_114
    iget-object v8, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3878
    monitor-exit v9

    goto :goto_b1

    :catchall_120
    move-exception v8

    monitor-exit v9
    :try_end_122
    .catchall {:try_start_114 .. :try_end_122} :catchall_120

    throw v8
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2845
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 27
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2853
    :try_start_7
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->resetStringNames(Landroid/content/res/Configuration;)V

    .line 2860
    if-eqz p3, :cond_12

    .line 2861
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2863
    :cond_12
    if-eqz p2, :cond_1d

    .line 2864
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2875
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 2877
    const v20, 0xfffffff

    .line 2878
    .local v20, "configChanges":I
    if-eqz p1, :cond_82

    .line 2879
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2880
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v21, v0

    .line 2881
    .local v21, "density":I
    if-nez v21, :cond_46

    .line 2882
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v21, v0

    .line 2885
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 2887
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_72

    .line 2888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2889
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2891
    :cond_72
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v20

    .line 2897
    invoke-static/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v20

    .line 2902
    .end local v21    # "density":I
    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_a1

    .line 2903
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2904
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2906
    :cond_a1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_c6

    .line 2907
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2908
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 2910
    :cond_c6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2912
    const/4 v5, 0x0

    .line 2913
    .local v5, "locale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_f0

    .line 2914
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/Resources;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2917
    :cond_f0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_1c3

    .line 2918
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2919
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2926
    .local v13, "height":I
    :goto_10a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2927
    .local v10, "keyboardHidden":I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_11d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11d

    .line 2930
    const/4 v10, 0x3

    .line 2932
    :cond_11d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 2948
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCachesLocked(Landroid/util/ArrayMap;I)V

    .line 2949
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCachesLocked(Landroid/util/ArrayMap;I)V

    .line 2955
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->mClearALDCLocked(Landroid/util/ArrayMap;I)V

    .line 2961
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2962
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 2963
    monitor-exit v22
    :try_end_1ac
    .catchall {:try_start_7 .. :try_end_1ac} :catchall_1d1

    .line 2964
    sget-object v3, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2965
    :try_start_1af
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v2, :cond_1c1

    .line 2966
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 2968
    :cond_1c1
    monitor-exit v3
    :try_end_1c2
    .catchall {:try_start_1af .. :try_end_1c2} :catchall_1d4

    .line 2969
    return-void

    .line 2922
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_1c3
    :try_start_1c3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2924
    .restart local v12    # "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13    # "height":I
    goto/16 :goto_10a

    .line 2963
    .end local v5    # "locale":Ljava/lang/String;
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v20    # "configChanges":I
    :catchall_1d1
    move-exception v2

    monitor-exit v22
    :try_end_1d3
    .catchall {:try_start_1c3 .. :try_end_1d3} :catchall_1d1

    throw v2

    .line 2968
    .restart local v5    # "locale":Ljava/lang/String;
    .restart local v10    # "keyboardHidden":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    .restart local v20    # "configChanges":I
    :catchall_1d4
    move-exception v2

    :try_start_1d5
    monitor-exit v3
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    throw v2
.end method
