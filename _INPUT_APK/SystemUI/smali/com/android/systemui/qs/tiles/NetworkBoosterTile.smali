.class public Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_NETWORK_BOOSTER_DIALOG_CHECKED:Ljava/lang/String; = "smart_bonding_notification_do_not_show"

.field private static final DB_NETWORK_BOOSTER_ON:Ljava/lang/String; = "smart_bonding"

.field private static final TAG:Ljava/lang/String; = "NetworkBoosterTile"

.field private static mRoamingState:Z

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirpalneOn:Z

.field private mIsProcessing:Z

.field private mIsWfcRegistered:Z

.field private mNetWorkBoosterState:Z

.field private mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mNofiticationDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 82
    iput-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 86
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    .line 242
    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "airplane_mode_on"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 127
    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "smart_bonding"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->init()V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    if-eqz v0, :cond_2

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    .line 167
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 168
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    .line 164
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    if-eqz v0, :cond_4

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->setMode(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 464
    const v0, 0x7f0d03b4

    .line 465
    .local v0, "popupBtnId":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    const v0, 0x7f0d03ab

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 468
    const v0, 0x7f0d03aa

    goto :goto_0

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    const v0, 0x7f0d03a9

    goto :goto_0
.end method

.method private getMode()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 449
    const v0, 0x7f0d03af

    .line 450
    .local v0, "popupMsgId":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    const v0, 0x7f0d03a8

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 453
    const v0, 0x7f0d03ae

    goto :goto_0

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 455
    const v0, 0x7f0d03ad

    goto :goto_0

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    const v0, 0x7f0d03ac

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void
.end method

.method private static isMobileNetworkEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRoaming(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 541
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mRoamingState:Z

    .line 542
    sget-boolean v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mRoamingState:Z

    return v1
.end method

.method private isSimReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 556
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 558
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMSim()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMSim()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getReadySimCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 561
    :cond_1
    const/4 v1, 0x0

    .line 563
    :cond_2
    return v1
.end method

.method private static isWifiEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 531
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 532
    const-string v1, "SmartBonding"

    const-string v2, "Can\'t get WifiManager."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x0

    .line 535
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    .line 522
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 523
    return-void
.end method

.method private showNotificationDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x104000a

    .line 343
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_0

    .line 344
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 345
    iput-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 349
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isRoaming(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 352
    const v8, 0x7f0d03a8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 353
    const v8, 0x7f0d03b0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 355
    new-instance v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$4;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v0, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 419
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 438
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 439
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 440
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 445
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 446
    return-void

    .line 360
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v8

    if-nez v8, :cond_3

    .line 361
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v8, :cond_2

    .line 362
    const v8, 0x7f0d0384

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 366
    :goto_2
    const v8, 0x7f0d03b2

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 367
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 368
    new-instance v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$5;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v0, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 364
    :cond_2
    const v8, 0x7f0d03b1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 374
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 375
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0400a9

    invoke-virtual {v1, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 377
    .local v4, "mNetworkBoosterAlertLayout":Landroid/view/View;
    const v8, 0x7f0e033f

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 378
    .local v5, "mNetworkBoosterAlertView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getTextIdUnderNetworkStatus()I

    move-result v6

    .line 379
    .local v6, "msgResId":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 380
    .local v7, "msgResText":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u200f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 383
    :cond_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const v8, 0x7f0e0340

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 387
    .local v3, "mDisableAlertCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 389
    const v8, 0x7f0d03b3

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getBtnIdUnderNetworkStatus()I

    move-result v8

    new-instance v9, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$7;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$7;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 442
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "mDisableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v4    # "mNetworkBoosterAlertLayout":Landroid/view/View;
    .end local v5    # "mNetworkBoosterAlertView":Landroid/widget/TextView;
    .end local v6    # "msgResId":I
    .end local v7    # "msgResText":Ljava/lang/String;
    .restart local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected handleClick()V
    .locals 15

    .prologue
    const v12, 0x7f0d0337

    const/4 v14, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 276
    new-array v4, v8, [Ljava/lang/String;

    const-string v7, "false"

    aput-object v7, v4, v9

    .line 277
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v7, v10, v11, v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 279
    .local v2, "isSettingsChangesAllowed":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 280
    if-nez v2, :cond_1

    .line 281
    const-string v7, "NetworkBoosterTile"

    const-string v8, "onClick(): NetworkBooster state change is not allowed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    if-eqz v7, :cond_2

    .line 287
    const-string v7, "NetworkBoosterTile"

    const-string v8, "onClick(): Processing..."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0d038f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v14, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "toastAirplaneText":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    if-eqz v7, :cond_3

    .line 294
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 295
    sget-object v7, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v7, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 297
    sget-object v7, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v7

    if-nez v7, :cond_4

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V

    goto :goto_0

    .line 306
    :cond_4
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v7, :cond_5

    .line 308
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0d038f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d035a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d035a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, "toastToddlerText":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "toddler_mode_switch"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 310
    .local v3, "isToddlerMode":I
    if-ne v3, v8, :cond_5

    .line 311
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 312
    sget-object v7, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v7, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 313
    sget-object v7, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 316
    .end local v3    # "isToddlerMode":I
    .end local v6    # "toastToddlerText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "NetworkBoosterTile"

    const-string v10, "SettingNotFoundException - NetworkBoosterQuickSettingButton"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    iget-boolean v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v7, v14, :cond_6

    move v7, v8

    :goto_1
    if-eq v10, v7, :cond_0

    .line 322
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    .line 323
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "smart_bonding_notification_do_not_show"

    const/4 v11, -0x2

    invoke-static {v7, v10, v9, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    .line 324
    .local v0, "do_not_show_again_checked":Z
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v7, v14, :cond_8

    if-nez v0, :cond_8

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V

    goto/16 :goto_0

    .end local v0    # "do_not_show_again_checked":Z
    :cond_6
    move v7, v9

    .line 321
    goto :goto_1

    :cond_7
    move v0, v9

    .line 323
    goto :goto_2

    .line 327
    .restart local v0    # "do_not_show_again_checked":Z
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v7, v14, :cond_9

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->setMode(I)V

    goto/16 :goto_0

    :cond_9
    move v8, v9

    goto :goto_3
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    return-void
.end method

.method public handleLongClick()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 484
    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "true"

    aput-object v5, v3, v6

    .line 485
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v5, v6, v7, v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 487
    .local v1, "isSettingsChangesAllowed":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 488
    if-nez v1, :cond_0

    .line 489
    const-string v5, "NetworkBoosterTile"

    const-string v6, "onClick(): NetworkBooster state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-void

    .line 494
    :cond_0
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v5, :cond_1

    .line 496
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d038f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d035a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d035a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "toastToddlerText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 498
    .local v2, "isToddlerMode":I
    if-ne v2, v10, :cond_1

    .line 499
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 500
    sget-object v5, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v5, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 501
    sget-object v5, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    .end local v2    # "isToddlerMode":I
    .end local v4    # "toastToddlerText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "NetworkBoosterTile"

    const-string v6, "SettingNotFoundException - NetworkBoosterQuickSettingButton"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$SmartBondingSettingsActivity"

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleLongClick()V

    .line 479
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0359

    .line 190
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d037a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 194
    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_1
    return-void

    .line 190
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 196
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020574

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 197
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 202
    :pswitch_1
    const v1, 0x7f020573

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 203
    const v1, 0x7f0d0339

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 208
    :pswitch_2
    const v1, 0x7f020572

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 209
    const v1, 0x7f0d033a

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 194
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
    .line 64
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 552
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public onDimClick()V
    .locals 7

    .prologue
    const v6, 0x7f0d0353

    const/4 v5, 0x0

    .line 334
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d038f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "toastWfcText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 336
    sget-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 337
    sget-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 338
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 271
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
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

    const-string v1, ",S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 513
    return-void
.end method
