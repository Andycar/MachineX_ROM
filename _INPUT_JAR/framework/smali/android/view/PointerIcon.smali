.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$HoverEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOVERING_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final HOVERING_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final HOVERING_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final HOVERING_FLAG_ALWAYSSHOW:I = 0x1

.field public static final HOVERING_PENSELECT_POINTER_01:I = 0x15

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0xb

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0xc

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0xd

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0xe

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0xf

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x10

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x11

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x12

.field public static final HOVERING_SPENICON_CURSOR:I = 0x2

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x0

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field public static final HOVERING_SPENICON_HIDE:I = 0x13

.field public static final HOVERING_SPENICON_HOVERPOPUP_DEFAULT:I = 0x14

.field public static final HOVERING_SPENICON_MORE:I = 0xa

.field public static final HOVERING_SPENICON_MOVE:I = 0x5

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x6

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x7

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x8

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x9

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x3

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4

.field public static final MOUSEICON_CURSOR:I = 0x66

.field public static final MOUSEICON_CUSTOM:I = 0x64

.field public static final MOUSEICON_DEFAULT:I = 0x65

.field public static final MOUSEICON_DRAWING:I = 0x78

.field public static final MOUSEICON_MORE:I = 0x6e

.field public static final MOUSEICON_MOVE:I = 0x69

.field public static final MOUSEICON_POINTER_01:I = 0x6f

.field public static final MOUSEICON_POINTER_02:I = 0x70

.field public static final MOUSEICON_POINTER_03:I = 0x71

.field public static final MOUSEICON_POINTER_04:I = 0x72

.field public static final MOUSEICON_POINTER_05:I = 0x73

.field public static final MOUSEICON_POINTER_06:I = 0x74

.field public static final MOUSEICON_POINTER_07:I = 0x75

.field public static final MOUSEICON_POINTER_08:I = 0x76

.field public static final MOUSEICON_RESIZE_01:I = 0x6a

.field public static final MOUSEICON_RESIZE_02:I = 0x6b

.field public static final MOUSEICON_RESIZE_03:I = 0x6c

.field public static final MOUSEICON_RESIZE_04:I = 0x6d

.field public static final MOUSEICON_SPLIT_01:I = 0x67

.field public static final MOUSEICON_SPLIT_02:I = 0x68

.field public static final MOUSEICON_TRANSPARENT:I = 0x77

.field private static final MOUSE_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final MOUSE_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final MOUSE_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_ARROW_BIG:I = 0x3e9

.field public static final STYLE_CUSTOM:I = -0x1

.field private static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_NULL:I = 0x0

.field private static final STYLE_OEM_FIRST:I = 0x2710

.field public static final STYLE_SPOT_ANCHOR:I = 0x7d2

.field public static final STYLE_SPOT_FINGERHOVER:I = 0x2712

.field public static final STYLE_SPOT_HOVER:I = 0x7d0

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x2711

.field public static final STYLE_SPOT_TOUCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static mContext:Landroid/content/Context;

.field private static mCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mCustomIconCurrentId:I

.field private static mCustomIconId:I

