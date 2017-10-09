.class public Lcom/android/keyguard/sec/KeyguardFestivalEffect;
.super Ljava/lang/Object;
.source "KeyguardFestivalEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardFestivalEffect$5;
    }
.end annotation


# static fields
.field private static final ACTION_BST_DATE_CHANGED:Ljava/lang/String; = "com.bst.action.DATE_CHANGED"

.field public static final ACTION_FESTIVAL_EFFECT_CHANGED:Ljava/lang/String; = "android.intent.action.FESTIVAL_EFFECT_CHANGED"

.field private static final ACTION_PICKUP_COMMON_DAY:Ljava/lang/String; = "com.bst.action.PICKUP_COMMON"

.field private static final ACTION_PICKUP_FESTIVAL_DAY:Ljava/lang/String; = "com.bst.action.PICKUP_FESTIVAL"

.field private static final CHARGE_AUTUMN_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.chargeeffect.autumn.ChargingAutumnView"

.field private static final CHARGE_SPRING_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.chargeeffect.spring.ChargingSpringView"

.field private static final CHARGE_SUMMER_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.chargeeffect.summer.ChargingSummerView"

.field private static final CHARGE_WINTER_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.chargeeffect.winter.ChargingView"

.field public static final CURRENT_FESTIVAL_WALLPAPER_CLASS:Ljava/lang/String; = "current_festival_wallpaper_class"

.field public static final CURRENT_FESTIVAL_WALLPAPER_PACKAGE:Ljava/lang/String; = "current_festival_wallpaper_package"

.field public static final CURRENT_THEME_PACKAGE:Ljava/lang/String; = "current_sec_theme_package"

.field private static final EMERGENCY_MODE_DELAY:I = 0x2710

.field private static final FESTIVAL_EFFECT_CHARGE_TYPE:Ljava/lang/String; = "festival_charging_effect"

.field public static final HOME_THEME_CHANGED:Ljava/lang/String; = "com.sec.android.app.themechooser.HOME_THEME_CHANGED"

.field private static final KEY_FESTIVAL_EFFECT_CHARGE_ENABLED:Ljava/lang/String; = "festival_effect_charging_effect"

.field private static final KEY_FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = "festival_effect_enabled"

.field private static final KEY_FESTIVAL_EFFECT_LOCK_SCREEN_ENABLED:Ljava/lang/String; = "festival_effect_lockscreen_wallpaper"

.field private static final KEY_FESTIVAL_EFFECT_UNLOCK_ENABLED:Ljava/lang/String; = "festival_effect_unlock_effect"

.field public static final LOCKSCREEN_WALLPAPER_TYPE:Ljava/lang/String; = "lockscreen_wallpaper"

.field private static final MSG_CHANGE_WALLPAPER_TYPE:I = 0x12f0

.field private static final MSG_CHARGE_STATE_CHANGED:I = 0x12f4

.field private static final TAG:Ljava/lang/String; = "KeyguardFestivalEffect"

.field private static final UNLOCK_AUTUMN_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.unlockeffect.autumn.KeyguardEffectViewAutumn"

.field private static final UNLOCK_SPRING_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.unlockeffect.spring.KeyguardEffectViewSpring"

.field private static final UNLOCK_SUMMER_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.unlockeffect.summer.KeyguardEffectViewSummer"

.field private static final UNLOCK_WINTER_CLASS_NAME:Ljava/lang/String; = "com.android.keyguard.sec.festivaleffect.unlockeffect.winter.KeyguardEffectViewWinter"


# instance fields
.field public final CURRENT_FESTIVAL_EFFECT_PACKAGE:Ljava/lang/String;

.field private final FESTIVAL_EFFECT_RES_DEFAULT_PACKAGE:Ljava/lang/String;

.field private FESTIVAL_STRING_LIST:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mCharger:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFestivalName:Ljava/lang/String;

.field private mCurrentPackageName:Ljava/lang/String;

.field private final mDateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDateChangeSender:Landroid/app/PendingIntent;

.field private mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mEmergencyModeRunnable:Ljava/lang/Runnable;

.field private mFestivalChargeArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFestivalChargeEnabled:Z

.field private mFestivalEnabled:Z

.field private mFestivalId:I

