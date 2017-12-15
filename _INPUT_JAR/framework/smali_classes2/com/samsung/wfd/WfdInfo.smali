.class public Lcom/samsung/wfd/WfdInfo;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COUPLED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/wfd/WfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SESSION_MGMT_CTRL_PORT:I = 0xc000

.field public static final DEVICETYPE_INVALID:I = 0x4

.field public static final DEVICETYPE_PRIMARYSINK:I = 0x1

.field public static final DEVICETYPE_SECONDARYSINK:I = 0x2

.field public static final DEVICETYPE_SOURCE:I = 0x0

.field public static final DEVICETYPE_SOURCE_PRIMARYSINK:I = 0x3

.field public static final NOT_COUPLED_AVAILABLE:I = 0x0

.field public static final PC_P2P:I = 0x0

.field public static final PC_TDLS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WfdInfo"

.field public static final TEARDOWN_COUPLING:I = 0x2


# instance fields
.field public coupledDeviceAddress:Ljava/lang/String;

.field public coupledSinkStatus:I

.field public cpled_sink_status:I

.field public ctrl_port:I

.field public dev_info:I

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceType:I

.field public isAudioOnlySupportedAtSource:Z

.field public isAudioUnspportedAtPrimarySink:Z

.field public isAvailableForSession:Z

.field public isContentProtectionSupported:Z

.field public isCoupledSinkSupportedBySink:Z

.field public isCoupledSinkSupportedBySource:Z

.field public isServiceDiscoverySupported:Z

.field public isTDLSPersistentGroupIntended:Z

.field public isTDLSReInvokePersistentGroupReq:Z

.field public isTimeSynchronizationSupported:Z

.field public maxThroughput:I

.field public max_tput:I

.field public preferredConnectivity:I