.field private static mHoverBitmap:[Landroid/graphics/Bitmap;

.field private static mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

.field private static mIconType:I

.field private static volatile mLock:Ljava/lang/Object;

.field private static mMouseBitmap:[Landroid/graphics/Bitmap;

.field private static mMouseCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mMouseCustomIconCurrentId:I

.field private static mMouseCustomIconId:I

.field private static mMouseIconType:I

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static final sStaticInitWindow:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomDefaultIcon:Z

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private final mStyle:I

.field private mSystemIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 98
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 447
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 788
    sput v2, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 790
    sput-object v3, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 791
    sput v2, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 1012
    sput v2, Landroid/view/PointerIcon;->mIconType:I

    .line 1013
    sput v2, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1014
    sput-object v3, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1015
    sput v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1017
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitWindow:Ljava/lang/Object;

    .line 1018
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    .line 1023
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/PointerIcon;->mCustomDefaultIcon:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    iput p1, p0, Landroid/view/PointerIcon;->mStyle:I

    .line 164
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/PointerIcon$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/PointerIcon;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .registers 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 294
    if-nez p0, :cond_a

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_a
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 299
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 300
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 301
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 302
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 303
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static getHoverBitmapInstance()[Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1028
    const-string v0, "PointerIcon"

    const-string v1, "getHoverBitmapInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1a

    .line 1030
    sget-object v1, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1031
    const/4 v0, 0x5

    :try_start_f
    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1032
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_17

    .line 1036
    :goto_14
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    return-object v0

    .line 1032
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    .line 1034
    :cond_1a
    const-string v0, "PointerIcon"

    const-string v1, "HoverBitmap instance already exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public static getHoverEffectInstance()Landroid/view/PointerIcon$HoverEffect;
    .registers 3

    .prologue
    .line 1042
    const-string v0, "PointerIcon"

    const-string v1, "getHoverEffectInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v0, :cond_1d

    .line 1044
    sget-object v1, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1045
    :try_start_e
    new-instance v0, Landroid/view/PointerIcon$HoverEffect;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$1;)V

    sput-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1046
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1a

    .line 1050
    :goto_17
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    return-object v0

    .line 1046
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0

    .line 1048
    :cond_1d
    const-string v0, "PointerIcon"

    const-string v1, "HoverEffect instance already exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method static getInputManager()Landroid/hardware/input/IInputManager;
    .registers 2

    .prologue
    .line 1371
    sget-object v1, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    .line 1372
    :try_start_3
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_13

    .line 1373
    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    .line 1375
    :cond_13
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    monitor-exit v1

    return-object v0

    .line 1376
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static getMouseBitmapInstance()[Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 797
    const-string v0, "PointerIcon"

    const-string v1, "getMouseBitmapInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1a

    .line 799
    sget-object v1, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    const/4 v0, 0x5

    :try_start_f
    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 801
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_17

    .line 805
    :goto_14
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    return-object v0

    .line 801
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    .line 803
    :cond_1a
    const-string v0, "PointerIcon"

    const-string v1, "MouseBitmap instance already exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    const/16 v7, 0x2711

    const/16 v6, 0x3e9

    const/4 v10, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/16 v8, 0x3e8

    .line 203
    if-nez p0, :cond_13

    .line 204
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_13
    if-nez p1, :cond_18

    .line 208
    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 276
    :goto_17
    return-object v4

    .line 212
    :cond_18
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1e

    .line 213
    sput-object p0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    .line 216
    :cond_1e
    if-ne p1, v7, :cond_74

    .line 217
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    if-nez v4, :cond_74

    .line 218
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    if-nez v4, :cond_38

    .line 219
    const-string v4, "PointerIcon"

    const-string v5, "getSystemIcon mHoverBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p0, v8}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_17

    .line 223
    :cond_38
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_5f

    .line 224
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_17

    .line 226
    :cond_5f
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_17

    .line 232
    :cond_74
    if-ne p1, v6, :cond_c7

    .line 233
    sget v4, Landroid/view/PointerIcon;->mMouseIconType:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_c7

    .line 234
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v5

    if-nez v4, :cond_89

    .line 235
    invoke-static {p0, v8}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_17

    .line 237
    :cond_89
    sget-object v4, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_b1

    .line 238
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    sget-object v6, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_17

    .line 240
    :cond_b1
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_17

    .line 245
    :cond_c7
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 247
    .local v3, "styleIndex":I
    if-nez v3, :cond_d5

    if-eq p1, v7, :cond_d5

    if-eq p1, v6, :cond_d5

    .line 248
    invoke-static {v8}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 253
    :cond_d5
    if-eq p1, v7, :cond_d9

    if-ne p1, v6, :cond_10b

    .line 254
    :cond_d9
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    const v6, 0x1010567

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 255
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 256
    .local v2, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    :goto_eb
    if-ne v2, v10, :cond_124

    .line 266
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing theme resources for pointer icon style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-ne p1, v8, :cond_11e

    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto/16 :goto_17

    .line 258
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "resourceId":I
    :cond_10b
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    const v6, 0x101050b

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 261
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 262
    .restart local v2    # "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_eb

    .line 267
    :cond_11e
    invoke-static {p0, v8}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_17

    .line 270
    :cond_124
    new-instance v1, Landroid/view/PointerIcon;

    invoke-direct {v1, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 271
    .local v1, "icon":Landroid/view/PointerIcon;
    const/high16 v4, -0x1000000

    and-int/2addr v4, v2

    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_135

    .line 272
    iput v2, v1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    :goto_132
    move-object v4, v1

    .line 276
    goto/16 :goto_17

    .line 274
    :cond_135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, p0, v4, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_132
.end method

.method private static getSystemIconStyleIndex(I)I
    .registers 8
    .param p0, "style"    # I

    .prologue
    const/16 v1, 0x13

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 575
    sparse-switch p0, :sswitch_data_ac

    .line 679
    :goto_9
    :pswitch_9
    :sswitch_9
    return v0

    .line 580
    :sswitch_a
    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    packed-switch v0, :pswitch_data_ca

    move v0, v1

    .line 622
    goto :goto_9

    :pswitch_11
    move v0, v1

    .line 582
    goto :goto_9

    .line 584
    :pswitch_13
    const/16 v0, 0x14

    goto :goto_9

    .line 586
    :pswitch_16
    const/16 v0, 0x15

    goto :goto_9

    .line 588
    :pswitch_19
    const/16 v0, 0x16

    goto :goto_9

    .line 590
    :pswitch_1c
    const/16 v0, 0x17

    goto :goto_9

    .line 592
    :pswitch_1f
    const/16 v0, 0x18

    goto :goto_9

    .line 594
    :pswitch_22
    const/16 v0, 0x19

    goto :goto_9

    .line 596
    :pswitch_25
    const/16 v0, 0x1a

    goto :goto_9

    .line 598
    :pswitch_28
    const/16 v0, 0x1b

    goto :goto_9

    .line 600
    :pswitch_2b
    const/16 v0, 0x1c

    goto :goto_9

    .line 602
    :pswitch_2e
    const/16 v0, 0x1d

    goto :goto_9

    .line 604
    :pswitch_31
    const/16 v0, 0x1e

    goto :goto_9

    .line 606
    :pswitch_34
    const/16 v0, 0x1f

    goto :goto_9

    .line 608
    :pswitch_37
    const/16 v0, 0x20

    goto :goto_9

    .line 610
    :pswitch_3a
    const/16 v0, 0x21

    goto :goto_9

    .line 612
    :pswitch_3d
    const/16 v0, 0x22

    goto :goto_9

    .line 614
    :pswitch_40
    const/16 v0, 0x23

    goto :goto_9

    .line 616
    :pswitch_43
    const/16 v0, 0x24

    goto :goto_9

    .line 618
    :pswitch_46
    const/16 v0, 0x25

    goto :goto_9

    .line 620
    :pswitch_49
    const/16 v0, 0x26

    goto :goto_9

    :sswitch_4c
    move v0, v2

    .line 625
    goto :goto_9

    :sswitch_4e
    move v0, v3

    .line 627
    goto :goto_9

    :sswitch_50
    move v0, v4

    .line 629
    goto :goto_9

    .line 635
    :sswitch_52
    const-string v1, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemIconStyleIndex style: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sget v1, Landroid/view/PointerIcon;->mIconType:I

    packed-switch v1, :pswitch_data_f6

    .line 676
    :pswitch_6f
    const/16 v0, 0x9

    goto :goto_9

    .line 638
    :pswitch_72
    const/16 v0, 0xb

    goto :goto_9

    .line 640
    :pswitch_75
    const/16 v0, 0xc

    goto :goto_9

    .line 642
    :pswitch_78
    const/16 v0, 0xd

    goto :goto_9

    .line 644
    :pswitch_7b
    const/16 v0, 0xe

    goto :goto_9

    .line 646
    :pswitch_7e
    const/16 v0, 0xf

    goto :goto_9

    .line 648
    :pswitch_81
    const/16 v0, 0x10

    goto :goto_9

    .line 650
    :pswitch_84
    const/16 v0, 0x11

    goto :goto_9

    .line 652
    :pswitch_87
    const/16 v0, 0x12

    goto :goto_9

    .line 654
    :pswitch_8a
    const/16 v0, 0xa

    goto/16 :goto_9

    :pswitch_8e
    move v0, v2

    .line 658
    goto/16 :goto_9

    :pswitch_91
    move v0, v3

    .line 660
    goto/16 :goto_9

    :pswitch_94
    move v0, v4

    .line 662
    goto/16 :goto_9

    .line 664
    :pswitch_97
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 666
    :pswitch_9a
    const/4 v0, 0x5

    goto/16 :goto_9

    .line 668
    :pswitch_9d
    const/4 v0, 0x6

    goto/16 :goto_9

    .line 670
    :pswitch_a0
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 672
    :pswitch_a3
    const/16 v0, 0x8

    goto/16 :goto_9

    .line 674
    :pswitch_a7
    const/16 v0, 0x27

    goto/16 :goto_9

    .line 575
    nop

    :sswitch_data_ac
    .sparse-switch
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_a
        0x7d0 -> :sswitch_4c
        0x7d1 -> :sswitch_4e
        0x7d2 -> :sswitch_50
        0x2711 -> :sswitch_52
        0x2712 -> :sswitch_9
    .end sparse-switch

    .line 580
    :pswitch_data_ca
    .packed-switch 0x65
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch

    .line 636
    :pswitch_data_f6
    .packed-switch 0x2
        :pswitch_72
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8a
        :pswitch_9
        :pswitch_8e
        :pswitch_91
        :pswitch_94
        :pswitch_97
        :pswitch_9a
        :pswitch_9d
        :pswitch_a0
        :pswitch_a3
        :pswitch_6f
        :pswitch_a7
    .end packed-switch
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 329
    if-nez p0, :cond_b

    .line 330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_b
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 334
    .local v0, "icon":Landroid/view/PointerIcon;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 335
    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .prologue
    .line 525
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 530
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_4
    const-string/jumbo v7, "pointer-icon"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 532
    sget-object v7, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 534
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 535
    .local v1, "bitmapRes":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 536
    .local v4, "hotSpotX":F
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 537
    .local v5, "hotSpotY":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_32
    .catchall {:try_start_4 .. :try_end_25} :catchall_3b

    .line 541
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 544
    if-nez v1, :cond_40

    .line 545
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 538
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bitmapRes":I
    .end local v4    # "hotSpotX":F
    .end local v5    # "hotSpotY":F
    :catch_32
    move-exception v3

    .line 539
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_33
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exception parsing pointer icon resource."

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 541
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_3b
    move-exception v7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v7

    .line 549
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "bitmapRes":I
    .restart local v4    # "hotSpotX":F
    .restart local v5    # "hotSpotY":F
    :cond_40
    if-nez p1, :cond_52

    .line 550
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 554
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_46
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v7, :cond_57

    .line 555
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 552
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_52
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_46

    .line 560
    :cond_57
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 561
    iput v4, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 562
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 563
    return-void
.end method

.method public static registerHoveringSpenCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .registers 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1064
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    if-nez p0, :cond_15

    .line 1069
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v4, -0x1

    .line 1089
    :goto_14
    return v4

    .line 1073
    :cond_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1074
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1076
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1077
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1079
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_90

    .line 1083
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1085
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1086
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1087
    move-object v0, v2

    .line 1089
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_90
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_14
.end method

.method public static registerMouseCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .registers 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 815
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    if-nez p0, :cond_15

    .line 818
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v4, -0x1

    .line 838
    :goto_14
    return v4

    .line 822
    :cond_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 823
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 825
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 826
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 828
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_90

    .line 832
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 834
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 835
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 836
    move-object v0, v2

    .line 838
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_90
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_14
.end method

.method public static removeHoveringSpenCustomIcon(I)V
    .registers 4
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1099
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeHoveringSpenCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeHoveringSpenCustomIcon(I)V

    .line 1101
    return-void
.end method

.method public static removeMouseCustomIcon(I)V
    .registers 4
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 848
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMouseCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeMouseCustomIcon(I)V

    .line 850
    return-void
.end method

.method public static setCustomDefaultIcon(ILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustomDefaultIcon(), deviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconType is CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 697
    .local v0, "icon":Landroid/view/PointerIcon;
    if-nez p1, :cond_30

    .line 698
    const-string v1, "PointerIcon"

    const-string/jumbo v2, "setCustomDefaultIcon(), invalid customIcon."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_2f
    return-void

    .line 702
    :cond_30
    iput-object p1, v0, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 703
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/PointerIcon;->mCustomDefaultIcon:Z

    .line 705
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3f

    .line 706
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_2f

    .line 707
    :cond_3f
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4a

    .line 708
    const/16 v1, 0x64

    iget-object v2, v0, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_2f

    .line 710
    :cond_4a
    const-string v1, "PointerIcon"

    const-string/jumbo v2, "setCustomDefaultIcon(), invalid device type."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static setDisableCustomDefaultIcon()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    const-string v1, "PointerIcon"

    const-string/jumbo v2, "setDisableCustomDefaultIcon()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 722
    .local v0, "icon":Landroid/view/PointerIcon;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/PointerIcon;->mCustomDefaultIcon:Z

    .line 723
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 724
    return-void
.end method

.method public static setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I
    .registers 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1347
    move v0, p0

    .line 1350
    .local v0, "iReaIconId":I
    if-gez v0, :cond_5

    .line 1351
    sget v0, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1353
    :cond_5
    if-gez v0, :cond_8

    .line 1354
    const/4 v0, 0x0

    .line 1357
    :cond_8
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_12

    .line 1358
    invoke-static {}, Landroid/view/PointerIcon;->getHoverBitmapInstance()[Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1366
    :cond_12
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1367
    return v0
.end method

.method public static setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1323
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2c

    .line 1324
    const/4 v0, 0x0

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1328
    :goto_8
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 1329
    invoke-static {}, Landroid/view/PointerIcon;->getHoverBitmapInstance()[Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1331
    :cond_12
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    .line 1332
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1334
    :cond_23
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aput-object p0, v0, v1

    .line 1335
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    return v0

    .line 1326
    :cond_2c
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    goto :goto_8
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I
    .registers 11
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1181
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIcon2 iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1188
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1190
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1191
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1193
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_80

    .line 1197
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1200
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1201
    move-object v3, v7

    .line 1204
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_80
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v4, 0x0

    move v2, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .registers 12
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1225
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1231
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1233
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1234
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1236
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_80

    .line 1240
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1243
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1244
    move-object v3, v7

    .line 1247
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_80
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(II)V
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(III)V

    .line 1111
    return-void
.end method

.method public static setHoveringSpenIcon(III)V
    .registers 10
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1124
    new-instance v6, Landroid/view/PointerIcon;

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/view/PointerIcon;-><init>(I)V

    .line 1126
    .local v6, "icon":Landroid/view/PointerIcon;
    iget-boolean v0, v6, Landroid/view/PointerIcon;->mCustomDefaultIcon:Z

    if-eqz v0, :cond_18

    iget-object v0, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    .line 1127
    const/4 v0, 0x0

    iget-object v1, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I

    .line 1131
    :goto_17
    return-void

    .line 1129
    :cond_18
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    goto :goto_17
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;)V
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1142
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(IILandroid/graphics/Point;I)V

    .line 1143
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;I)V
    .registers 11
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1155
    new-instance v6, Landroid/view/PointerIcon;

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/view/PointerIcon;-><init>(I)V

    .line 1157
    .local v6, "icon":Landroid/view/PointerIcon;
    iget-boolean v0, v6, Landroid/view/PointerIcon;->mCustomDefaultIcon:Z

    if-eqz v0, :cond_18

    iget-object v0, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    .line 1158
    const/4 v0, 0x0

    iget-object v1, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p2, p3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    .line 1162
    :goto_17
    return-void

    .line 1160
    :cond_18
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    goto :goto_17
.end method

.method public static setIcon(II)V
    .registers 6
    .param p0, "deviceType"    # I
    .param p1, "iconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 733
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2b

    .line 735
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 743
    :goto_2a
    return-void

    .line 737
    :cond_2b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_32

    .line 738
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setMouseIcon(II)V

    goto :goto_2a

    .line 741
    :cond_32
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 752
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x2

    if-ne p0, v0, :cond_27

    .line 754
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 762
    :goto_26
    return-void

    .line 756
    :cond_27
    const/4 v0, 0x3

    if-ne p0, v0, :cond_30

    .line 757
    const/16 v0, 0x64

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_26

    .line 760
    :cond_30
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .registers 6
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 772
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2b

    .line 774
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    .line 782
    :goto_2a
    return-void

    .line 776
    :cond_2b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_34

    .line 777
    const/16 v0, 0x64

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    goto :goto_2a

    .line 780
    :cond_34
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public static setMouseCustomIcon(ILandroid/graphics/Bitmap;)I
    .registers 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 985
    move v0, p0

    .line 987
    .local v0, "iReaIconId":I
    if-gez v0, :cond_5

    .line 988
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 991
    :cond_5
    if-gez v0, :cond_8

    .line 992
    const/4 v0, 0x0

    .line 995
    :cond_8
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_12

    .line 996
    invoke-static {}, Landroid/view/PointerIcon;->getMouseBitmapInstance()[Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 999
    :cond_12
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1f

    .line 1000
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1003
    :cond_1f
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1004
    return v0
.end method

.method public static setMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 967
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2c

    .line 968
    const/4 v0, 0x0

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 972
    :goto_8
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 973
    invoke-static {}, Landroid/view/PointerIcon;->getMouseBitmapInstance()[Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 975
    :cond_12
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    .line 976
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 978
    :cond_23
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aput-object p0, v0, v1

    .line 979
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    return v0

    .line 970
    :cond_2c
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    goto :goto_8
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;)I
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 891
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I
    .registers 11
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 897
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon2 iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 900
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 902
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 903
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 905
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_80

    .line 909
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 912
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 913
    move-object v3, v7

    .line 916
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_80
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 922
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .registers 12
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 928
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 931
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 933
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 934
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 936
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_80

    .line 940
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 943
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 944
    move-object v3, v7

    .line 947
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_80
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(II)V
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(III)V

    .line 856
    return-void
.end method

.method public static setMouseIcon(III)V
    .registers 10
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 861
    new-instance v6, Landroid/view/PointerIcon;

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/view/PointerIcon;-><init>(I)V

    .line 863
    .local v6, "icon":Landroid/view/PointerIcon;
    iget-boolean v0, v6, Landroid/view/PointerIcon;->mCustomDefaultIcon:Z

    if-eqz v0, :cond_19

    iget-object v0, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    if-ne p0, v0, :cond_19

    .line 864
    const/16 v0, 0x65

    iget-object v1, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p2}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I

    .line 868
    :goto_18
    return-void

    .line 866
    :cond_19
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    goto :goto_18
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;)V
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 873
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(IILandroid/graphics/Point;I)V

    .line 874
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;I)V
    .registers 11
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 879
    new-instance v6, Landroid/view/PointerIcon;

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/view/PointerIcon;-><init>(I)V

    .line 881
    .local v6, "icon":Landroid/view/PointerIcon;
    iget-boolean v0, v6, Landroid/view/PointerIcon;->mCustomDefaultIcon:Z

    if-eqz v0, :cond_19

    iget-object v0, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    if-ne p0, v0, :cond_19

    .line 882
    const/16 v0, 0x65

    iget-object v1, v6, Landroid/view/PointerIcon;->mCustomDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p2, p3}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    .line 886
    :goto_18
    return-void

    .line 884
    :cond_19
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    goto :goto_18
.end method

.method public static setMousePointerIcon(IILandroid/graphics/Point;)Z
    .registers 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    .line 953
    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_27

    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    if-ne v0, p0, :cond_27

    .line 954
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseCustomIcon IconType is same."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/PointerIcon;->mMouseIconType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v0, 0x0

    .line 961
    :goto_26
    return v0

    .line 957
    :cond_27
    sput p0, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 958
    sput p1, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 959
    sput-object p2, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 961
    const/4 v0, 0x1

    goto :goto_26
.end method

.method public static setPointerIcon(IILandroid/graphics/Point;)Z
    .registers 9
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    const/16 v5, 0x14

    const/4 v2, 0x0

    .line 1257
    if-ne p0, v5, :cond_b

    sget v3, Landroid/view/PointerIcon;->mCustomIconId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 1311
    :goto_a
    return v2

    .line 1259
    :cond_b
    if-ne p0, v5, :cond_e

    .line 1260
    const/4 p0, 0x1

    .line 1263
    :cond_e
    sget v3, Landroid/view/PointerIcon;->mIconType:I

    if-eqz v3, :cond_32

    sget v3, Landroid/view/PointerIcon;->mIconType:I

    if-ne v3, p0, :cond_32

    .line 1264
    const-string v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoveringSpenCustomIcon IconType is same."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1268
    :cond_32
    const/4 v0, 0x0

    .line 1269
    .local v0, "bNeedPlaySound":Z
    const/4 v1, 0x0

    .line 1271
    .local v1, "bNeedPlayVibrate":Z
    sput p0, Landroid/view/PointerIcon;->mIconType:I

    .line 1272
    sput p1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1273
    sput-object p2, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1275
    const/16 v3, 0xa

    if-ne p0, v3, :cond_c5

    .line 1276
    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_61

    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spen_feedback_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_61

    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spen_feedback_sound_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_61

    .line 1278
    const/4 v0, 0x1

    .line 1281
    :cond_61
    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_84

    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spen_feedback_haptic"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_84

    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spen_feedback_haptic_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_84

    .line 1283
    const/4 v1, 0x1

    .line 1287
    :cond_84
    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_99

    sget-object v3, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_99

    .line 1288
    const/4 v0, 0x1

    .line 1289
    const/4 v1, 0x1

    .line 1292
    :cond_99
    if-eqz v0, :cond_aa

    .line 1293
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v2, :cond_a5

    .line 1294
    invoke-static {}, Landroid/view/PointerIcon;->getHoverEffectInstance()Landroid/view/PointerIcon$HoverEffect;

    move-result-object v2

    sput-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1297
    :cond_a5
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v2, p0}, Landroid/view/PointerIcon$HoverEffect;->playSound(I)V

    .line 1301
    :cond_aa
    if-eqz v1, :cond_c5

    .line 1302
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v2, :cond_b6

    .line 1303
    invoke-static {}, Landroid/view/PointerIcon;->getHoverEffectInstance()Landroid/view/PointerIcon$HoverEffect;

    move-result-object v2

    sput-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1305
    :cond_b6
    sget-object v2, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c5

    .line 1306
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v2, p0}, Landroid/view/PointerIcon$HoverEffect;->playVibrator(I)V

    .line 1311
    :cond_c5
    const/4 v2, 0x1

    goto/16 :goto_a
