.class public Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;,
        Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    }
.end annotation


# static fields
.field private static final ACCESSORY_LOG:Z = true

.field private static final BIT_HDMI_16_FORMAT:I = 0x10000

.field private static final BIT_HDMI_176_SAMPLERATE:I = 0x1000000

.field private static final BIT_HDMI_192_SAMPLERATE:I = 0x2000000

.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_20_FORMAT:I = 0x20000

.field private static final BIT_HDMI_24_FORMAT:I = 0x40000

.field private static final BIT_HDMI_32_SAMPLERATE:I = 0x80000

.field private static final BIT_HDMI_44_SAMPLERATE:I = 0x100000

.field private static final BIT_HDMI_48_SAMPLERATE:I = 0x200000

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_88_SAMPLERATE:I = 0x400000

.field private static final BIT_HDMI_96_SAMPLERATE:I = 0x800000

.field private static final BIT_PCM_S16_LE:I = 0x1

.field private static final BIT_PCM_S24_3LE:I = 0x4

.field private static final BIT_PCM_S24_LE:I = 0x2

.field private static final BIT_PCM_S32_LE:I = 0x8

.field private static final DEBUG_AUDIO:Z = true

.field public static final NAME_CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field public static final NAME_DVI_OR_NON_SPEAKER_HDMI_AUDIO:Ljava/lang/String; = "dvi_or_non_speaker_hdmi_audio"

.field private static final PCM_FORMAT_S16_LE:I = 0x0

.field private static final PCM_FORMAT_S24_3LE:I = 0x4

.field private static final PCM_FORMAT_S24_LE:I = 0x3

.field private static final PCM_FORMAT_S32_LE:I = 0x1

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler_usbAudio:Landroid/os/Handler;

.field private mHdmiChannelInfo:I

.field private mHdmiFormatInfo:I

.field private mHdmiSampleRateInfo:I

.field mVUsbAudioInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiFormatInfo:I

    .line 67
    const/high16 v1, 0x10000

    iput v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiChannelInfo:I

    .line 68
    const/high16 v1, 0x200000

    iput v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiSampleRateInfo:I

    .line 187
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    .line 647
    new-instance v1, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)V

    iput-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHandler_usbAudio:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 74
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ExtDeviceInfoManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    iget-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 76
    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
    .param p1, "x1"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->sendUSBAudioIntent(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private getFactoryMode()Z
    .registers 6

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 525
    .local v1, "userMode":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    .line 531
    :goto_f
    if-eqz v1, :cond_26

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 532
    const/4 v2, 0x0

    .line 537
    :goto_1a
    return v2

    .line 526
    :catch_1b
    move-exception v0

    .line 527
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 528
    sget-object v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 535
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_26
    sget-object v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private getSamplingRate(Ljava/lang/String;I)I
    .registers 12
    .param p1, "rates"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->removeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "ratesOnlyDigit":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v3, "stRates":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 400
    .local v2, "samplingRate":I
    :cond_c
    :goto_c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 401
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "tempString":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 403
    const/4 v4, 0x0

    .line 405
    .local v4, "supportedSamplingRate":I
    :try_start_1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 406
    const/4 v6, 0x1

    if-ne p2, v6, :cond_68

    const v6, 0xbb80

    if-le v4, v6, :cond_68

    if-eqz v2, :cond_68

    .line 407
    sget-object v6, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not supported SamplingRate for 16 bit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_44} :catch_45

    goto :goto_c

    .line 411
    :catch_45
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Variable SamplingRate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", so max rate setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const v2, 0xbb80

    goto :goto_c

    .line 408
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_68
    if-ge v2, v4, :cond_c

    .line 409
    move v2, v4

    goto :goto_c

    .line 417
    .end local v4    # "supportedSamplingRate":I
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_6c
    return v2
.end method

.method private isFactorySim()Z
    .registers 6

    .prologue
    .line 541
    iget-object v3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 543
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 545
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_24

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 548
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v3, 0x1

    .line 553
    :goto_23
    return v3

    :cond_24
    const/4 v3, 0x0

    goto :goto_23
.end method

