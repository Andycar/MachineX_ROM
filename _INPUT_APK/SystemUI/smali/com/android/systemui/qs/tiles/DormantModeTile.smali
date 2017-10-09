.class public Lcom/android/systemui/qs/tiles/DormantModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DormantModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_ALLOW_EXCEPTION:Ljava/lang/String; = "dnd_allowexception"

.field private static final DB_CAR_MODE_ON:Ljava/lang/String; = "car_mode_on"

.field private static final DB_DORMANT_SWITCH_ONOFF:Ljava/lang/String; = "dormant_switch_onoff"

.field private static final DORMANTMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_dormantmode_checked"

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xb

.field private static final MSG_ZEN_MODE_CHANGED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DormantModeTile"

.field private static final TAG_INTERRUPTS:Ljava/lang/String; = "InterruptsTile"


# instance fields
.field private isRegistered:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mCarmodeObserver:Landroid/database/ContentObserver;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandlerInterrupt:Landroid/os/Handler;

.field private mIsCarMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenMode:I

.field private mZenModeAvailable:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 99
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->isRegistered:Z

    .line 113
    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;

    .line 495
    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 711
    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$10;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 765
    new-instance v0, Lcom/android/systemui/qs/tiles/DormantModeTile$11;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile$11;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mCarmodeObserver:Landroid/database/ContentObserver;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 138
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenModeAvailable:Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "car_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 147
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "car_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mCarmodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->updateState()V

    .line 180
    return-void

    .line 143
    :cond_0
    iput v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    goto :goto_0

    .line 149
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/tiles/DormantModeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DormantModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DormantModeTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DormantModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenModeAvailable:Z

    return p1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    .line 420
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    .line 458
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 422
    :pswitch_1
    const v0, 0x7f02057e

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 423
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const v0, 0x7f020580

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 429
    :pswitch_2
    const v0, 0x7f02057d

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 430
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const v0, 0x7f02057f

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 507
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setListening(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 510
    return-void

    .line 509
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private isAllOptionsDisabled()Z
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 513
    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "deviceType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_incoming_calls"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 517
    .local v2, "incoming":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_notifications"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 519
    .local v4, "notification":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_alarm_and_timer"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 521
    .local v0, "alarm":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_led_indicator"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 524
    .local v3, "indicator":I
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mDeleteLEDBlocking:Z

    if-eqz v6, :cond_2

    .line 526
    :cond_1
    const/4 v3, 0x0

    .line 530
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DormantModeTile;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DormantModeTile;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 531
    :cond_3
    const/4 v2, 0x0

    .line 534
    :cond_4
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    .line 535
    const/4 v5, 0x1

    .line 537
    :cond_5
    return v5
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 625
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 629
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 631
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onDisplayDormantModeAlert()V
    .locals 8

    .prologue
    .line 542
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 544
    .local v2, "mDormantModeAlertLayout":Landroid/view/LayoutInflater;
    const v5, 0x7f0400a5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 547
    .local v3, "mDormantModeAlertView":Landroid/view/View;
    const v5, 0x7f0e0335

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 549
    .local v4, "mDormantModeCheckBox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/qs/tiles/DormantModeTile$4;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/qs/tiles/DormantModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 564
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0d038b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 568
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/DormantModeTile$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/DormantModeTile$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    const v5, 0x7f0e0334

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0389

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 600
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 602
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 605
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/qs/tiles/DormantModeTile$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 612
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 613
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 614
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 618
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 619
    return-void

    .line 616
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 307
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 308
    .local v0, "mode":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 312
    return-void

    .line 307
    .end local v0    # "mode":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 635
    const/4 v1, 0x0

    .line 640
    .local v1, "theme":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d038c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/qs/tiles/DormantModeTile$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$9;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/qs/tiles/DormantModeTile$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/DormantModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 660
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 662
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 663
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 668
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 669
    return-void

    .line 666
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 9
    .param p1, "zen"    # I

    .prologue
    .line 738
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400bb

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 740
    .local v5, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 763
    :goto_0
    return-void

    .line 742
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0d02f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "text":Ljava/lang/String;
    const v1, 0x7f02014b

    .line 753
    .local v1, "iconRes":I
    :goto_1
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 754
    .local v2, "message":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 756
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 758
    new-instance v4, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 759
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 760
    const/16 v6, 0xbb8

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 762
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 746
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "iconRes":I
    .end local v2    # "message":Landroid/widget/TextView;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "toast":Landroid/widget/Toast;
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0d02f1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 747
    .restart local v3    # "text":Ljava/lang/String;
    const v1, 0x7f02014c

    .line 748
    .restart local v1    # "iconRes":I
    goto :goto_1

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 680
    const/4 v0, 0x2

    .line 682
    .local v0, "status":I
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 683
    const/4 v0, 0x3

    .line 708
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState(Ljava/lang/Object;)V

    .line 709
    return-void

    .line 685
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 687
    :pswitch_0
    const/4 v0, 0x2

    .line 688
    goto :goto_0

    .line 691
    :pswitch_1
    const/4 v0, 0x1

    .line 695
    goto :goto_0

    .line 698
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleClick()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 189
    const-string v5, "DormantModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v7

    .line 193
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "isSettingsChangesAllowed":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 196
    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 207
    const/4 v3, 0x2

    .line 208
    .local v3, "status":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    .line 224
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4, v7}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    .line 225
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setEnabled(Z)V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    .line 213
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dnd_allowexception"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, "allowException":I
    if-ne v0, v8, :cond_2

    .line 216
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4, v8}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    .line 220
    :goto_1
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/DormantModeTile;->setEnabled(Z)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    goto :goto_1

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenModeAvailable:Z

    .line 466
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 472
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 304
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    .line 287
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 290
    if-nez v0, :cond_1

    .line 291
    const-string v2, "DormantModeTile"

    const-string v3, "onClick(): BlockingMode state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_1
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$ZenModeDNDSettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/DormantModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->handleLongClick()V

    .line 278
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d034d

    .line 316
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 318
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 321
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d036e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 325
    packed-switch v0, :pswitch_data_0

    .line 414
    :goto_1
    return-void

    .line 316
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 327
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 332
    :pswitch_1
    const v1, 0x7f0d0339

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 493
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 676
    :cond_0
    return-void
.end method
