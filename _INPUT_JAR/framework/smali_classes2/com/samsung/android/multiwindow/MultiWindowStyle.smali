.class public Lcom/samsung/android/multiwindow/MultiWindowStyle;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;,
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SPECIFIC_TASK_ID:I = -0x1

.field public static final FLOATING_LAYER:I = 0x1

.field public static final MINIMIZE_LAYER:I = 0x2

.field public static final NORMAL_LAYER:I = 0x0

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED:I = 0x2

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED_ALL:I = 0x10

.field public static final NOTIFY_REASON_FOCUS_CHANGED:I = 0x4

.field public static final NOTIFY_REASON_SIZE_CHANGED:I = 0x1

.field public static final NOTIFY_REASON_STYLE_CHANGED:I = 0x0

.field public static final NOTIFY_REASON_TAB_MODE_CHANGED:I = 0x8

.field public static final OPTION_EXTERNAL_DISP:I = 0x400

.field public static final OPTION_FIXED_ORIENTATION:I = 0x400000

.field public static final OPTION_FIXED_RATIO:I = 0x8000

.field public static final OPTION_FIXED_SIZE:I = 0x10000

.field public static final OPTION_FORCE_CONTROL_RESIZE:I = 0x4000

.field public static final OPTION_FORCE_MAKE_PHONEWINDOW:I = 0x40000

.field public static final OPTION_FORCE_MULTIPLE_TASK:I = 0x80000

.field public static final OPTION_FORCE_TITLE_BAR:I = 0x20

.field public static final OPTION_FULLSCREEN_MINIMIZABLE:I = 0x20000

.field public static final OPTION_FULLSCREEN_ONLY:I = 0x200000

.field public static final OPTION_HIDDEN:I = 0x8

.field public static final OPTION_INHERIT_STACK:I = 0x2000

.field public static final OPTION_ISOLATED_SPLIT:I = 0x1000

.field public static final OPTION_LAUNCH_IN_SAME:I = 0x100000

.field public static final OPTION_MINIMIZED:I = 0x4

.field public static final OPTION_NO_TITLE_BAR:I = 0x10

.field public static final OPTION_PENWINDOWABLE:I = 0x1000000

.field public static final OPTION_PINUP:I = 0x1

.field public static final OPTION_RESIZE:I = 0x2

.field public static final OPTION_SCALE:I = 0x800

.field public static final OPTION_TAB_MODE:I = 0x800000

.field public static final OPTION_TOOLKIT:I = 0x200

.field private static final STYLE_ACTIVITY_FORCE_TITLE_BAR:Ljava/lang/String; = "forceTitleBar"

.field private static final STYLE_ACTIVITY_FULLSCREEN_ONLY:Ljava/lang/String; = "fullscreenOnly"

.field private static final STYLE_ACTIVITY_RESIZE_ONLY:Ljava/lang/String; = "resizeOnly"

.field private static final STYLE_FIXED_ORIENTATION:Ljava/lang/String; = "fixedOrientation"

.field private static final STYLE_FIXED_RATIO:Ljava/lang/String; = "fixedRatio"

.field private static final STYLE_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field private static final STYLE_FREESTYLE_ONLY:Ljava/lang/String; = "freestyleOnly"

.field private static final STYLE_ISOLATED_SPLIT:Ljava/lang/String; = "isolatedSplit"

.field private static final STYLE_NO_TITLE_BAR:Ljava/lang/String; = "noTitleBar"

.field public static final TYPE_CASCADE:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_SPLIT:I = 0x1

.field private static final UNIQUE_OPTIONS:I = 0x1023032

.field private static final UNITARY_OPTIONS:I = 0x200000

.field public static final ZONE_A:I = 0x3

.field public static final ZONE_B:I = 0xc

.field public static final ZONE_C:I = 0x1

.field public static final ZONE_D:I = 0x2

.field public static final ZONE_E:I = 0x4

.field public static final ZONE_F:I = 0x8