.field public sessionMgmtCtrlPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 294
    new-instance v0, Lcom/samsung/wfd/WfdInfo$1;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const v2, 0xc000

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v2, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 100
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 106
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 113
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 124
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 132
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 137
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 142
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 166
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 172
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 178
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 183
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 184
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 185
    iput v2, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 186
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    const v1, 0xc000

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 100
    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 106
    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 113
    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 124
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 132
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 137
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 142
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 148
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 154
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 160
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 166
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 172
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 178
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 191
    iput p1, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 192
    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 193
    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 194
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wfd/WfdInfo;)V
    .registers 4
    .param p1, "source"    # Lcom/samsung/wfd/WfdInfo;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const v0, 0xc000

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 100
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 106
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 113
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 124
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 132
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 137
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 142
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 166
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 172
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 178
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 243
    if-eqz p1, :cond_79

    .line 244
    iget-object v0, p1, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 245
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    .line 246
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    .line 247
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    .line 248
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    .line 249
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 250
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->maxThroughput:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->maxThroughput:I

    .line 251
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 252
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 253
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 254
    iget-object v0, p1, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    .line 255
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 256
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 257
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 258
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 259
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 260
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 261
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 262
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 263
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 264
    iget-boolean v0, p1, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    iput-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 266
    :cond_79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const v6, 0xc000

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 100
    iput v8, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 106
    iput v8, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 113
    iput v8, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 124
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 132
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 137
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 142
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 148
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 154
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 160
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 166
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 172
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 178
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 205
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "tokens":[Ljava/lang/String;
    array-length v6, v5

    if-ge v6, v9, :cond_35

    .line 208
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Malformed wfd information"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 211
    :cond_35
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_38
    if-ge v1, v2, :cond_a3

    aget-object v4, v0, v1

    .line 212
    .local v4, "token":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "nameValue":[Ljava/lang/String;
    aget-object v6, v3, v8

    const-string v7, "dev_addr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 215
    aget-object v6, v3, v9

    iput-object v6, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 211
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 219
    :cond_53
    aget-object v6, v3, v8

    const-string/jumbo v7, "wfd_dev_info"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 220
    aget-object v6, v3, v9

    invoke-direct {p0, v6}, Lcom/samsung/wfd/WfdInfo;->parseHex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    goto :goto_50

    .line 224
    :cond_67
    aget-object v6, v3, v8

    const-string/jumbo v7, "wfd_ctrl_port"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 225
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    goto :goto_50

    .line 229
    :cond_7b
    aget-object v6, v3, v8

    const-string/jumbo v7, "wfd_max_tput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 230
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    goto :goto_50

    .line 234
    :cond_8f
    aget-object v6, v3, v8

    const-string/jumbo v7, "wfd_cpled_sink_status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 235
    aget-object v6, v3, v9

    invoke-direct {p0, v6}, Lcom/samsung/wfd/WfdInfo;->parseHex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    goto :goto_50

    .line 239
    .end local v3    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_a3
    return-void
.end method

.method private parseHex(Ljava/lang/String;)I
    .registers 7
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "num":I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 371
    :cond_11
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 375
    :cond_16
    const/16 v2, 0x10

    :try_start_18
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v1

    .line 379
    :goto_1c
    return v1

    .line 376
    :catch_1d
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WfdInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public isWFDDevice()Z
    .registers 3

    .prologue
    .line 357
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "device_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const-string v1, "\n dev_info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 331
    const-string v1, "\n ctrl_port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    const-string v1, "\n max_tput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 333
    const-string v1, "\n cpled_sink_status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 334
    const-string v1, "\n Control Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 335
    const-string v1, "\n MaxThroughput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->maxThroughput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 336
    const-string v1, "\n DeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 337
    const-string v1, "\n PreferredConnectivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 338
    const-string v1, "\n CoupledSinkStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 339
    const-string v1, "\n CoupledDeviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const-string v1, "\n IsCoupledSinkSupportedBySource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 341
    const-string v1, "\n IsCoupledSinkSupportedBySink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 342
    const-string v1, "\n IsAvailableForSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 343
    const-string v1, "\n IsCoupledSinkSupportedBySource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 344
    const-string v1, "\n IsContentProtectionSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 345
    const-string v1, "\n IsTimeSynchronizationSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 346
    const-string v1, "\n IsAudioUnspportedAtPrimarySink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 347
    const-string v1, "\n IsAudioOnlySupportedAtSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 348
    const-string v1, "\n IsTDLSPersistentGroupIntended: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 349
    const-string v1, "\n IsTDLSReInvokePersistentGroupReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->maxThroughput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    if-eqz v0, :cond_93

    move v0, v1

    :goto_3e
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 282
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    if-eqz v0, :cond_95

    move v0, v1

    :goto_47
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 283
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    if-eqz v0, :cond_97

    move v0, v1

    :goto_50
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    if-eqz v0, :cond_99

    move v0, v1

    :goto_59
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 285
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    if-eqz v0, :cond_9b

    move v0, v1

    :goto_62
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 286
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    if-eqz v0, :cond_9d

    move v0, v1

    :goto_6b
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 287
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    if-eqz v0, :cond_9f

    move v0, v1

    :goto_74
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 288
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    if-eqz v0, :cond_a1

    move v0, v1

    :goto_7d
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    if-eqz v0, :cond_a3

    move v0, v1

    :goto_86
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 290
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    if-eqz v0, :cond_a5

    :goto_8e
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 291
    return-void

    :cond_93
    move v0, v2

    .line 281
    goto :goto_3e

    :cond_95
    move v0, v2

    .line 282
    goto :goto_47

    :cond_97
    move v0, v2

    .line 283
    goto :goto_50

    :cond_99
    move v0, v2

    .line 284
    goto :goto_59

    :cond_9b
    move v0, v2

    .line 285
    goto :goto_62

    :cond_9d
    move v0, v2

    .line 286
    goto :goto_6b

    :cond_9f
    move v0, v2

    .line 287
    goto :goto_74

    :cond_a1
    move v0, v2

    .line 288
    goto :goto_7d

    :cond_a3
    move v0, v2

    .line 289
    goto :goto_86

    :cond_a5
    move v1, v2

    .line 290
    goto :goto_8e
.end method
