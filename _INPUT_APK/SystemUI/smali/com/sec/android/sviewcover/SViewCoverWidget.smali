.class public Lcom/sec/android/sviewcover/SViewCoverWidget;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverWidget$1;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    }
.end annotation


# static fields
.field private static final ACTION_PICKUP_COMMON_DAY:Ljava/lang/String; = "com.bst.action.PICKUP_COMMON"

.field private static final ACTION_PICKUP_FESTIVAL_DAY:Ljava/lang/String; = "com.bst.action.PICKUP_FESTIVAL"

.field private static DBG:Z = false

.field private static final KEY_FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = "festival_effect_enabled"

.field private static final KEY_FESTIVAL_LIST:Ljava/lang/String; = "FestivalList"

.field private static final KEY_FESTIVAL_LOCKSCREEN_EFFECT_ENABLED:Ljava/lang/String; = "festival_effect_lockscreen_wallpaper"

.field private static TAG:Ljava/lang/String;

.field private static mUnlockAreaLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    sput-boolean v1, Lcom/sec/android/sviewcover/SViewCoverWidget;->DBG:Z

    .line 90
    const-string v0, "SViewCoverWidget"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;

    .line 99
    sput v1, Lcom/sec/android/sviewcover/SViewCoverWidget;->mUnlockAreaLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3541
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverWidget;->DBG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/sec/android/sviewcover/SViewCoverWidget;->mUnlockAreaLevel:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 86
    sput p0, Lcom/sec/android/sviewcover/SViewCoverWidget;->mUnlockAreaLevel:I

    return p0
.end method
