.class public Lcom/lguplus/se/SmartMXUICC;
.super Ljava/lang/Object;
.source "SmartMXUICC.java"


# static fields
.field static final DBG:Z = true

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field public static final UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static handleId:[I = null

.field static final mLogTag:Ljava/lang/String; = "SmartMXUICC"

.field private static pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

.field static random:Ljava/util/Random;

.field private static sInstance:Lcom/lguplus/se/SmartMXUICC;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    .line 35
    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->handleId:[I

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->random:Ljava/util/Random;

    return-void

    .line 37
    nop

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "SmartMXUICC"

    const-string v1, "SmartMXUICC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPcscProvider;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    .line 57
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    if-nez v0, :cond_1d

    .line 58
    const-string v0, "SmartMXUICC"

    const-string v1, "SmartMXUICC pcscInstance return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_1c
    return-void

    .line 60
    :cond_1d
    const-string v0, "SmartMXUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartMXUICC pcscInstance retrun : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public static createSmartMXUICC()Lcom/lguplus/se/SmartMXUICC;
    .registers 3

    .prologue
    .line 43
    const-class v1, Lcom/lguplus/se/SmartMXUICC;

    monitor-enter v1

    .line 44
    :try_start_3
    const-string v0, "SmartMXUICC"

    const-string v2, "Making an Instance..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    if-nez v0, :cond_15

    .line 47
    new-instance v0, Lcom/lguplus/se/SmartMXUICC;

    invoke-direct {v0}, Lcom/lguplus/se/SmartMXUICC;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    .line 48
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    .line 49
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    return-object v0

    .line 48
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private openLogicalChannel()I
    .registers 5

    .prologue
    .line 66
    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    .line 69
    .local v0, "channel":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_25

    const/4 v1, 0x4

    if-ge v0, v1, :cond_25

    .line 70
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openLogicalChannel channel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_24
    return v0

    .line 74
    :cond_25
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openLogicalChannel Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .registers 6
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    move v0, p1

    .line 130
    .local v0, "channel":I
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSecureElementConnection channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x1

    if-ge v0, v1, :cond_24

    .line 134
    const-string v1, "SmartMXUICC"

    const-string v2, "closeSecureElementConnection channel is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_23
    return-void

    .line 138
    :cond_24
    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    .line 140
    const-string v1, "SmartMXUICC"

    const-string v2, "closeSecureElementConnection done!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public exchangeAPDU(I[B)[B
    .registers 11
    .param p1, "ch"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "resSize":I
    move v1, p1

    .line 103
    .local v1, "channel":I
    const/16 v4, 0x106

    new-array v0, v4, [B

    .line 104
    .local v0, "apdu_res":[B
    const/4 v3, 0x0

    .line 106
    .local v3, "response":[B
    const-string v4, "SmartMXUICC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeAPDU channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    aget-byte v4, p2, v7

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p2, v7

    .line 110
    sget-object v4, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v4, v1, p2, v0}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result v2

    .line 112
    if-lez v2, :cond_33

    .line 113
    new-array v3, v2, [B

    .line 114
    invoke-static {v0, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 118
    :cond_33
    if-nez v3, :cond_44

    .line 120
    const-string v4, "SmartMXUICC"

    const-string v5, "exchangeAPDU return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Response is NULL"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_44
    return-object v3
.end method

.method public getATR()[B
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "resSize":I
    const/16 v4, 0x106

    new-array v0, v4, [B

    .line 156
    .local v0, "apdu_res":[B
    const/4 v3, 0x0

    .line 158
    .local v3, "response":[B
    :try_start_7
    sget-object v4, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_16

    move-result v2

    .line 165
    if-lez v2, :cond_14

    .line 166
    new-array v3, v2, [B

    .line 167
    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_14
    move-object v4, v3

    .line 170
    :goto_15
    return-object v4

    .line 160
    :catch_16
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SmartMXUICC"

    const-string v5, "getATR Errors"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v4, 0x0

    goto :goto_15
.end method

.method public getSecureElementTechList(I)[I
    .registers 3
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureElementUid(I)[B
    .registers 3
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSmartMX()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .registers 6
    .param p1, "seType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "retVal":I
    if-nez p1, :cond_c

    .line 82
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "seType must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 85
    const/4 v0, -0x2

    .line 91
    :goto_18
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openSecureElementConnection, retVal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4a

    .line 95
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Fail to open channel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_3b
    const-string v1, "android.nfc.uicc.ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 87
    invoke-direct {p0}, Lcom/lguplus/se/SmartMXUICC;->openLogicalChannel()I

    move-result v0

    goto :goto_18

    .line 89
    :cond_48
    const/4 v0, -0x1

    goto :goto_18

    .line 97
    :cond_4a
    return v0
.end method