.method private isSmartDockConnected()Z
    .registers 14

    .prologue
    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 421
    sget-object v10, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v11, "checkSmartDock"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-array v1, v12, [C

    .line 423
    .local v1, "buffer":[C
    const-string/jumbo v0, "sys/class/sec/switch/adc"

    .line 424
    .local v0, "SmartDName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 425
    .local v5, "file":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 427
    .local v2, "deviceValue":Ljava/lang/String;
    :try_start_12
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_56
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_69
    .catchall {:try_start_12 .. :try_end_17} :catchall_7c

    .line 428
    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_1a
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 429
    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 430
    if-le v7, v8, :cond_3b

    .line 431
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .end local v2    # "deviceValue":Ljava/lang/String;
    .local v3, "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .line 434
    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    :goto_2c
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_31} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_8b
    .catchall {:try_start_1a .. :try_end_31} :catchall_88

    move-result v10

    if-eqz v10, :cond_48

    .line 443
    if-eqz v6, :cond_39

    .line 444
    :try_start_36
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_43

    :cond_39
    :goto_39
    move-object v5, v6

    .line 452
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_3a
    return v8

    .line 433
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_3b
    :try_start_3b
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_41} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_8b
    .catchall {:try_start_3b .. :try_end_41} :catchall_88

    .end local v2    # "deviceValue":Ljava/lang/String;
    .restart local v3    # "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    goto :goto_2c

    .line 446
    :catch_43
    move-exception v4

    .line 448
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 443
    .end local v4    # "e":Ljava/io/IOException;
    :cond_48
    if-eqz v6, :cond_4d

    .line 444
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50

    :cond_4d
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :cond_4e
    :goto_4e
    move v8, v9

    .line 452
    goto :goto_3a

    .line 446
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :catch_50
    move-exception v4

    .line 448
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 450
    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_4e

    .line 437
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catch_56
    move-exception v4

    .line 438
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_57
    :try_start_57
    sget-object v8, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_7c

    .line 443
    if-eqz v5, :cond_4e

    .line 444
    :try_start_60
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_4e

    .line 446
    :catch_64
    move-exception v4

    .line 448
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 439
    .end local v4    # "e":Ljava/io/IOException;
    :catch_69
    move-exception v4

    .line 440
    .local v4, "e":Ljava/lang/Exception;
    :goto_6a
    :try_start_6a
    sget-object v8, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_7c

    .line 443
    if-eqz v5, :cond_4e

    .line 444
    :try_start_73
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_4e

    .line 446
    :catch_77
    move-exception v4

    .line 448
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 442
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_7c
    move-exception v8

    .line 443
    :goto_7d
    if-eqz v5, :cond_82

    .line 444
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 449
    :cond_82
    :goto_82
    throw v8

    .line 446
    :catch_83
    move-exception v4

    .line 448
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 442
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catchall_88
    move-exception v8

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_7d

    .line 439
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8b
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_6a

    .line 437
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8e
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_57
.end method