.field private mFestivalLockScreenEnabled:Z

.field private mFestivalUnlocArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFestivalUnlockEnabled:Z

.field private mFestivalXmlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstRun:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsCommonDay:Z

.field private mPackageName:Ljava/lang/String;

.field public mScreenFlag:Z

.field private mSeasonId:I

.field public mShowFlag:Z

.field private mUnlockViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "current_festival_effect_package"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->CURRENT_FESTIVAL_EFFECT_PACKAGE:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentFestivalName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mPackageName:Ljava/lang/String;

    const-string v1, "festivalString"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->FESTIVAL_STRING_LIST:Ljava/lang/String;

    const-string v1, "com.bst.festivalrespreload1"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->FESTIVAL_EFFECT_RES_DEFAULT_PACKAGE:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mScreenFlag:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mShowFlag:Z

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalId:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mSeasonId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeArray:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalUnlocArray:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFirstRun:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCharger:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    new-instance v1, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;-><init>(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEmergencyModeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;-><init>(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mDateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;-><init>(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->initFestivalMap()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "festival_effect_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalEnabled:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "festival_effect_lockscreen_wallpaper"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalLockScreenEnabled:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "festival_effect_unlock_effect"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalUnlockEnabled:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "festival_effect_charging_effect"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeEnabled:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, -0x2

    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    :goto_4
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "current_festival_effect_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->setFestivalEffectReceiver()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->setContentObservers()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bst.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mDateChangeSender:Landroid/app/PendingIntent;

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->setDateChangeAlarm()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCharger:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCharger:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mSeasonId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/KeyguardFestivalEffect;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mSeasonId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalChangedMessage()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->FESTIVAL_STRING_LIST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFirstRun:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFirstRun:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEmergencyModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->change(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->changeChargeAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->setDateChangeAlarm()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalLockScreenEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalLockScreenEnabled:Z

    return p1
.end method

.method private change(IZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    if-eqz v3, :cond_5

    const-string v2, "com.bst.festivalrespreload1"

    const-string v1, ""

    const-string v3, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change festivalId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mIsCommonDay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFestivalId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalId:I

    if-eq v3, p1, :cond_7

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalId:I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->createXMLFestivalView(Ljava/lang/String;IZ)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "current_festival_wallpaper_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "current_festival_wallpaper_class"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "lock_wallpaper_animation"

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    const-string v3, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packagename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  festivalname"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v1, v8}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->createXMLFestivalView(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentFestivalName:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mScreenFlag:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mShowFlag:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalChangedMessage()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string v3, ""

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentFestivalName:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    if-eqz v3, :cond_e

    if-ne p1, v7, :cond_e

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "current_festival_wallpaper_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "current_festival_wallpaper_class"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "lock_wallpaper_animation"

    :cond_9
    if-nez v2, :cond_a

    const-string v2, ""

    :cond_a
    const-string v3, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packagename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  festivalname"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentFestivalName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_c
    invoke-direct {p0, v2, v1, v8}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->createXMLFestivalView(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentFestivalName:Ljava/lang/String;

    :cond_d
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalChangedMessage()V

    goto/16 :goto_1

    :cond_e
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    if-nez v3, :cond_5

    if-ne p1, v7, :cond_5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_f
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    const-string v1, ""

    const-string v3, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPackageName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  festivalname = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalChangedMessage()V

    const-string v3, "KeyguardFestivalEffect"

    const-string v4, "sendFestivalChangedMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private changeChargeAnimation()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->GetShowState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "festival_charging_effect"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeChargeAnimation:  settingValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeEffectEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isFestivalToday()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->getCurrentSeason()I

    move-result v1

    :goto_0
    const-string v3, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeChargeAnimation:  season = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->createView(Ljava/lang/String;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendChargeChangedMessage()V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createView(Ljava/lang/String;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const-string v3, "KeyguardFestivalEffect"

    const-string v4, "create view failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createXMLFestivalView(Ljava/lang/String;IZ)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "KeyguardFestivalEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmlfilename ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1, p1, p3}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->isParserSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardFestivalEffect"

    const-string v3, "Create xmlView success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "KeyguardFestivalEffect"

    const-string v3, "Create xmlView fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createXMLFestivalView(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "festivalname ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->isParserSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardFestivalEffect"

    const-string v2, "Create xmlView success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "KeyguardFestivalEffect"

    const-string v2, "Create xmlView fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFestivalMap()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const-string v1, "new_year"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "chinese_new_year"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "lantern"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "dragon_boat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "mid_autumn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "christmas"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const-string v1, "valentine"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "chinese_valentine"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalXmlArray:Landroid/util/SparseArray;

    const/16 v1, 0x3e7

    const-string v2, "birthday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.chargeeffect.spring.ChargingSpringView"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.chargeeffect.summer.ChargingSummerView"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.chargeeffect.autumn.ChargingAutumnView"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.chargeeffect.winter.ChargingView"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalUnlocArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.unlockeffect.spring.KeyguardEffectViewSpring"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalUnlocArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.unlockeffect.summer.KeyguardEffectViewSummer"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalUnlocArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.unlockeffect.autumn.KeyguardEffectViewAutumn"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalUnlocArray:Landroid/util/SparseArray;

    const-string v1, "com.android.keyguard.sec.festivaleffect.unlockeffect.winter.KeyguardEffectViewWinter"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private sendChargeChangedMessage()V
    .locals 3

    const/16 v2, 0x12f4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendFestivalChangedMessage()V
    .locals 3

    const/16 v2, 0x12f0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setContentObservers()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;-><init>(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "festival_effect_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "festival_effect_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_festival_effect_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_sec_theme_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "festival_charging_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_festival_wallpaper_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_festival_wallpaper_class"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setDateChangeAlarm()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private setFestivalEffectReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.bst.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.FESTIVAL_EFFECT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.themechooser.HOME_THEME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mDateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method public GetScreenState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mScreenFlag:Z

    return v0
.end method

.method public GetShowState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mShowFlag:Z

    return v0
.end method

.method public SetScreenState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mScreenFlag:Z

    return-void
.end method

.method public SetShowState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mShowFlag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCharger:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mShowFlag:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->changeChargeAnimation()V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mShowFlag:Z

    goto :goto_0
.end method

.method public getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mChargeViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method public getCurrentSeason()I
    .locals 4

    invoke-static {}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->getCurrentSeason()I

    move-result v0

    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSeason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getFestivalString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    sget-object v9, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v9, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->festivalNameArray:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    packed-switch v3, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "KeyguardFestivalEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "festivalString ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFestivalView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFirstRun:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryFestivalToday(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalString()V

    invoke-direct {p0, v0, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->change(IZ)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFirstRun:Z

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v1
.end method

.method public getUnlockEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 3

    invoke-static {}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->getCurrentSeason()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalUnlocArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->createView(Ljava/lang/String;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mUnlockViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mUnlockViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v2
.end method

.method public isActivated()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChargeEffectEnable()Z
    .locals 3

    const-string v0, "KeyguardFestivalEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChargeEffectEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCharger:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalLockScreenEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChargeState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mCharger:Z

    return v0
.end method

.method public isCommonDayShowFestivalWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mIsCommonDay:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "KeyguardFestivalEffect"

    const-string v2, "DEVICE_PROVISIONED : 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguardfestivaleffect is open ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalLockScreenEnabled:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFestivalToday()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryFestivalToday(Landroid/content/ContentResolver;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnlockEffectEnabled()Z
    .locals 3

    const-string v0, "KeyguardFestivalEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUnlockEffectEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalChargeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalLockScreenEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mFestivalEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 3

    sget-object v1, Lcom/android/keyguard/sec/KeyguardFestivalEffect$5;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewController$Foreground:[I

    invoke-virtual {p3}, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p2

    :pswitch_0
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getCurrentSeason()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    instance-of v1, p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    new-instance p2, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    invoke-direct {p2, p1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public pauseAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mEffectViewBase:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->resumeAnimation()V

    :cond_0
    return-void
.end method

.method public sendFestivalString()V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->FESTIVAL_STRING_LIST:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "FestivalList"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "KeyguardFestivalEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PICKUP_FESTIVAL_DAY ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "FestivalList"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v2, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "FestivalList"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "KeyguardFestivalEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ACTION_PICKUP_COMMON_DAY ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "FestivalList"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
