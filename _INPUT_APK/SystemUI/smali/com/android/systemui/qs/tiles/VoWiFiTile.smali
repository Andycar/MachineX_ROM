.class public Lcom/android/systemui/qs/tiles/VoWiFiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VoWiFiTile$1;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;
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
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final TW_TAG:Ljava/lang/String; = "VoWiFiTile"


# instance fields
.field private mIsProcessing:Z

.field private mIsWfcProvisioned:Z

.field private mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    .line 45
    new-instance v0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->init()V

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->enableWifi()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateWfcState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/VoWiFiTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->queryWfcState()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private enableWifi()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 243
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 248
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    new-instance v0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    const-string v0, "VoWiFiTile"

    const-string v1, "VoWiFi Quick Button initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWfcProvisioned()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 103
    .local v7, "isProvisioned":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_is_provisioned"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 108
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 111
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private queryWfcState()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 118
    const/4 v7, 0x0

    .line 120
    .local v7, "state":I
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 128
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_1
    return v7
.end method

.method private updateWfcState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    return-void

    .line 226
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 167
    .local v0, "state":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "VoWiFiTile"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_1
    return-void

    .end local v0    # "state":Z
    :cond_0
    move v0, v3

    .line 165
    goto :goto_0

    .line 171
    .restart local v0    # "state":Z
    :cond_1
    if-eqz v0, :cond_3

    .line 172
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    if-nez v1, :cond_2

    .line 173
    new-instance v1, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    const-string v1, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    .line 182
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateWfcState(Z)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    const-string v1, "com.oem.smartwifi.WIFI_CALLING_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "VoWiFiTile"

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleLongClick()V

    .line 188
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 201
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0374

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0353

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 206
    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_1
    return-void

    .line 201
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 208
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0205bc

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 211
    :pswitch_1
    const v1, 0x7f0205bb

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 214
    :pswitch_2
    const v1, 0x7f0205ba

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 206
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
    .line 32
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public userSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 221
    return-void
.end method
