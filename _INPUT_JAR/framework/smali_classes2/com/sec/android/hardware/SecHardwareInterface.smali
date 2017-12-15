.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field public static final BROWSER:I = 0x4

.field public static final CALL:I = 0x1

.field public static final CAMERA:I = 0x6

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static EPEN_TYPE_PATH:Ljava/lang/String; = null

.field public static final HOTSPOT:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field public static final MDNIE_BROSWER_MODE:I = 0x8

.field public static final MDNIE_CAMERA_MODE:I = 0x4

.field public static final MDNIE_EBOOK_MODE:I = 0x9

.field public static final MDNIE_EMAIL_MODE:I = 0xa

.field public static final MDNIE_GALLERY_MODE:I = 0x6

.field public static final MDNIE_UI_MODE:I = 0x0

.field public static final MDNIE_VIDEO_MODE:I = 0x1

.field public static final MDNIE_VT_MODE:I = 0x7

.field public static final MUSIC:I = 0x3

.field private static final READING_MODE_PATH:Ljava/lang/String; = "sys.dnle.readingmode"

.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x1

.field public static final TORCH_BRIGHTNESS_MIN:I = 0xe

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x1

.field public static final VIDEO:I = 0x2

.field private static in:Ljava/io/InputStream;

.field private static isCabcDaemonConnected:Z

