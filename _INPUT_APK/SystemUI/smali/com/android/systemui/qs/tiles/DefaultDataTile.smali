.class public Lcom/android/systemui/qs/tiles/DefaultDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DefaultDataTile.java"


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
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DELAYREADY:I = 0x2

.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"

.field private static final NOTREADY:I = 0x1

.field private static final READY:I = 0x0

.field private static final SLOT1:I = 0x0

.field private static final SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultDataTile"

.field private static final UNKNOWN:I = -0x1

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentDataNW:I

.field private mDelayHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirPlaneMode:Z

.field private mIsSwitchReady:Z

.field private mMobileData:Z

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    .line 70
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    .line 75
    iput-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 185
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    .line 92
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    .line 100
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "quickpanel_mobiledata_checked"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/DefaultDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DefaultDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataReady()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getDefaultDataReady()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 328
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 329
    .local v0, "phoneId":I
    const-string v2, "DefaultDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultDataReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-nez v0, :cond_1

    .line 332
    const/4 v1, 0x0

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 333
    :cond_1
    if-eq v0, v1, :cond_0

    .line 336
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getMobileData()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCallStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 477
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 478
    const-string v1, "DefaultDataTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallStatus mTelephonyManager.getCallState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 340
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 342
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    const-string v4, "DefaultDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 349
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    .line 350
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v3, :cond_6

    .line 352
    const v3, 0x7f0d0383

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 353
    const v3, 0x7f0d0384

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 358
    :goto_0
    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 367
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 370
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 377
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 379
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 380
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 386
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 388
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_4
    const/4 v3, 0x0

    .line 390
    :cond_5
    return v3

    .line 355
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6
    const v3, 0x7f0d0381

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    const v3, 0x7f0d0382

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 383
    .restart local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private setDataSlot(I)V
    .locals 2
    .param p1, "phoneIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    if-nez p1, :cond_1

    .line 423
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    if-ne p1, v0, :cond_0

    .line 425
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    goto :goto_0
.end method

.method private updateActivateStatus()V
    .locals 5

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x2

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 395
    const-string v1, "DefaultDataTile"

    const-string v2, "No Sim is available"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    .line 419
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 401
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 405
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v3, :cond_4

    .line 407
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-ne v3, v2, :cond_4

    .line 409
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 412
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    if-eqz v3, :cond_6

    .line 413
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v0, :cond_5

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    .line 416
    :cond_6
    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v2, :cond_7

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    const-string v1, "DefaultDataTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / mCurrentDataNW : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / current mMobileData : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v5, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 281
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0d039c

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 282
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    if-nez v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 294
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 295
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 299
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    .line 308
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 309
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-le v0, v4, :cond_4

    .line 310
    iput v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 312
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V

    .line 313
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->setDataSlot(I)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_data"

    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 437
    return-void
.end method

.method public handleLongClick()V
    .locals 4

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSettingsChangesAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 449
    .local v0, "isSettingsChangesAllowed":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 450
    if-nez v0, :cond_1

    .line 451
    const-string v1, "DefaultDataTile"

    const-string v2, "onLongClick(): MobileData state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 457
    const-string v1, "DefaultDataTile"

    const-string v2, "MobileData Long - disabled in Airplanemode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 460
    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d039c

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 461
    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 465
    :cond_2
    const-string v1, "DefaultDataTile"

    const-string v2, "handleLongClick "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isSimReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DataSlotChoice"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleLongClick()V

    .line 443
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0d0246

    const v6, 0x7f0d0245

    const v5, 0x7f0d01c5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 147
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 150
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 153
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_1
    return-void

    .line 147
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 155
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0208cf

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 156
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 161
    :pswitch_1
    const v1, 0x7f0208ce

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 167
    :pswitch_2
    const v1, 0x7f0208cd

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 168
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 171
    :pswitch_3
    const v1, 0x7f0208d2

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 172
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 177
    :pswitch_4
    const v1, 0x7f0208d1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 178
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    .line 117
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 118
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 138
    return-void

    .line 117
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
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
