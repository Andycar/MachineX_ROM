.class final Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private format:I

.field private hascapture:Z

.field private hasmidi:Z

.field private hasplayback:Z

.field private isSmartDock:Z

.field private samplingRate2:Ljava/lang/String;

.field private samplingRate24:I

.field private samplingRate6:Ljava/lang/String;

.field private state:I

.field final synthetic this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
    .param p2, "x1"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)V

    return-void
.end method


# virtual methods
.method public get24Format()I
    .registers 4

    .prologue
    const/4 v0, 0x4

    .line 149
    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 150
    const/4 v0, 0x3

    .line 157
    :cond_9
    :goto_9
    return v0

    .line 151
    :cond_a
    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v0, :cond_9

    .line 153
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    .line 154
    const/4 v0, 0x1

    goto :goto_9

    .line 157
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getCardNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHasCapture()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hascapture:Z

    return v0
.end method

.method public getHasMIDI()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasmidi:Z

    return v0
.end method

.method public getHasPlayback()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasplayback:Z

    return v0
.end method

.method public getIsSmartdock()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->isSmartDock:Z

    return v0
.end method

.method public getSamplingRate(I)Ljava/lang/String;
    .registers 3
    .param p1, "ch"    # I

    .prologue
    .line 118
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate2:Ljava/lang/String;

    .line 121
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate6:Ljava/lang/String;

    goto :goto_5
.end method

.method public getSamplingRate24()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate24:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->state:I

    return v0
.end method

.method public getSupportedPCMFormat()I
    .registers 7

    .prologue
    const/16 v0, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 161
    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-ne v1, v2, :cond_c

    .line 172
    :cond_b
    :goto_b
    return v0

    .line 163
    :cond_c
    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-eq v1, v3, :cond_18

    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-eq v1, v4, :cond_18

    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-ne v1, v5, :cond_1b

    .line 164
    :cond_18
    const/16 v0, 0x18

    goto :goto_b

    .line 165
    :cond_1b
    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_b

    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x2

    if-eq v1, v3, :cond_33

    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v4, :cond_33

    iget v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_b

    .line 169
    :cond_33
    const/16 v0, 0x28

    goto :goto_b
.end method

.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZII)V
    .registers 13
    .param p1, "state"    # I
    .param p2, "channels"    # Ljava/lang/String;
    .param p3, "samplingRate2"    # Ljava/lang/String;
    .param p4, "samplingRate6"    # Ljava/lang/String;
    .param p5, "cardNumber"    # Ljava/lang/String;
    .param p6, "deviceNumber"    # Ljava/lang/String;
    .param p7, "isSmartDock"    # Z
    .param p8, "hasplayback"    # Z
    .param p9, "hascapture"    # Z
    .param p10, "hasmidi"    # Z
    .param p11, "format"    # I
    .param p12, "samplingRate24"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->state:I

    .line 96
    iput-object p2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->channels:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate2:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate6:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->cardNumber:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->deviceNumber:Ljava/lang/String;

    .line 101
    iput-boolean p7, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->isSmartDock:Z

    .line 102
    iput-boolean p8, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasplayback:Z

    .line 103
    iput-boolean p9, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hascapture:Z

    .line 104
    iput-boolean p10, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasmidi:Z

    .line 105
    iput p11, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    .line 106
    iput p12, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate24:I

    .line 107
    return-void
.end method