.field private static out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 153
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    .line 154
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    .line 502
    const-string v0, "/sys/class/sec/sec_epen/epen_type"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    .line 553
    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static CabcDaemonConnect()V
    .registers 0

    .prologue
    .line 183
    return-void
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 187
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_2f

    .line 192
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 193
    .local v3, "send_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 194
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 197
    const/16 v4, 0x64

    new-array v2, v4, [B

    .line 198
    .local v2, "recv_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 199
    .local v1, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_2a

    .line 210
    .end local v1    # "len":I
    .end local v2    # "recv_buf":[B
    .end local v3    # "send_buf":[B
    :goto_29
    return-void

    .line 202
    :catch_2a
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2f
    sput-boolean v5, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    goto :goto_29
.end method

.method private static IsCabcDaemonConnected()Z
    .registers 1

    .prologue
    .line 160
    sget-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    return v0
.end method

.method private static _setmDNIeUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 249
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static enableFastGloveMode(Z)Z
    .registers 5
    .param p0, "enable"    # Z

    .prologue
    .line 602
    const/4 v1, 0x1

    .line 604
    .local v1, "ret":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 605
    if-eqz p0, :cond_1d

    .line 608
    :try_start_f
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,1"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_16} :catch_18

    move-result v1

    .line 622
    :cond_17
    :goto_17
    return v1

    .line 609
    :catch_18
    move-exception v0

    .line 610
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_17

    .line 615
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1d
    :try_start_1d
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,0"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_26

    move-result v1

    goto :goto_17

    .line 616
    :catch_26
    move-exception v0

    .line 617
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_17
.end method

.method public static enableGloveMode(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 592
    const/4 v1, 0x1

    .line 593
    .local v1, "ret":Z
    const/4 v0, 0x1

    .line 595
    .local v0, "con":Z
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 597
    :goto_7
    return v1

    .line 595
    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static enableHandgripEvent(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method public static enableHoverEvent(Z)Z
    .registers 4
    .param p0, "enable"    # Z

    .prologue
    .line 566
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 568
    :try_start_c
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_17

    const-string v1, "hover_enable,1"

    :goto_12
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 573
    :goto_16
    return v1

    .line 568
    :cond_17
    const-string v1, "hover_enable,0"
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_12

    .line 569
    :catch_1a
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 573
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static enableISPFirmwareUpdate(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 628
    const-string v1, "/sys/class/camera/rear/rear_checkApp"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static enableShowBriefingInformation(Z)Z
    .registers 4
    .param p0, "enable"    # Z

    .prologue
    .line 636
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_c

    const-string/jumbo v1, "scrub_enable,1"

    :goto_7
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 641
    :goto_b
    return v1

    .line 636
    :cond_c
    const-string/jumbo v1, "scrub_enable,0"
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_7

    .line 637
    :catch_10
    move-exception v0

    .line 638
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 641
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static getEPenType()I
    .registers 11

    .prologue
    const/4 v7, -0x1

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, -0x1

    .line 518
    .local v6, "type":I
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v10, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_14} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_50
    .catchall {:try_start_3 .. :try_end_14} :catchall_60

    .line 525
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_34
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_70
    .catchall {:try_start_14 .. :try_end_1b} :catchall_6d

    move-result v6

    .line 538
    if-eqz v1, :cond_73

    .line 539
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_4a

    .line 540
    const/4 v0, 0x0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_22
    :goto_22
    move v7, v6

    .line 547
    :cond_23
    :goto_23
    return v7

    .line 520
    :catch_24
    move-exception v2

    .line 521
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_50
    .catchall {:try_start_25 .. :try_end_28} :catchall_60

    .line 538
    if-eqz v0, :cond_23

    .line 539
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    .line 540
    const/4 v0, 0x0

    goto :goto_23

    .line 542
    :catch_2f
    move-exception v4

    .line 543
    .local v4, "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 526
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ie":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_34
    move-exception v5

    .line 527
    .local v5, "ne":Ljava/lang/NumberFormatException;
    :try_start_35
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 528
    if-eqz v1, :cond_75

    .line 529
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3d} :catch_70
    .catchall {:try_start_35 .. :try_end_3d} :catchall_6d

    .line 530
    const/4 v0, 0x0

    .line 538
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3e
    if-eqz v0, :cond_23

    .line 539
    :try_start_40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_45

    .line 540
    const/4 v0, 0x0

    goto :goto_23

    .line 542
    :catch_45
    move-exception v4

    .line 543
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 542
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ie":Ljava/io/IOException;
    .end local v5    # "ne":Ljava/lang/NumberFormatException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4a
    move-exception v4

    .line 543
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 545
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_22

    .line 534
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_50
    move-exception v3

    .line 535
    .local v3, "ee":Ljava/io/IOException;
    :goto_51
    :try_start_51
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_60

    .line 538
    if-eqz v0, :cond_22

    .line 539
    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5b

    .line 540
    const/4 v0, 0x0

    goto :goto_22

    .line 542
    :catch_5b
    move-exception v4

    .line 543
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 537
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ie":Ljava/io/IOException;
    :catchall_60
    move-exception v7

    .line 538
    :goto_61
    if-eqz v0, :cond_67

    .line 539
    :try_start_63
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_68

    .line 540
    const/4 v0, 0x0

    .line 544
    :cond_67
    :goto_67
    throw v7

    .line 542
    :catch_68
    move-exception v4

    .line 543
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 537
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ie":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_6d
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_61

    .line 534
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_70
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_51

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_73
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_22

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "ne":Ljava/lang/NumberFormatException;
    :cond_75
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e
.end method

.method private static isReadingMode()Z
    .registers 2

    .prologue
    .line 256
    const-string/jumbo v1, "sys.dnle.readingmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 258
    const/4 v1, 0x1

    .line 260
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static setAmoledACL(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 221
    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setAmoledVideoGamma(Z)Z
    .registers 2
    .param p0, "videomode"    # Z

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .registers 10
    .param p0, "app"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 319
    const/4 v5, 0x0

    .line 324
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    const/4 v3, 0x0

    .line 330
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v6, 0x64

    :try_start_17
    new-array v0, v6, [B
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_19} :catch_37

    .line 333
    .local v0, "buffer":[B
    :try_start_19
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_37

    .line 339
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    if-eqz p1, :cond_44

    .line 340
    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_28
    aput-byte v7, v0, v6

    .line 344
    :goto_2a
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 345
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_4a

    move-object v3, v4

    .line 354
    .end local v0    # "buffer":[B
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_31
    return-void

    .line 334
    .restart local v0    # "buffer":[B
    :catch_32
    move-exception v1

    .line 335
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_31

    .line 346
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_37
    move-exception v1

    .line 347
    .local v1, "e":Ljava/io/IOException;
    :goto_38
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 349
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_31

    .line 350
    :catch_3f
    move-exception v2

    .line 351
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_44
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_47
    aput-byte v7, v0, v6
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_49} :catch_4a

    goto :goto_2a

    .line 346
    :catch_4a
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_38
.end method

.method public static setBatteryUse(IZ)V
    .registers 4
    .param p0, "module"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_2e

    .line 88
    :goto_3
    return-void

    .line 65
    :pswitch_4
    :try_start_4
    const-string v1, "call"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_3

    .line 85
    :catch_a
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_f
    :try_start_f
    const-string/jumbo v1, "video"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 71
    :pswitch_16
    const-string v1, "music"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 74
    :pswitch_1c
    const-string v1, "browser"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 77
    :pswitch_22
    const-string v1, "hotspot"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 80
    :pswitch_28
    const-string v1, "camera"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_a

    goto :goto_3

    .line 63
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_f
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

.method public static setEPenSavingmode(I)Z
    .registers 2
    .param p0, "enable"    # I

    .prologue
    .line 558
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEPenType(I)Z
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 507
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEpenHandType(I)V
    .registers 7
    .param p0, "handtype"    # I

    .prologue
    .line 474
    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    .line 475
    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 481
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_1e

    .line 486
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    if-nez p0, :cond_2b

    .line 487
    const/16 v5, 0x30

    :try_start_11
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    .line 490
    :cond_14
    :goto_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_34

    move-object v2, v3

    .line 499
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_18
    return-void

    .line 482
    :catch_19
    move-exception v0

    .line 483
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 491
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 492
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 495
    :catch_26
    move-exception v1

    .line 496
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 488
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2b
    const/4 v5, 0x1

    if-ne p0, v5, :cond_14

    .line 489
    const/16 v5, 0x31

    :try_start_30
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_14

    .line 491
    :catch_34
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1f
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .registers 7
    .param p0, "max_freq"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 365
    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 371
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_1e

    .line 376
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 377
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_2b

    move-object v2, v3

    .line 386
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_18
    return-void

    .line 372
    :catch_19
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 378
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 381
    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 382
    :catch_26
    move-exception v1

    .line 383
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 378
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1f
.end method

.method public static setPlayVideoSpeed(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public static setPowerSaveFPS(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 360
    return-void
.end method

.method private static setReadingMode(Z)V
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 265
    if-eqz p0, :cond_b

    .line 266
    const-string/jumbo v0, "sys.dnle.readingmode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_a
    return-void

    .line 268
    :cond_b
    const-string/jumbo v0, "sys.dnle.readingmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static setTconUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 291
    const-string v0, "/sys/class/tcon/tcon/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setTorchLight(I)V
    .registers 9
    .param p0, "level"    # I

    .prologue
    .line 420
    const/4 v2, 0x0

    .line 422
    .local v2, "fw":Ljava/io/FileWriter;
    const-string v5, " "

    .line 426
    .local v5, "modelname":Ljava/lang/String;
    const-string v7, "GT-N7000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "GT-I9220"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 428
    :cond_13
    const-string v6, "/sys/class/leds/leds-sec/brightness"

    .line 440
    .local v6, "path":Ljava/lang/String;
    :goto_15
    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v1, "fl":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_22

    .line 442
    const-string v6, "/sys/class/camera/rear/rear_flash"

    .line 444
    :cond_22
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_27} :catch_96
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_75
    .catchall {:try_start_15 .. :try_end_27} :catchall_84

    .line 446
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    if-lez p0, :cond_59

    const/16 v7, 0xf

    if-ge p0, v7, :cond_59

    .line 448
    :try_start_2d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "lLevel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_34} :catch_5f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_93
    .catchall {:try_start_2d .. :try_end_34} :catchall_90

    .line 462
    .end local v4    # "lLevel":Ljava/lang/String;
    :goto_34
    if-eqz v3, :cond_98

    .line 464
    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_6f

    move-object v2, v3

    .line 470
    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_3a
    :goto_3a
    return-void

    .line 429
    .end local v6    # "path":Ljava/lang/String;
    :cond_3b
    const-string v7, "SHV-E160S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    const-string v7, "SHV-E160K"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    const-string v7, "SHV-E160L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 433
    :cond_53
    const-string v6, "/sys/class/ledflash/sec_ledflash/torch"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_15

    .line 436
    .end local v6    # "path":Ljava/lang/String;
    :cond_56
    const-string v6, "/sys/class/camera/flash/rear_flash"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_15

    .line 455
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_59
    :try_start_59
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_93
    .catchall {:try_start_59 .. :try_end_5e} :catchall_90

    goto :goto_34

    .line 457
    :catch_5f
    move-exception v0

    move-object v2, v3

    .line 458
    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_84

    .line 462
    if-eqz v2, :cond_3a

    .line 464
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_3a

    .line 465
    :catch_6a
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_6f
    move-exception v0

    .line 466
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 467
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_3a

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fl":Ljava/io/File;
    :catch_75
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_76
    :try_start_76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_84

    .line 462
    if-eqz v2, :cond_3a

    .line 464
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_3a

    .line 465
    :catch_7f
    move-exception v0

    .line 466
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 462
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_84
    move-exception v7

    :goto_85
    if-eqz v2, :cond_8a

    .line 464
    :try_start_87
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 467
    :cond_8a
    :goto_8a
    throw v7

    .line 465
    :catch_8b
    move-exception v0

    .line 466
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 462
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_90
    move-exception v7

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_85

    .line 459
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_93
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_76

    .line 457
    .end local v1    # "fl":Ljava/io/File;
    :catch_96
    move-exception v0

    goto :goto_61

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_98
    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_3a
.end method

.method public static setTorchLight(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 397
    if-eqz p0, :cond_8

    .line 398
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 402
    :goto_7
    return-void

    .line 400
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_7
.end method

.method public static setTouchJitterFilter(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeColorBlind(Z[I)Z
    .registers 3
    .param p0, "enable"    # Z
    .param p1, "result"    # [I

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeNegative(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeOutDoor(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeReadingMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 232
    if-nez p0, :cond_b

    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    .line 237
    :goto_6
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    return v0

    .line 235
    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    goto :goto_6
.end method

.method public static setmDNIeUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 241
    invoke-static {}, Lcom/sec/android/hardware/SecHardwareInterface;->isReadingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    goto :goto_7
.end method

.method public static setmDNIeUserMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 274
    const-string v0, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v2, 0x0

    .line 104
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_22

    .line 110
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 111
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2f

    .line 122
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1c
    return v4

    .line 105
    :catch_1d
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    .line 112
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 116
    :catch_2a
    move-exception v1

    .line 117
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_23
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 126
    const/4 v2, 0x0

    .line 130
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 136
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 137
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 148
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 131
    :catch_19
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 138
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 142
    :catch_26
    move-exception v1

    .line 143
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method
