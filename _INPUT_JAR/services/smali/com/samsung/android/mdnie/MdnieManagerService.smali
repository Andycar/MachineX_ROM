.class public Lcom/samsung/android/mdnie/MdnieManagerService;
.super Lcom/samsung/android/mdnie/IMdnieManager$Stub;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/MdnieManagerService$1;,
        Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MdnieManagerService"


# instance fields
.field private final DEBUG:Z

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mEmergencyModeDiabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mMdnieCustomized:Z

.field private mMdnieWorkingCondition:Z

.field private mNegativeColorEnabled:Z

.field private mReadingModeEnabled:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mVisionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;-><init>()V

    .line 68
    const-string v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->DEBUG:Z

    .line 72
    iput-object v6, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 74
    const-string/jumbo v2, "screen_mode_automatic_setting"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 75
    const-string/jumbo v2, "screen_mode_setting"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 77
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    .line 78
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    .line 79
    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    .line 81
    const-string v2, "/sys/class/mdnie/mdnie/negative"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    .line 82
    const-string v2, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    .line 83
    const-string v2, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    .line 87
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieCustomized:Z

    .line 92
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    .line 93
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    .line 94
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    .line 95
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenCurtainEnabled:Z

    .line 96
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mNegativeColorEnabled:Z

    .line 97
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mColorBlindEnabled:Z

    .line 98
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    .line 99
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingModeEnabled:Z

    .line 100
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEbookScenarioEnabled:Z

    .line 101
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mBrowserScenarioEnabled:Z

    .line 103
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 107
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    .line 109
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;Lcom/samsung/android/mdnie/MdnieManagerService$1;)V

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    const-string v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_ce

    .line 119
    iput v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    .line 127
    :goto_88
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_automatic_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_e9

    move v2, v3

    :goto_98
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    .line 128
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_eb

    .line 130
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    .line 137
    :goto_a1
    iput v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    .line 139
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    .line 140
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    .line 141
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    .line 143
    iget v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->setScreenMode(I)Z

    .line 144
    iget v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->setContentMode(I)Z

    .line 147
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 149
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v2, :cond_cd

    .line 150
    new-instance v2, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {v2, p1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 151
    :cond_cd
    return-void

    .line 120
    :cond_ce
    const-string v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_da

    .line 121
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_88

    .line 122
    :cond_da
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_e6

    .line 123
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_88

    .line 125
    :cond_e6
    iput v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_88

    :cond_e9
    move v2, v4

    .line 127
    goto :goto_98

    .line 134
    :cond_eb
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    goto :goto_a1
.end method

.method static synthetic access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 258
    const/4 v2, 0x0

    .line 262
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_22

    .line 268
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 269
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2f

    .line 280
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1c
    return v4

    .line 263
    :catch_1d
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    .line 270
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 274
    :catch_2a
    move-exception v1

    .line 275
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 270
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

    .line 284
    const/4 v2, 0x0

    .line 288
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 294
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 306
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 289
    :catch_19
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 296
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 300
    :catch_26
    move-exception v1

    .line 301
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 296
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

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .registers 12
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 314
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    :try_start_ad
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b7} :catch_c3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_c9

    .line 326
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_b7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 327
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_d7

    move-object v3, v4

    .line 337
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_c2
    return v5

    .line 321
    :catch_c3
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    move v5, v6

    .line 323
    goto :goto_c2

    .line 328
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_c9
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    :goto_ca
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d2

    :goto_d0
    move v5, v6

    .line 335
    goto :goto_c2

    .line 332
    :catch_d2
    move-exception v1

    .line 333
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d0

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_d7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_ca
.end method


# virtual methods
.method public getContentMode()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getScreenMode()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public getVisionMode()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    return v0
.end method

.method public setAdjustVisionMode(I[I)Z
    .registers 7
    .param p1, "mode"    # I
    .param p2, "data"    # [I

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 208
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 210
    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1d

    .line 211
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_f
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    invoke-static {v2, p1, p2}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite_color_blind(Ljava/lang/String;I[I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 213
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    .line 214
    const/4 v2, 0x1

    monitor-exit v3

    .line 218
    :goto_1b
    return v2

    .line 216
    :cond_1c
    monitor-exit v3

    .line 218
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 216
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setContentMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 244
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 246
    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1d

    .line 247
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 248
    :try_start_f
    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v2, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 249
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    .line 250
    const/4 v2, 0x1

    monitor-exit v3

    .line 254
    :goto_1b
    return v2

    .line 252
    :cond_1c
    monitor-exit v3

    .line 254
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 252
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setScreenMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 226
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 228
    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1d

    .line 229
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 230
    :try_start_f
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v2, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 231
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    .line 232
    const/4 v2, 0x1

    monitor-exit v3

    .line 236
    :goto_1b
    return v2

    .line 234
    :cond_1c
    monitor-exit v3

    .line 236
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 234
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setVisionMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 192
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 194
    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1d

    .line 195
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_f
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    invoke-static {v2, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 197
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    .line 198
    const/4 v2, 0x1

    monitor-exit v3

    .line 202
    :goto_1b
    return v2

    .line 200
    :cond_1c
    monitor-exit v3

    .line 202
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 200
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v2
.end method