.method private parseAccInfo(Ljava/lang/String;)I
    .registers 23
    .param p1, "streamPath"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v4, 0x0

    .line 318
    .local v4, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 319
    .local v9, "in":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 320
    const/4 v13, 0x1

    .line 321
    .local v13, "nReturn":I
    const/4 v12, 0x0

    .line 324
    .local v12, "mIsCapture":Z
    :try_start_d
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_1e1
    .catchall {:try_start_d .. :try_end_14} :catchall_1dc

    .line 325
    .end local v4    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4d

    .line 326
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "the "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3d} :catch_1e3
    .catchall {:try_start_14 .. :try_end_3d} :catchall_1de

    .line 327
    const/16 v18, 0x0

    .line 375
    if-eqz v5, :cond_1e8

    const/4 v4, 0x0

    .line 376
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_42
    if-eqz v9, :cond_47

    :try_start_44
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 381
    :cond_47
    :goto_47
    return v18

    .line 377
    :catch_48
    move-exception v3

    .line 378
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 329
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :cond_4d
    :try_start_4d
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5b} :catch_1e3
    .catchall {:try_start_4d .. :try_end_5b} :catchall_1de

    .line 330
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :try_start_5b
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_62
    :goto_62
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "str":Ljava/lang/String;
    if-eqz v17, :cond_1bb

    .line 332
    new-instance v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V

    .line 333
    .local v2, "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v12, :cond_1a6

    .line 336
    const/16 v18, 0x0

    move/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$202(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z

    .line 340
    :goto_98
    const-string v18, "Capture:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a5

    .line 341
    const/4 v12, 0x1

    .line 343
    :cond_a5
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_62

    .line 345
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "flag":Ljava/lang/String;
    const-string v18, "Format"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_62

    .line 347
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$302(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_62

    .line 349
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .local v15, "stChannel":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "flagChannel":Ljava/lang/String;
    const-string v18, "Channels"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_62

    .line 353
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$402(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;I)I

    .line 354
    :cond_125
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_62

    .line 355
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v18, ":"

    invoke-direct/range {v16 .. v18}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v16, "stRates":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "flagRates":Ljava/lang/String;
    const-string v18, "Rates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_125

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$502(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_178} :catch_17a
    .catchall {:try_start_5b .. :try_end_178} :catchall_1af

    goto/16 :goto_62

    .line 370
    .end local v2    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .end local v6    # "flag":Ljava/lang/String;
    .end local v7    # "flagChannel":Ljava/lang/String;
    .end local v8    # "flagRates":Ljava/lang/String;
    .end local v14    # "st":Ljava/util/StringTokenizer;
    .end local v15    # "stChannel":Ljava/util/StringTokenizer;
    .end local v16    # "stRates":Ljava/util/StringTokenizer;
    .end local v17    # "str":Ljava/lang/String;
    :catch_17a
    move-exception v11

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 371
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .local v11, "io":Ljava/io/IOException;
    :goto_17d
    :try_start_17d
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cannot create file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catchall {:try_start_17d .. :try_end_199} :catchall_1dc

    .line 372
    const/4 v13, 0x0

    .line 375
    if-eqz v4, :cond_19d

    const/4 v4, 0x0

    .line 376
    :cond_19d
    if-eqz v9, :cond_1a2

    :try_start_19f
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1d2

    .end local v11    # "io":Ljava/io/IOException;
    :cond_1a2
    :goto_1a2
    move/from16 v18, v13

    .line 381
    goto/16 :goto_47

    .line 338
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1a6
    const/16 v18, 0x1

    :try_start_1a8
    move/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$202(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ad} :catch_17a
    .catchall {:try_start_1a8 .. :try_end_1ad} :catchall_1af

    goto/16 :goto_98

    .line 374
    .end local v2    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .end local v17    # "str":Ljava/lang/String;
    :catchall_1af
    move-exception v18

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 375
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_1b2
    if-eqz v4, :cond_1b5

    const/4 v4, 0x0

    .line 376
    :cond_1b5
    if-eqz v9, :cond_1ba

    :try_start_1b7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1d7

    .line 379
    :cond_1ba
    :goto_1ba
    throw v18

    .line 369
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1bb
    :try_start_1bb
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1c2} :catch_17a
    .catchall {:try_start_1bb .. :try_end_1c2} :catchall_1af

    .line 375
    if-eqz v5, :cond_1e6

    const/4 v4, 0x0

    .line 376
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_1c5
    if-eqz v10, :cond_1ca

    :try_start_1c7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_1cc

    :cond_1ca
    move-object v9, v10

    .line 379
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1a2

    .line 377
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_1cc
    move-exception v3

    .line 378
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 380
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1a2

    .line 377
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v11    # "io":Ljava/io/IOException;
    :catch_1d2
    move-exception v3

    .line 378
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a2

    .line 377
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v11    # "io":Ljava/io/IOException;
    :catch_1d7
    move-exception v3

    .line 378
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ba

    .line 374
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_1dc
    move-exception v18

    goto :goto_1b2

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catchall_1de
    move-exception v18

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_1b2

    .line 370
    :catch_1e1
    move-exception v11

    goto :goto_17d

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catch_1e3
    move-exception v11

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_17d

    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1e6
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_1c5

    .end local v4    # "f":Ljava/io/File;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_1e8
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto/16 :goto_42
.end method

.method private removeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 385
    if-nez p1, :cond_5

    const-string v2, ""

    .line 392
    :goto_4
    return-object v2

    .line 386
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2a

    .line 389
    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 392
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private final declared-synchronized sendIntentToPopupUI(IIII)I
    .registers 11
    .param p1, "hdmi_state"    # I
    .param p2, "ch_info"    # I
    .param p3, "format_info"    # I
    .param p4, "sampleRate_info"    # I

    .prologue
    const/16 v5, 0x20

    .line 459
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_audio_output"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 462
    .local v0, "hdmi_audio_output":I
    invoke-direct {p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getFactoryMode()Z

    move-result v2

    if-nez v2, :cond_8f

    invoke-direct {p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->isFactorySim()Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_54

    move-result v2

    if-nez v2, :cond_8f

    .line 464
    packed-switch v0, :pswitch_data_92

    .line 511
    const/4 p2, 0x2

    .line 518
    :goto_20
    monitor-exit p0

    return p2

    .line 466
    :pswitch_22
    and-int/lit8 v2, p2, 0x20

    if-ne v2, v5, :cond_6f

    .line 469
    const/4 p2, 0x2

    .line 471
    if-eqz p1, :cond_57

    .line 472
    :try_start_29
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 473
    .local v1, "intentToPopup":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupAudio"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v2, "AudioState"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v2, "Audiochannels"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    const-string v2, "AudioFormat"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const-string v2, "AudioSampleRate"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    iget-object v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_53
    .catchall {:try_start_29 .. :try_end_53} :catchall_54

    goto :goto_20

    .line 459
    .end local v0    # "hdmi_audio_output":I
    .end local v1    # "intentToPopup":Landroid/content/Intent;
    :catchall_54
    move-exception v2

    monitor-exit p0

    throw v2

    .line 482
    .restart local v0    # "hdmi_audio_output":I
    :cond_57
    :try_start_57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v1    # "intentToPopup":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    const-string v2, "channels"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    iget-object v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_20

    .line 488
    .end local v1    # "intentToPopup":Landroid/content/Intent;
    :cond_6f
    const/4 p2, 0x2

    .line 490
    goto :goto_20

    .line 493
    :pswitch_71
    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7d

    .line 494
    sget-object v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v3, "hdmi (2ch) : discrepancy between kernel and ui settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_7d
    const/4 p2, 0x2

    .line 498
    goto :goto_20

    .line 501
    :pswitch_7f
    and-int/lit8 v2, p2, 0x20

    if-eq v2, v5, :cond_8c

    .line 502
    sget-object v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v3, "hdmi (6ch) : discrepancy between kernel and ui settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_57 .. :try_end_8a} :catchall_54

    .line 503
    const/4 p2, 0x2

    goto :goto_20

    .line 505
    :cond_8c
    const/16 p2, 0x20

    .line 508
    goto :goto_20

    .line 515
    :cond_8f
    const/4 p2, 0x2

    goto :goto_20

    .line 464
    nop

    :pswitch_data_92
    .packed-switch -0x1
        :pswitch_22
        :pswitch_71
        :pswitch_7f
    .end packed-switch
.end method

.method private final sendUSBAudioIntent(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V
    .registers 8
    .param p1, "usbAudioData"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    const-string/jumbo v1, "state"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    const-string v1, "card"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    const-string v1, "device"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string/jumbo v1, "samplingRate2"

    invoke-virtual {p1, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const-string/jumbo v1, "samplingRate6"

    invoke-virtual {p1, v5}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    const-string/jumbo v1, "usb_headset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    const-string v1, "issmartdock"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getIsSmartdock()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 669
    const-string v1, "hostDevice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    const-string v1, "hasPlayback"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getHasPlayback()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    const-string v1, "hasCapture"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getHasCapture()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    const-string v1, "hasMIDI"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getHasMIDI()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    const-string v1, "24format"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->get24Format()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    const-string/jumbo v1, "supportedformat"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSupportedPCMFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const-string/jumbo v1, "samplingRate24"

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSamplingRate24()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    iget-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 681
    sget-object v1, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " issmartdock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getIsSmartdock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasplayback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getHasPlayback()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hascapture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getHasCapture()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasmidi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getHasMIDI()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->get24Format()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supporedformat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSupportedPCMFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate24="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->getSamplingRate24()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
.end method


# virtual methods
.method public getAccInfo(IZZZLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    .registers 29
    .param p1, "state"    # I
    .param p2, "hasPlayback"    # Z
    .param p3, "hasCapture"    # Z
    .param p4, "hasMIDI"    # Z
    .param p5, "cardNumber"    # Ljava/lang/String;
    .param p6, "deviceNumber"    # Ljava/lang/String;

    .prologue
    .line 192
    const/16 v17, 0x0

    .line 193
    .local v17, "nChannels":I
    const/16 v19, 0x0

    .line 194
    .local v19, "nSamplingRate2":I
    const/16 v20, 0x0

    .line 195
    .local v20, "nSamplingRate6":I
    const/4 v14, 0x0

    .line 196
    .local v14, "nSamplingRate24":I
    const/16 v18, 0x0

    .line 197
    .local v18, "nMaxSupportRate24":I
    const/4 v13, 0x0

    .line 198
    .local v13, "nSupportedFormat":I
    const/4 v9, 0x0

    .line 199
    .local v9, "isSmartdock":Z
    new-instance v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V

    .line 200
    .local v2, "usbAudioData":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/asound/card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 202
    .local v21, "streamPath":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_15f

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->parseAccInfo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_15b

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    .line 205
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_15b

    .line 206
    new-instance v15, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V

    .line 207
    .local v15, "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    check-cast v15, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    .line 208
    .restart local v15    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$200(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_12b

    .line 210
    const-string v3, "S16_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 211
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12f

    .line 212
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    or-int v17, v17, v3

    .line 213
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v19

    .line 221
    :cond_98
    :goto_98
    const/4 v13, 0x1

    .line 225
    :cond_99
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.channels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.format   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 2CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 6CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 24bit SamplingRate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_12b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4c

    .line 214
    :cond_12f
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_145

    .line 215
    or-int/lit8 v17, v17, 0x2

    .line 216
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v19

    goto/16 :goto_98

    .line 217
    :cond_145
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_98

    .line 218
    or-int/lit8 v17, v17, 0x20

    .line 219
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v20

    goto/16 :goto_98

    .line 306
    .end local v15    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .end local v16    # "i":I
    :cond_15b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->isSmartDockConnected()Z

    move-result v9

    .line 309
    :cond_15f
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v2 .. v14}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZII)V

    .line 312
    return-object v2
.end method

.method public getHDMIInfo(I)Ljava/lang/String;
    .registers 13
    .param p1, "state"    # I

    .prologue
    const/high16 v10, 0x40000

    const/4 v5, 0x1

    const/high16 v9, 0x200000

    const/high16 v8, 0x100000

    const/high16 v7, 0x80000

    .line 563
    and-int/lit16 v0, p1, 0xff

    .line 565
    .local v0, "ch_info":I
    const/high16 v6, 0x70000

    and-int v2, p1, v6

    .line 566
    .local v2, "format_info":I
    const/high16 v6, 0x3f80000

    and-int v4, p1, v6

    .line 568
    .local v4, "sampleRate_info":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1c

    const/4 v3, 0x0

    .line 570
    .local v3, "hdmi_state":I
    :goto_17
    if-nez v0, :cond_1e

    .line 571
    const-string v5, "dvi_or_non_speaker_hdmi_audio"

    .line 635
    :goto_1b
    return-object v5

    .end local v3    # "hdmi_state":I
    :cond_1c
    move v3, v5

    .line 568
    goto :goto_17

    .line 574
    .restart local v3    # "hdmi_state":I
    :cond_1e
    if-ne v3, v5, :cond_87

    .line 575
    iput v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiChannelInfo:I

    .line 576
    iput v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiFormatInfo:I

    .line 577
    iput v4, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiSampleRateInfo:I

    .line 584
    :cond_26
    :goto_26
    and-int v5, v2, v10

    if-ne v5, v10, :cond_90

    .line 585
    const/16 v2, 0x28

    .line 589
    :goto_2c
    const/high16 v5, 0x2000000

    and-int/2addr v5, v4

    const/high16 v6, 0x2000000

    if-ne v5, v6, :cond_93

    .line 590
    const v4, 0x2ee00

    .line 607
    :goto_36
    const/16 v2, 0x10

    .line 610
    const/16 v5, 0x10

    if-ne v2, v5, :cond_48

    .line 611
    const v5, 0xbb80

    if-le v4, v5, :cond_48

    .line 612
    and-int v5, v4, v9

    if-ne v5, v9, :cond_d3

    .line 613
    const v4, 0xbb80

    .line 623
    :cond_48
    :goto_48
    invoke-direct {p0, v3, v0, v2, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->sendIntentToPopupUI(IIII)I

    move-result v0

    .line 625
    const/4 v5, 0x2

    if-eq v0, v5, :cond_51

    .line 626
    const/16 v2, 0x10

    .line 629
    :cond_51
    const/4 v1, 0x0

    .line 631
    .local v1, "format24":I
    const/16 v5, 0x18

    if-eq v2, v5, :cond_5a

    const/16 v5, 0x28

    if-ne v2, v5, :cond_5b

    .line 632
    :cond_5a
    const/4 v1, 0x1

    .line 635
    :cond_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":48000:48000:0:0:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1b

    .line 578
    .end local v1    # "format24":I
    :cond_87
    if-nez v3, :cond_26

    .line 579
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiChannelInfo:I

    .line 580
    iget v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiFormatInfo:I

    .line 581
    iget v4, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiSampleRateInfo:I

    goto :goto_26

    .line 587
    :cond_90
    const/16 v2, 0x10

    goto :goto_2c

    .line 591
    :cond_93
    const/high16 v5, 0x1000000

    and-int/2addr v5, v4

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_9e

    .line 592
    const v4, 0x2b110

    goto :goto_36

    .line 593
    :cond_9e
    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    const/high16 v6, 0x800000

    if-ne v5, v6, :cond_a9

    .line 594
    const v4, 0x17700

    goto :goto_36

    .line 595
    :cond_a9
    const/high16 v5, 0x400000

    and-int/2addr v5, v4

    const/high16 v6, 0x400000

    if-ne v5, v6, :cond_b4

    .line 596
    const v4, 0x15888

    goto :goto_36

    .line 597
    :cond_b4
    and-int v5, v4, v9

    if-ne v5, v9, :cond_bd

    .line 598
    const v4, 0xbb80

    goto/16 :goto_36

    .line 599
    :cond_bd
    and-int v5, v4, v8

    if-ne v5, v8, :cond_c6

    .line 600
    const v4, 0xac44

    goto/16 :goto_36

    .line 601
    :cond_c6
    and-int v5, v4, v7

    if-ne v5, v7, :cond_ce

    .line 602
    const/16 v4, 0x7d00

    goto/16 :goto_36

    .line 604
    :cond_ce
    const v4, 0xbb80

    goto/16 :goto_36

    .line 614
    :cond_d3
    and-int v5, v4, v8

    if-ne v5, v8, :cond_dc

    .line 615
    const v4, 0xac44

    goto/16 :goto_48

    .line 616
    :cond_dc
    and-int v5, v4, v7

    if-ne v5, v7, :cond_e4

    .line 617
    const/16 v4, 0x7d00

    goto/16 :goto_48

    .line 619
    :cond_e4
    const v4, 0xbb80

    goto/16 :goto_48
.end method

.method public final declared-synchronized updateUsbAudio(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V
    .registers 8
    .param p1, "usbAudioData"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;

    .prologue
    .line 640
    monitor-enter p0

    const/16 v0, 0x1f4

    .line 641
    .local v0, "delay":I
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 642
    iget-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHandler_usbAudio:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 645
    monitor-exit p0

    return-void

    .line 640
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method
