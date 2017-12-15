.class public Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final kDeviceDir_Capture:I = 0x0

.field public static final kDeviceDir_Playback:I = 0x1

.field public static final kDeviceDir_Unknown:I = -0x1

.field public static final kDeviceType_Audio:I = 0x0

.field public static final kDeviceType_Control:I = 0x1

.field public static final kDeviceType_MIDI:I = 0x2

.field public static final kDeviceType_Unknown:I = -0x1


# instance fields
.field mCardNum:I

.field mDeviceDir:I

.field mDeviceNum:I

.field mDeviceType:I

.field final synthetic this$0:Landroid/alsa/AlsaDevicesParser;


# direct methods
.method public constructor <init>(Landroid/alsa/AlsaDevicesParser;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 61
    iput-object p1, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    .line 57
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    .line 58
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    .line 59
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 62
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .registers 14
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "kToken_LineNum":I
    const/4 v1, 0x1

    .line 73
    .local v1, "kToken_CardNum":I
    const/4 v2, 0x2

    .line 74
    .local v2, "kToken_DeviceNum":I
    const/4 v4, 0x3

    .line 75
    .local v4, "kToken_Type0":I
    const/4 v5, 0x4

    .line 76
    .local v5, "kToken_Type1":I
    const/4 v6, 0x5

    .line 78
    .local v6, "kToken_Type2":I
    const/4 v9, 0x0

    .line 79
    .local v9, "tokenOffset":I
    const/4 v0, 0x0

    .line 80
    .local v0, "delimOffset":I
    const/4 v8, 0x0

    .line 82
    .local v8, "tokenIndex":I
    :goto_9
    # getter for: Landroid/alsa/AlsaDevicesParser;->mTokenizer:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaDevicesParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v10

    invoke-virtual {v10, p1, v0}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v9

    .line 83
    const/4 v10, -0x1

    if-ne v9, v10, :cond_16

    .line 141
    const/4 v10, 0x1

    return v10

    .line 86
    :cond_16
    # getter for: Landroid/alsa/AlsaDevicesParser;->mTokenizer:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaDevicesParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v10

    invoke-virtual {v10, p1, v9}, Landroid/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    .line 87
    const/4 v10, -0x1

    if-ne v0, v10, :cond_25

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    :cond_25
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "token":Ljava/lang/String;
    packed-switch v8, :pswitch_data_aa

    .line 138
    :cond_2c
    :goto_2c
    :pswitch_2c
    add-int/lit8 v8, v8, 0x1

    .line 139
    goto :goto_9

    .line 98
    :pswitch_2f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_2c

    .line 100
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 105
    :pswitch_40
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    goto :goto_2c

    .line 109
    :pswitch_47
    const-string v10, "digital"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    .line 111
    const-string v10, "control"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 112
    const/4 v10, 0x1

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_2c

    .line 113
    :cond_5b
    const-string/jumbo v10, "raw"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    goto :goto_2c

    .line 119
    :pswitch_65
    const-string v10, "audio"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    .line 120
    const/4 v10, 0x0

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_2c

    .line 121
    :cond_71
    const-string/jumbo v10, "midi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 122
    const/4 v10, 0x2

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    .line 123
    iget-object v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    const/4 v11, 0x1

    # setter for: Landroid/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z
    invoke-static {v10, v11}, Landroid/alsa/AlsaDevicesParser;->access$102(Landroid/alsa/AlsaDevicesParser;Z)Z

    goto :goto_2c

    .line 128
    :pswitch_84
    const-string v10, "capture"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 129
    const/4 v10, 0x0

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 130
    iget-object v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    const/4 v11, 0x1

    # setter for: Landroid/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z
    invoke-static {v10, v11}, Landroid/alsa/AlsaDevicesParser;->access$202(Landroid/alsa/AlsaDevicesParser;Z)Z

    goto :goto_2c

    .line 131
    :cond_96
    const-string/jumbo v10, "playback"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 132
    const/4 v10, 0x1

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 133
    iget-object v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    const/4 v11, 0x1

    # setter for: Landroid/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z
    invoke-static {v10, v11}, Landroid/alsa/AlsaDevicesParser;->access$302(Landroid/alsa/AlsaDevicesParser;Z)Z

    goto :goto_2c

    .line 92
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2f
        :pswitch_40
        :pswitch_47
        :pswitch_65
        :pswitch_84
    .end packed-switch
.end method

.method public textFormat()Ljava/lang/String;
    .registers 4

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    packed-switch v1, :pswitch_data_68

    .line 163
    :goto_34
    iget v1, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    packed-switch v1, :pswitch_data_74

    .line 175
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 150
    :pswitch_3e
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 153
    :pswitch_44
    const-string v1, " Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 156
    :pswitch_4a
    const-string v1, " Control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 159
    :pswitch_50
    const-string v1, " MIDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 165
    :pswitch_56
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 168
    :pswitch_5c
    const-string v1, " Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 171
    :pswitch_62
    const-string v1, " Playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 148
    :pswitch_data_68
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_50
    .end packed-switch

    .line 163
    :pswitch_data_74
    .packed-switch -0x1
        :pswitch_56
        :pswitch_5c
        :pswitch_62
    .end packed-switch
.end method
