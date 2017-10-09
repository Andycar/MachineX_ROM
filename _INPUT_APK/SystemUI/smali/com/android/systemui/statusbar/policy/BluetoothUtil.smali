.class public Lcom/android/systemui/statusbar/policy/BluetoothUtil;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 74
    if-nez p0, :cond_0

    const-string v0, "STATE_DISCONNECTED"

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "STATE_CONNECTED"

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "STATE_DISCONNECTING"

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const-string v0, "STATE_CONNECTING"

    goto :goto_0

    .line 78
    :cond_3
    const-string v0, "ERROR"

    goto :goto_0
.end method

.method public static deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 82
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProfile(Landroid/bluetooth/BluetoothProfile;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "p"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 113
    instance-of v0, p0, Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/bluetooth/BluetoothA2dp;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 114
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    instance-of v0, p0, Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/bluetooth/BluetoothHeadset;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothHeadset;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    .line 115
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_1
    instance-of v0, p0, Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/bluetooth/BluetoothA2dpSink;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothA2dpSink;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    .line 116
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_2
    instance-of v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/bluetooth/BluetoothHeadsetClient;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothHeadsetClient;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    .line 117
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_3
    instance-of v0, p0, Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/bluetooth/BluetoothInputDevice;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothInputDevice;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    .line 118
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_4
    instance-of v0, p0, Landroid/bluetooth/BluetoothMap;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/bluetooth/BluetoothMap;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothMap;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    .line 119
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_5
    instance-of v0, p0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothPan;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    .line 120
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "a2dp"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothA2dpSink;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "sink"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$3;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothHeadset;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "headset"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$2;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothHeadsetClient;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "client"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$4;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothInputDevice;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "input"    # Landroid/bluetooth/BluetoothInputDevice;

    .prologue
    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;-><init>(Landroid/bluetooth/BluetoothInputDevice;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothMap;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "map"    # Landroid/bluetooth/BluetoothMap;

    .prologue
    .line 194
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$6;-><init>(Landroid/bluetooth/BluetoothMap;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothPan;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "pan"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$7;-><init>(Landroid/bluetooth/BluetoothPan;)V

    return-object v0
.end method

.method public static profileStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 43
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string v0, "STATE_CONNECTED"

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "STATE_CONNECTING"

    goto :goto_0

    .line 45
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "STATE_DISCONNECTED"

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "STATE_DISCONNECTING"

    goto :goto_0

    .line 47
    :cond_3
    const-string v0, "STATE_UNKNOWN"

    goto :goto_0
.end method

.method public static profileToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "profile"    # I

    .prologue
    .line 36
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "HEADSET"

    .line 39
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "A2DP"

    goto :goto_0

    .line 38
    :cond_1
    const/16 v0, 0xb

    if-ne p0, v0, :cond_2

    const-string v0, "AVRCP_CONTROLLER"

    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public static uuidToProfile(Landroid/os/ParcelUuid;)I
    .locals 4
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 97
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {v3, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v3, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 103
    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 104
    :cond_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    .line 105
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    .line 107
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_0

    .line 109
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 51
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioSink"

    .line 70
    :goto_0
    return-object v0

    .line 52
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AudioSource"

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdvAudioDist"

    goto :goto_0

    .line 54
    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HSP"

    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HSP_AG"

    goto :goto_0

    .line 56
    :cond_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Handsfree"

    goto :goto_0

    .line 57
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Handsfree_AG"

    goto :goto_0

    .line 58
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AvrcpController"

    goto :goto_0

    .line 59
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AvrcpTarget"

    goto :goto_0

    .line 60
    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ObexObjectPush"

    goto :goto_0

    .line 61
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Hid"

    goto :goto_0

    .line 62
    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Hogp"

    goto :goto_0

    .line 63
    :cond_b
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "PANU"

    goto/16 :goto_0

    .line 64
    :cond_c
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "NAP"

    goto/16 :goto_0

    .line 65
    :cond_d
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "BNEP"

    goto/16 :goto_0

    .line 66
    :cond_e
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "PBAP_PSE"

    goto/16 :goto_0

    .line 67
    :cond_f
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MAP"

    goto/16 :goto_0

    .line 68
    :cond_10
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MNS"

    goto/16 :goto_0

    .line 69
    :cond_11
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "MAS"

    goto/16 :goto_0

    .line 70
    :cond_12
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static uuidsToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v3

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 88
    .local v1, "ids":[Landroid/os/ParcelUuid;
    if-eqz v1, :cond_0

    .line 89
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 90
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 91
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_2
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