.field public static final ZONE_FULL:I = 0xf

.field public static final ZONE_UNKNOWN:I

.field public static sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private static sStyleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTypeStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppRequestOrientation:I

.field private mBounds:Landroid/graphics/Rect;

.field private mIsNull:Z

.field private mIsolatedCenterPoint:Landroid/graphics/Point;

.field private mOnTransaction:I

.field private mOptionFlags:I

.field private mScale:F

.field private mSpecificTaskId:I

.field private mType:I

.field private mZone:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 592
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 979
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    .line 980
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    .line 982
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "noTitleBar"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "forceTitleBar"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "isolatedSplit"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedSize"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedRatio"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedOrientation"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fullscreenOnly"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    const-string v1, "freestyleOnly"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;-><init>(I)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 46
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    .line 56
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    .line 226
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 534
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 720
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 344
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 345
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 46
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    .line 56
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    .line 226
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 534
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 720
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 358
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 46
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    .line 56
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    .line 226
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 534
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 720
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 351
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->readFromParcel(Landroid/os/Parcel;)V

    .line 352
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 4
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 46
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    .line 56
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    .line 226
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 534
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 720
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 366
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "isNull"    # Z

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 46
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    .line 56
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    .line 226
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 534
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 720
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 726
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 727
    return-void
.end method

