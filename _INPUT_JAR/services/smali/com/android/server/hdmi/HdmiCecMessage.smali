.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 6
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "opcode"    # I
    .param p4, "params"    # [B

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 42
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 43
    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 44
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 45
    return-void
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "opcode"    # I

    .prologue
    .line 103
    sparse-switch p0, :sswitch_data_106

    .line 247
    const-string v0, "Opcode: %02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 105
    :sswitch_14
    const-string v0, "Feature Abort"

    goto :goto_13

    .line 107
    :sswitch_17
    const-string v0, "Image View On"

    goto :goto_13

    .line 109
    :sswitch_1a
    const-string v0, "Tuner Step Increment"

    goto :goto_13

    .line 111
    :sswitch_1d
    const-string v0, "Tuner Step Decrement"

    goto :goto_13

    .line 113
    :sswitch_20
    const-string v0, "Tuner Device Staus"

    goto :goto_13

    .line 115
    :sswitch_23
    const-string v0, "Give Tuner Device Status"

    goto :goto_13

    .line 117
    :sswitch_26
    const-string v0, "Record On"

    goto :goto_13

    .line 119
    :sswitch_29
    const-string v0, "Record Status"

    goto :goto_13

    .line 121
    :sswitch_2c
    const-string v0, "Record Off"

    goto :goto_13

    .line 123
    :sswitch_2f
    const-string v0, "Text View On"

    goto :goto_13

    .line 125
    :sswitch_32
    const-string v0, "Record Tv Screen"

    goto :goto_13

    .line 127
    :sswitch_35
    const-string v0, "Give Deck Status"

    goto :goto_13

    .line 129
    :sswitch_38
    const-string v0, "Deck Status"

    goto :goto_13

    .line 131
    :sswitch_3b
    const-string v0, "Set Menu Language"

    goto :goto_13

    .line 133
    :sswitch_3e
    const-string v0, "Clear Analog Timer"

    goto :goto_13

    .line 135
    :sswitch_41
    const-string v0, "Set Analog Timer"

    goto :goto_13

    .line 137
    :sswitch_44
    const-string v0, "Timer Status"

    goto :goto_13

    .line 139
    :sswitch_47
    const-string v0, "Standby"

    goto :goto_13

    .line 141
    :sswitch_4a
    const-string v0, "Play"

    goto :goto_13

    .line 143
    :sswitch_4d
    const-string v0, "Deck Control"

    goto :goto_13

    .line 145
    :sswitch_50
    const-string v0, "Timer Cleared Status"

    goto :goto_13

    .line 147
    :sswitch_53
    const-string v0, "User Control Pressed"

    goto :goto_13

    .line 149
    :sswitch_56
    const-string v0, "User Control Release"

    goto :goto_13

    .line 151
    :sswitch_59
    const-string v0, "Give Osd Name"

    goto :goto_13

    .line 153
    :sswitch_5c
    const-string v0, "Set Osd Name"

    goto :goto_13

    .line 155
    :sswitch_5f
    const-string v0, "Set Osd String"

    goto :goto_13

    .line 157
    :sswitch_62
    const-string v0, "Set Timer Program Title"

    goto :goto_13

    .line 159
    :sswitch_65
    const-string v0, "System Audio Mode Request"

    goto :goto_13

    .line 161
    :sswitch_68
    const-string v0, "Give Audio Status"

    goto :goto_13

    .line 163
    :sswitch_6b
    const-string v0, "Set System Audio Mode"

    goto :goto_13

    .line 165
    :sswitch_6e
    const-string v0, "Report Audio Status"

    goto :goto_13

    .line 167
    :sswitch_71
    const-string v0, "Give System Audio Mode Status"

    goto :goto_13

    .line 169
    :sswitch_74
    const-string v0, "System Audio Mode Status"

    goto :goto_13

    .line 171
    :sswitch_77
    const-string v0, "Routing Change"

    goto :goto_13

    .line 173
    :sswitch_7a
    const-string v0, "Routing Information"

    goto :goto_13

    .line 175
    :sswitch_7d
    const-string v0, "Active Source"

    goto :goto_13

    .line 177
    :sswitch_80
    const-string v0, "Give Physical Address"

    goto :goto_13

    .line 179
    :sswitch_83
    const-string v0, "Report Physical Address"

    goto :goto_13

    .line 181
    :sswitch_86
    const-string v0, "Request Active Source"

    goto :goto_13

    .line 183
    :sswitch_89
    const-string v0, "Set Stream Path"

    goto :goto_13

    .line 185
    :sswitch_8c
    const-string v0, "Device Vendor Id"

    goto :goto_13

    .line 187
    :sswitch_8f
    const-string v0, "Vendor Commandn"

    goto :goto_13

    .line 189
    :sswitch_92
    const-string v0, "Vendor Remote Button Down"

    goto/16 :goto_13

    .line 191
    :sswitch_96
    const-string v0, "Vendor Remote Button Up"

    goto/16 :goto_13

    .line 193
    :sswitch_9a
    const-string v0, "Give Device Vendor Id"

    goto/16 :goto_13

    .line 195
    :sswitch_9e
    const-string v0, "Menu REquest"

    goto/16 :goto_13

    .line 197
    :sswitch_a2
    const-string v0, "Menu Status"

    goto/16 :goto_13

    .line 199
    :sswitch_a6
    const-string v0, "Give Device Power Status"

    goto/16 :goto_13

    .line 201
    :sswitch_aa
    const-string v0, "Report Power Status"

    goto/16 :goto_13

    .line 203
    :sswitch_ae
    const-string v0, "Get Menu Language"

    goto/16 :goto_13

    .line 205
    :sswitch_b2
    const-string v0, "Select Analog Service"

    goto/16 :goto_13

    .line 207
    :sswitch_b6
    const-string v0, "Select Digital Service"

    goto/16 :goto_13

    .line 209
    :sswitch_ba
    const-string v0, "Set Digital Timer"

    goto/16 :goto_13

    .line 211
    :sswitch_be
    const-string v0, "Clear Digital Timer"

    goto/16 :goto_13

    .line 213
    :sswitch_c2
    const-string v0, "Set Audio Rate"

    goto/16 :goto_13

    .line 215
    :sswitch_c6
    const-string v0, "InActive Source"

    goto/16 :goto_13

    .line 217
    :sswitch_ca
    const-string v0, "Cec Version"

    goto/16 :goto_13

    .line 219
    :sswitch_ce
    const-string v0, "Get Cec Version"

    goto/16 :goto_13

    .line 221
    :sswitch_d2
    const-string v0, "Vendor Command With Id"

    goto/16 :goto_13

    .line 223
    :sswitch_d6
    const-string v0, "Clear External Timer"

    goto/16 :goto_13

    .line 225
    :sswitch_da
    const-string v0, "Set External Timer"

    goto/16 :goto_13

    .line 227
    :sswitch_de
    const-string v0, "Repot Short Audio Descriptor"

    goto/16 :goto_13

    .line 229
    :sswitch_e2
    const-string v0, "Request Short Audio Descriptor"

    goto/16 :goto_13

    .line 231
    :sswitch_e6
    const-string v0, "Initiate ARC"

    goto/16 :goto_13

    .line 233
    :sswitch_ea
    const-string v0, "Report ARC Initiated"

    goto/16 :goto_13

    .line 235
    :sswitch_ee
    const-string v0, "Report ARC Terminated"

    goto/16 :goto_13

    .line 237
    :sswitch_f2
    const-string v0, "Request ARC Initiation"

    goto/16 :goto_13

    .line 239
    :sswitch_f6
    const-string v0, "Request ARC Termination"

    goto/16 :goto_13

    .line 241
    :sswitch_fa
    const-string v0, "Terminate ARC"

    goto/16 :goto_13

    .line 243
    :sswitch_fe
    const-string v0, "Cdc Message"

    goto/16 :goto_13

    .line 245
    :sswitch_102
    const-string v0, "Abort"

    goto/16 :goto_13

    .line 103
    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_14
        0x4 -> :sswitch_17
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_1d
        0x7 -> :sswitch_20
        0x8 -> :sswitch_23
        0x9 -> :sswitch_26
        0xa -> :sswitch_29
        0xb -> :sswitch_2c
        0xd -> :sswitch_2f
        0xf -> :sswitch_32
        0x1a -> :sswitch_35
        0x1b -> :sswitch_38
        0x32 -> :sswitch_3b
        0x33 -> :sswitch_3e
        0x34 -> :sswitch_41
        0x35 -> :sswitch_44
        0x36 -> :sswitch_47
        0x41 -> :sswitch_4a
        0x42 -> :sswitch_4d
        0x43 -> :sswitch_50
        0x44 -> :sswitch_53
        0x45 -> :sswitch_56
        0x46 -> :sswitch_59
        0x47 -> :sswitch_5c
        0x64 -> :sswitch_5f
        0x67 -> :sswitch_62
        0x70 -> :sswitch_65
        0x71 -> :sswitch_68
        0x72 -> :sswitch_6b
        0x7a -> :sswitch_6e
        0x7d -> :sswitch_71
        0x7e -> :sswitch_74
        0x80 -> :sswitch_77
        0x81 -> :sswitch_7a
        0x82 -> :sswitch_7d
        0x83 -> :sswitch_80
        0x84 -> :sswitch_83
        0x85 -> :sswitch_86
        0x86 -> :sswitch_89
        0x87 -> :sswitch_8c
        0x89 -> :sswitch_8f
        0x8a -> :sswitch_92
        0x8b -> :sswitch_96
        0x8c -> :sswitch_9a
        0x8d -> :sswitch_9e
        0x8e -> :sswitch_a2
        0x8f -> :sswitch_a6
        0x90 -> :sswitch_aa
        0x91 -> :sswitch_ae
        0x92 -> :sswitch_b2
        0x93 -> :sswitch_b6
        0x97 -> :sswitch_ba
        0x99 -> :sswitch_be
        0x9a -> :sswitch_c2
        0x9d -> :sswitch_c6
        0x9e -> :sswitch_ca
        0x9f -> :sswitch_ce
        0xa0 -> :sswitch_d2
        0xa1 -> :sswitch_d6
        0xa2 -> :sswitch_da
        0xa3 -> :sswitch_de
        0xa4 -> :sswitch_e2
        0xc0 -> :sswitch_e6
        0xc1 -> :sswitch_ea
        0xc2 -> :sswitch_ee
        0xc3 -> :sswitch_f2
        0xc4 -> :sswitch_f6
        0xc5 -> :sswitch_fa
        0xf8 -> :sswitch_fe
        0xff -> :sswitch_102
    .end sparse-switch
.end method


# virtual methods
.method public getDestination()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 90
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v4, "s":Ljava/lang/StringBuffer;
    const-string v5, "<%s> src: %d, dst: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v7}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget v7, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v5, v5

    if-lez v5, :cond_52

    .line 94
    const-string v5, ", params:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3a
    if-ge v2, v3, :cond_52

    aget-byte v1, v0, v2

    .line 96
    .local v1, "data":B
    const-string v5, " %02X"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 99
    .end local v0    # "arr$":[B
    .end local v1    # "data":B
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_52
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
