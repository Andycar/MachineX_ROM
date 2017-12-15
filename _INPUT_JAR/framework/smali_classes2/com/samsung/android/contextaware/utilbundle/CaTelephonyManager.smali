.class public Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.super Ljava/lang/Object;
.source "CaTelephonyManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final CALL_STATE_ACTIVE:B = -0x27t

.field private static final CALL_STATE_IDLE:B = -0x28t

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# instance fields
.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_13

    .line 50
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    monitor-enter v1

    .line 51
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_12

    .line 52
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    .line 54
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 56
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    return-object v0

    .line 54
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private sendCallStatusToSensorHub(I)V
    .registers 7
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 129
    new-array v0, v4, [B

    .line 130
    .local v0, "dataPacket":[B
    int-to-byte v2, p1

    aput-byte v2, v0, v3

    .line 131
    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 133
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v3, v4, [B

    fill-array-data v3, :array_28

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    .line 137
    .local v1, "result":I
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_26

    .line 138
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 140
    :cond_26
    return-void

    .line 133
    nop

    :array_28
    .array-data 1
        -0x4ct
        0x11t
    .end array-data
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    if-nez p1, :cond_8

    .line 69
    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 85
    :goto_7
    return-void

    .line 73
    :cond_8
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1d

    .line 77
    const-string v0, "mTelephonyManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_7

    .line 81
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_7
.end method

.method public final terminateManager()V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_c

    .line 96
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 99
    :cond_c
    return-void
.end method