.method public static cleanMultiWindowLaunchInSame(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1110
    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1111
    .local v0, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    .line 1112
    return-void
.end method

.method public static cleanMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 3
    .param p0, "mws"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1118
    if-nez p0, :cond_3

    .line 1122
    :goto_2
    return-void

    .line 1121
    :cond_3
    const/high16 v0, 0x100000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_2
.end method

.method public static isMultiWindowLaunchInSame(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1094
    .local v0, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v1

    return v1
.end method

.method public static isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 2
    .param p0, "mws"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1101
    if-nez p0, :cond_4

    .line 1102
    const/4 v0, 0x0

    .line 1103
    :goto_3
    return v0

    :cond_4
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    goto :goto_3
.end method

.method private parseStyleOptions(Ljava/lang/String;)V
    .registers 8
    .param p1, "stylesString"    # Ljava/lang/String;

    .prologue
    .line 1057
    if-nez p1, :cond_3

    .line 1075
    :goto_2
    return-void

    .line 1061
    :cond_3
    const/4 v1, 0x0

    .line 1062
    .local v1, "options":I
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1063
    .local v3, "styles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1064
    .local v2, "style":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1065
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v1, v4

    goto :goto_17

    .line 1066
    :cond_39
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1068
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_50

    const/16 v4, 0x800

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1069
    :cond_50
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto :goto_17

    .line 1074
    .end local v2    # "style":Ljava/lang/String;
    :cond_60
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    goto :goto_2
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setScale(F)V

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setSpecificTaskId(I)V

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 584
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    .line 586
    :cond_32
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 587
    return-void
.end method

.method public static skipMultiWindowLaunch(Landroid/content/Intent;)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1081
    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1082
    .local v0, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v0, :cond_b

    .line 1083
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v0    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 1085
    .restart local v0    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_b
    const/high16 v1, 0x100000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1086
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1087
    return-void
.end method

.method public static zoneToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "zone"    # I

    .prologue
    .line 674
    packed-switch p0, :pswitch_data_2c

    .line 690
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invaild vaue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 676
    :pswitch_17
    const-string v0, "ZONE_A"

    goto :goto_16

    .line 678
    :pswitch_1a
    const-string v0, "ZONE_B"

    goto :goto_16

    .line 680
    :pswitch_1d
    const-string v0, "ZONE_C"

    goto :goto_16

    .line 682
    :pswitch_20
    const-string v0, "ZONE_D"

    goto :goto_16

    .line 684
    :pswitch_23
    const-string v0, "ZONE_E"

    goto :goto_16

    .line 686
    :pswitch_26
    const-string v0, "ZONE_F"

    goto :goto_16

    .line 688
    :pswitch_29
    const-string v0, "ZONE_UNKNOWN"

    goto :goto_16

    .line 674
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1d
        :pswitch_20
        :pswitch_17
        :pswitch_23
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_26
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 783
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 784
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    return-object v1
.end method

.method public convertToWindowMode()I
    .registers 5

    .prologue
    .line 775
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V

    .line 776
    .local v0, "mode":Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getCurrentMode()I

    move-result v1

    return v1
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 5
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 606
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-eq v1, v2, :cond_8

    .line 629
    :cond_7
    :goto_7
    return v0

    .line 610
    :cond_8
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    if-ne v1, v2, :cond_7

    .line 614
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    if-ne v1, v2, :cond_7

    .line 618
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 622
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 626
    :cond_2c
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 629
    const/4 v0, 0x1

    goto :goto_7
.end method

.method findBaseZone(I)I
    .registers 3
    .param p1, "requestZone"    # I

    .prologue
    .line 246
    const/16 v0, 0xf

    .line 247
    .local v0, "baseZone":I
    packed-switch p1, :pswitch_data_e

    .line 263
    :goto_5
    :pswitch_5
    return v0

    .line 250
    :pswitch_6
    const/16 v0, 0xf

    .line 251
    goto :goto_5

    .line 255
    :pswitch_9
    const/4 v0, 0x3

    .line 256
    goto :goto_5

    .line 260
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_5

    .line 247
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getAppRequestOrientation()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFirstZone()Z
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_a

    .line 318
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 315
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 311
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getIsolatedCenterPoint()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLayer()I
    .registers 3

    .prologue
    const/4 v0, 0x2

    .line 142
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-ne v1, v0, :cond_f

    .line 143
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 148
    :goto_c
    return v0

    .line 146
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    .line 148
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getOppositeZone()I
    .registers 3

    .prologue
    .line 270
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->findBaseZone(I)I

    move-result v0

    .line 271
    .local v0, "baseZone":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    return v1
.end method

.method public getOptionFlags()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    return v0
.end method

.method public getSpecificTaskId()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    return v0
.end method

.method public getZone()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    return v0
.end method

.method public getZoneByType()I
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    packed-switch v0, :pswitch_data_c

    .line 287
    const/16 v0, 0xf

    :goto_7
    return v0

    .line 281
    :pswitch_8
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    goto :goto_7

    .line 278
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public getZoneLevel()I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_c

    .line 337
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 328
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 334
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 325
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public hasUnitaryOption()Z
    .registers 3

    .prologue
    .line 1128
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isCascade()Z
    .registers 3

    .prologue
    .line 162
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "option"    # I

    .prologue
    .line 481
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isInValidZone()Z
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_a

    .line 304
    :pswitch_5
    const/4 v0, 0x1

    :goto_6
    return v0

    .line 301
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_6

    .line 294
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isMultiPhoneWindowNeeded(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    .line 496
    .local v0, "infos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_18
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 500
    :cond_27
    const/4 v1, 0x1

    .line 502
    :goto_28
    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public isNormal()Z
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNull()Z
    .registers 2

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    return v0
.end method

.method public isOnTransaction()Z
    .registers 2

    .prologue
    .line 1149
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    if-eqz v0, :cond_6

    .line 1150
    const/4 v0, 0x1

    .line 1152
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSplit()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSupportingMultiWindow()Z
    .registers 2

    .prologue
    .line 488
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .registers 15
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1021
    if-nez p2, :cond_3

    .line 1054
    :cond_2
    :goto_2
    return-void

    .line 1025
    :cond_3
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1026
    .local v3, "applicationMetaData":Landroid/os/Bundle;
    if-eqz v3, :cond_12

    .line 1027
    const-string v10, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Ljava/lang/String;)V

    .line 1030
    :cond_12
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1031
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_1f

    .line 1032
    const-string v10, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Ljava/lang/String;)V

    .line 1035
    :cond_1f
    const/16 v10, 0x1000

    invoke-virtual {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1037
    const-string v0, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    .line 1038
    .local v0, "METADATA_ISOLATED_SPLIT_CENTER_POINT_X":Ljava/lang/String;
    const-string v1, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    .line 1040
    .local v1, "METADATA_ISOLATED_SPLIT_CENTER_POINT_Y":Ljava/lang/String;
    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1041
    .local v8, "isolatedCenterPointXResId":I
    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1045
    .local v9, "isolatedCenterPointYResId":I
    :try_start_37
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 1046
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1047
    .local v4, "centerPointX":I
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1048
    .local v5, "centerPointY":I
    iget-object v10, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_53
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_53} :catch_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_53} :catch_56

    goto :goto_2

    .line 1049
    .end local v4    # "centerPointX":I
    .end local v5    # "centerPointY":I
    .end local v6    # "context":Landroid/content/Context;
    :catch_54
    move-exception v10

    goto :goto_2

    .line 1050
    :catch_56
    move-exception v7

    .line 1051
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public releaseOnTransaction()V
    .registers 2

    .prologue
    .line 1159
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    .line 1160
    return-void