.end method

.method private throwIfIconIsNotLoaded()V
    .registers 3

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/view/PointerIcon;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_e

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The icon is not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_e
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    const/4 v1, 0x0

    .line 566
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_17

    .line 567
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_17
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2d

    .line 570
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_2d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 501
    if-ne p0, p1, :cond_5

    .line 521
    :cond_4
    :goto_4
    return v1

    .line 505
    :cond_5
    if-eqz p1, :cond_b

    instance-of v3, p1, Landroid/view/PointerIcon;

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 506
    goto :goto_4

    :cond_d
    move-object v0, p1

    .line 509
    check-cast v0, Landroid/view/PointerIcon;

    .line 510
    .local v0, "otherIcon":Landroid/view/PointerIcon;
    iget v3, p0, Landroid/view/PointerIcon;->mStyle:I

    iget v4, v0, Landroid/view/PointerIcon;->mStyle:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_1e

    :cond_1c
    move v1, v2

    .line 512
    goto :goto_4

    .line 515
    :cond_1e
    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_38

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    :cond_38
    move v1, v2

    .line 518
    goto :goto_4
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 408
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHotSpotX()F
    .registers 2

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 423
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    return v0
.end method

.method public getHotSpotY()F
    .registers 2

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 438
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    return v0
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isNullIcon()Z
    .registers 2

    .prologue
    .line 371
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    if-nez p1, :cond_a

    .line 351
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_a
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    :cond_12
    move-object v0, p0

    .line 361
    :goto_13
    return-object v0

    .line 358
    :cond_14
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 359
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_13
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 484
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-eqz v0, :cond_21

    .line 487
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_21

    .line 489
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 490
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 491
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 494
    :cond_21
    return-void
.end method
