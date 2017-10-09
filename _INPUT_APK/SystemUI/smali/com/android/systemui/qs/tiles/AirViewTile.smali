.class public Lcom/android/systemui/qs/tiles/AirViewTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirViewTile.java"


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
.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final AIR_MODE_MASTER_OFF:I = 0x0

.field private static final AIR_MODE_MASTER_ON:I = 0x1

.field private static final AUTO_AIR_MODE:I = 0x2

.field private static DB_AIR_VIEW:Ljava/lang/String; = null

.field private static final FINGER_AIR_MODE:I = 0x1

.field private static final PEN_AIR_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AirViewTile"

.field private static final URI_AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"

.field private static mAirViewType:I


# instance fields
.field private isMagnificationEnabled:Z

.field private final mAirViewMagnificationSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mAirViewMode:I

.field private mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mAirViewState:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsProcessing:Z

.field private mPenDettachedState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 89
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIsProcessing:Z

    .line 93
    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->getAirViewModeType()I

    move-result v3

    sput v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    .line 122
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v1, :cond_3

    .line 123
    const-string v3, "finger_air_view"

    sput-object v3, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    .line 129
    :cond_0
    :goto_0
    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    sget-object v6, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AirViewTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 138
    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$3;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "accessibility_display_magnification_enabled"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AirViewTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 146
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v7, :cond_1

    .line 148
    new-instance v3, Lcom/android/systemui/qs/tiles/AirViewTile$4;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "air_view_mode"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AirViewTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 156
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    .line 157
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mPenDettachedState:Z

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->init()V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewState:Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    .line 164
    return-void

    .line 124
    :cond_3
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v0, :cond_4

    .line 125
    const-string v3, "pen_hovering"

    sput-object v3, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_4
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v7, :cond_0

    .line 127
    const-string v3, "air_view_master_onoff"

    sput-object v3, Lcom/android/systemui/qs/tiles/AirViewTile;->DB_AIR_VIEW:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v0, v2

    .line 162
    goto :goto_1

    :cond_6
    move v1, v2

    .line 163
    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mPenDettachedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/AirViewTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirViewTile;->setDBvalues(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/AirViewTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewState:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/AirViewTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirViewTile;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    return v0
.end method

.method private enableAirViewAndInforPreview(Z)V
    .locals 7
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 241
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 243
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_highlight"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 245
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view_information_preview"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v1, v4, v2, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 241
    goto :goto_0

    :cond_1
    move v1, v3

    .line 243
    goto :goto_1

    :cond_2
    move v2, v3

    .line 245
    goto :goto_2
.end method

.method private getAirViewModeType()I
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x3

    .line 115
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 169
    sget v1, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setDBvalues(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    .line 254
    if-ne p1, v4, :cond_3

    .line 255
    iget v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-ne v0, v4, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 261
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIsProcessing:Z

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 278
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirViewTile;->setDBvalues(I)V

    .line 282
    :cond_0
    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 370
    .local v1, "theme":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0390

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/qs/tiles/AirViewTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/qs/tiles/AirViewTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 392
    sget v2, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0391

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 396
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 397
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 402
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 403
    return-void

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public doNext()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->removeEnabledScreenReaderValue()V

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 461
    :cond_0
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v0, v4, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    .line 474
    :goto_0
    return-void

    .line 466
    :cond_1
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto :goto_0

    .line 472
    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    .line 473
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirViewTile;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public handleClick()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 195
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v3, v9, :cond_2

    move v2, v4

    .line 197
    .local v2, "state":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v3, v6, v7}, Lcom/android/systemui/qs/tiles/AirViewTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, "isSettingsChangesAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isAirViewModeAllowed"

    invoke-static {v3, v6, v7}, Lcom/android/systemui/qs/tiles/AirViewTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "isAirViewModeAllowed":I
    if-eq v1, v8, :cond_3

    if-eq v0, v8, :cond_3

    .line 200
    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    .line 201
    :cond_0
    const-string v3, "AirViewTile"

    const-string v4, "onClick(): AirView state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isAirViewModeAllowed":I
    .end local v1    # "isSettingsChangesAllowed":I
    .end local v2    # "state":Z
    :cond_2
    move v2, v5

    .line 195
    goto :goto_0

    .line 206
    .restart local v0    # "isAirViewModeAllowed":I
    .restart local v1    # "isSettingsChangesAllowed":I
    .restart local v2    # "state":Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewState:Z

    if-eq v3, v2, :cond_1

    .line 207
    if-eqz v2, :cond_8

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isEnabledScreenReaderService()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z

    if-eqz v3, :cond_5

    .line 209
    :cond_4
    const v3, 0x7f0d044a

    const v4, 0x7f0d044b

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/AirViewTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    .line 213
    :cond_5
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v4, :cond_6

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto :goto_1

    .line 220
    :cond_6
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v9, :cond_7

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto :goto_1

    .line 225
    :cond_7
    sget v3, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    if-ne v3, v10, :cond_8

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V

    goto :goto_1

    .line 233
    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/AirViewTile;->refreshState(Ljava/lang/Object;)V

    .line 234
    if-eqz v2, :cond_9

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirViewTile;->setMode(I)V

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 183
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 2

    .prologue
    .line 350
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 356
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$FingerAirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 359
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$PenAirViewSettingsMenuActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_2
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 361
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->handleLongClick()V

    .line 345
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0358

    .line 503
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 504
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 506
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0379

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 507
    packed-switch v0, :pswitch_data_0

    .line 528
    :goto_1
    return-void

    .line 503
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 509
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020559

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 510
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 515
    :pswitch_1
    const v1, 0x7f020558

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 516
    const v1, 0x7f0d0339

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 521
    :pswitch_2
    const v1, 0x7f020557

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 522
    const v1, 0x7f0d033a

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirViewTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAllFingerOptionDisabled()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x2

    const/4 v9, 0x0

    .line 301
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_magnifier"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 302
    .local v2, "magnifier":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_information_preview"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 303
    .local v1, "informationPreview":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pregress_bar_preview"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 304
    .local v4, "progressBarPreview":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_speed_dial_tip"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 305
    .local v7, "speedDialTip":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 306
    .local v6, "soundNHapticFeedback":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_show_up_indicator"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 307
    .local v5, "showUpIndicator":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_full_text"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 308
    .local v0, "fullText":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pointer"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 309
    .local v3, "pointer":I
    sget v10, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 310
    const-string v10, "AirViewTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isAllFingerOptionDisabled()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    or-int v10, v2, v1

    or-int/2addr v10, v4

    or-int/2addr v10, v7

    or-int/2addr v10, v6

    if-ge v10, v8, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v8

    :cond_1
    move v8, v9

    .line 314
    goto :goto_0

    .line 316
    :cond_2
    const-string v10, "AirViewTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isAllFingerOptionDisabled()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    or-int v10, v2, v5

    or-int/2addr v10, v1

    or-int/2addr v10, v0

    or-int/2addr v10, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v7

    if-lt v10, v8, :cond_0

    move v8, v9

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-nez v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v0

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    if-ne v1, v0, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0

    .line 290
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 291
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mPenDettachedState:Z

    if-ne v1, v0, :cond_3

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllPenOptionsDisabled()Z

    move-result v0

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isAllPenOptionsDisabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    .line 324
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 325
    .local v1, "hoveringInformationPreview":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_progress_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 326
    .local v3, "hoveringProgressPreview":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_speed_dial_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 327
    .local v5, "hoveringSpeedDialPreview":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_icon_label"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 328
    .local v0, "hoveringIconLabel":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_list_scroll"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 329
    .local v2, "hoveringListScroll":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_sound"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 330
    .local v4, "hoveringSoundNHapticFeedback":I
    sget v8, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 331
    const-string v8, "AirViewTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllPenOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    .line 335
    goto :goto_0

    .line 337
    :cond_2
    const-string v8, "AirViewTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllPenOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    if-lt v8, v6, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 497
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirViewTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 190
    return-void
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 6
    .param p1, "titleRes"    # I
    .param p2, "messageRes"    # I

    .prologue
    .line 406
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 409
    :cond_0
    const/4 v2, 0x0

    .line 415
    .local v2, "theme":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d038e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d038d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "popupMsg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/AirViewTile$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$9;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/AirViewTile$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$8;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/AirViewTile$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/AirViewTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 445
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 446
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 451
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 453
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 454
    return-void

    .line 449
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitched()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 485
    sget v0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 488
    :cond_0
    return-void
.end method
