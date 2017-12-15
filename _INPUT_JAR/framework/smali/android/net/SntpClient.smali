.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/net/SntpClient;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCHNOrHKTW()Z
    .registers 2

    .prologue
    .line 68
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CWT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "FET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "TWM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_5f
    const/4 v1, 0x1

    :goto_60
    return v1

    :cond_61
    const/4 v1, 0x0

    goto :goto_60
.end method

.method private read32([BI)J
    .registers 16
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v9, 0x80

    .line 187
    aget-byte v0, p1, p2

    .line 188
    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 189
    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 190
    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 193
    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_41

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 194
    .local v4, "i0":I
    :goto_18
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_43

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 195
    .local v5, "i1":I
    :goto_20
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_45

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 196
    .local v6, "i2":I
    :goto_28
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_47

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 198
    .local v7, "i3":I
    :goto_30
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4    # "i0":I
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v7    # "i3":I
    :cond_41
    move v4, v0

    .line 193
    goto :goto_18

    .restart local v4    # "i0":I
    :cond_43
    move v5, v1

    .line 194
    goto :goto_20

    .restart local v5    # "i1":I
    :cond_45
    move v6, v2

    .line 195
    goto :goto_28

    .restart local v6    # "i2":I
    :cond_47
    move v7, v3

    .line 196
    goto :goto_30
.end method

.method private readTimeStamp([BI)J
    .registers 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 207
    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 208
    .local v0, "fraction":J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .registers 18
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    .prologue
    .line 216
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    .line 217
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    .line 218
    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    .line 221
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 222
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 223
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 224
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 226
    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 228
    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 229
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 230
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 232
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 233
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .registers 3

    .prologue
    .line 161
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .registers 3

    .prologue
    .line 171
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .registers 3

    .prologue
    .line 180
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .registers 37
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 83
    const/16 v19, 0x0

    .line 85
    .local v19, "socket":Ljava/net/DatagramSocket;
    :try_start_2
    new-instance v26, Ljava/net/DatagramSocket;

    invoke-direct/range {v26 .. v26}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_10a
    .catchall {:try_start_2 .. :try_end_7} :catchall_14a

    .line 86
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .local v26, "socket":Ljava/net/DatagramSocket;
    :try_start_7
    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 87
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 88
    .local v4, "address":Ljava/net/InetAddress;
    const/16 v27, 0x30

    move/from16 v0, v27

    new-array v5, v0, [B

    .line 89
    .local v5, "buffer":[B
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v27, v0

    const/16 v30, 0x7b

    move/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v9, v5, v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 94
    .local v9, "request":Ljava/net/DatagramPacket;
    const/16 v27, 0x0

    const/16 v30, 0x1b

    aput-byte v30, v5, v27

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 98
    .local v16, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 99
    .local v14, "requestTicks":J
    const/16 v27, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v16

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 101
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 104
    new-instance v18, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 105
    .local v18, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 107
    .local v20, "responseTicks":J
    sub-long v30, v20, v14

    add-long v22, v16, v30

    .line 110
    .local v22, "responseTime":J
    const/16 v27, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v10

    .line 111
    .local v10, "originateTime":J
    const/16 v27, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    .line 112
    .local v12, "receiveTime":J
    const/16 v27, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v28

    .line 113
    .local v28, "transmitTime":J
    sub-long v30, v20, v14

    sub-long v32, v28, v12

    sub-long v24, v30, v32

    .line 122
    .local v24, "roundTripTime":J
    sub-long v30, v12, v10

    sub-long v32, v28, v22

    add-long v30, v30, v32

    const-wide/16 v32, 0x2

    div-long v6, v30, v32

    .line 126
    .local v6, "clockOffset":J
    const-wide/16 v30, 0x0

    cmp-long v27, v10, v30

    if-ltz v27, :cond_9f

    const-wide/16 v30, 0x0

    cmp-long v27, v12, v30

    if-ltz v27, :cond_9f

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-gez v27, :cond_ec

    .line 127
    :cond_9f
    invoke-static {}, Landroid/net/SntpClient;->isCHNOrHKTW()Z

    move-result v27

    if-eqz v27, :cond_ec

    .line 128
    sget-boolean v27, Landroid/net/SntpClient;->SHIP_BUILD:Z

    if-nez v27, :cond_e2

    .line 129
    const-string v27, "SntpClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "time value is wrong originateTime : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " receiveTime : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " transmitTime : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e2} :catch_155
    .catchall {:try_start_7 .. :try_end_e2} :catchall_151

    .line 132
    :cond_e2
    const/16 v27, 0x0

    .line 147
    if-eqz v26, :cond_e9

    .line 148
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    :cond_e9
    move-object/from16 v19, v26

    .line 152
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v9    # "request":Ljava/net/DatagramPacket;
    .end local v10    # "originateTime":J
    .end local v12    # "receiveTime":J
    .end local v14    # "requestTicks":J
    .end local v16    # "requestTime":J
    .end local v18    # "response":Ljava/net/DatagramPacket;
    .end local v20    # "responseTicks":J
    .end local v22    # "responseTime":J
    .end local v24    # "roundTripTime":J
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .end local v28    # "transmitTime":J
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    :cond_eb
    :goto_eb
    return v27

    .line 137
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "address":Ljava/net/InetAddress;
    .restart local v5    # "buffer":[B
    .restart local v6    # "clockOffset":J
    .restart local v9    # "request":Ljava/net/DatagramPacket;
    .restart local v10    # "originateTime":J
    .restart local v12    # "receiveTime":J
    .restart local v14    # "requestTicks":J
    .restart local v16    # "requestTime":J
    .restart local v18    # "response":Ljava/net/DatagramPacket;
    .restart local v20    # "responseTicks":J
    .restart local v22    # "responseTime":J
    .restart local v24    # "roundTripTime":J
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v28    # "transmitTime":J
    :cond_ec
    add-long v30, v22, v6

    :try_start_ee
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    .line 138
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 139
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_100} :catch_155
    .catchall {:try_start_ee .. :try_end_100} :catchall_151

    .line 147
    if-eqz v26, :cond_105

    .line 148
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    .line 152
    :cond_105
    const/16 v27, 0x1

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_eb

    .line 140
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v9    # "request":Ljava/net/DatagramPacket;
    .end local v10    # "originateTime":J
    .end local v12    # "receiveTime":J
    .end local v14    # "requestTicks":J
    .end local v16    # "requestTime":J
    .end local v18    # "response":Ljava/net/DatagramPacket;
    .end local v20    # "responseTicks":J
    .end local v22    # "responseTime":J
    .end local v24    # "roundTripTime":J
    .end local v28    # "transmitTime":J
    :catch_10a
    move-exception v8

    .line 142
    .local v8, "e":Ljava/lang/Exception;
    :goto_10b
    :try_start_10b
    sget-boolean v27, Landroid/net/SntpClient;->SHIP_BUILD:Z

    if-nez v27, :cond_142

    invoke-static {}, Landroid/net/SntpClient;->isCHNOrHKTW()Z

    move-result v27

    if-eqz v27, :cond_142

    .line 143
    const-string v27, "SntpClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "request time failed server: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " with error : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catchall {:try_start_10b .. :try_end_142} :catchall_14a

    .line 145
    :cond_142
    const/16 v27, 0x0

    .line 147
    if-eqz v19, :cond_eb

    .line 148
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    goto :goto_eb

    .line 147
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_14a
    move-exception v27

    :goto_14b
    if-eqz v19, :cond_150

    .line 148
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    :cond_150
    throw v27

    .line 147
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catchall_151
    move-exception v27

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_14b

    .line 140
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catch_155
    move-exception v8

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_10b
.end method