.end method

.method public removeUnitaryOption()V
    .registers 3

    .prologue
    .line 1135
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 1136
    return-void
.end method

.method public resetSpecificTaskId()V
    .registers 2

    .prologue
    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    .line 77
    return-void
.end method

.method public setAppRequestOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 109
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 509
    if-nez p1, :cond_b

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rect is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_18

    .line 516
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 525
    :goto_17
    return-void

    .line 520
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_24

    .line 521
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    goto :goto_17

    .line 523
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_17
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 541
    return-void
.end method

.method public setNull(Z)V
    .registers 2
    .param p1, "isNull"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 734
    return-void
.end method

.method public setOnTransaction()V
    .registers 2

    .prologue
    .line 1142
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    .line 1143
    return-void
.end method

.method public setOption(II)V
    .registers 5
    .param p1, "option"    # I
    .param p2, "mask"    # I

    .prologue
    .line 463
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 464
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 465
    return-void
.end method

.method public setOption(IZ)V
    .registers 5
    .param p1, "option"    # I
    .param p2, "value"    # Z

    .prologue
    .line 471
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 472
    if-eqz p2, :cond_e

    .line 473
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 475
    :cond_e
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    .line 63
    return-void
.end method

.method public setSpecificTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    .line 84
    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 3
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 637
    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .registers 7
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 643
    if-nez p1, :cond_3

    .line 668
    :goto_2
    return-void

    .line 646
    :cond_3
    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 647
    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 648
    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    .line 650
    if-nez p2, :cond_18

    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_40

    .line 651
    :cond_18
    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 652
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 660
    :goto_22
    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2f

    .line 661
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    .line 663
    :cond_2f
    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_3c

    .line 664
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 667
    :cond_3c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    goto :goto_2

    .line 654
    :cond_40
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const/high16 v2, 0x200000

    and-int v0, v1, v2

    .line 655
    .local v0, "unitaryOption":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v2, 0x1023032

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 656
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v3, -0x1023033

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 657
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 658
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    goto :goto_22
.end method

.method public setType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 125
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_16

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    .line 128
    :cond_16
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v1, 0x1023032

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 129
    return-void
.end method

.method public setType(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "resetOptions"    # Z

    .prologue
    .line 97
    if-eqz p2, :cond_6

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 102
    :goto_5
    return-void

    .line 100
    :cond_6
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    goto :goto_5
.end method

.method public setZone(I)V
    .registers 2
    .param p1, "zone"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 233
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 699
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string/jumbo v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string v1, ", option=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 708
    const-string v1, ", isNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNull()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 710
    const-string v1, ", isolatedCenterPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 712
    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 714
    const-string v1, ", specificTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 716
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 563
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 566
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2c

    .line 569
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 574
    :goto_26
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 575
    return-void

    .line 572
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26
.end method
