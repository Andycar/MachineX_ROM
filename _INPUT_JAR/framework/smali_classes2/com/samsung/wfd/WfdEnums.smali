.class public Lcom/samsung/wfd/WfdEnums;
.super Ljava/lang/Object;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdEnums$ConnectionType;,
        Lcom/samsung/wfd/WfdEnums$ErrorType;,
        Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;,
        Lcom/samsung/wfd/WfdEnums$RuntimecmdType;,
        Lcom/samsung/wfd/WfdEnums$ControlCmdType;,
        Lcom/samsung/wfd/WfdEnums$RtpTransportType;,
        Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;,
        Lcom/samsung/wfd/WfdEnums$WfdEvent;,
        Lcom/samsung/wfd/WfdEnums$SessionState;,
        Lcom/samsung/wfd/WfdEnums$VideoFormat;,
        Lcom/samsung/wfd/WfdEnums$AudioCodec;,
        Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;,
        Lcom/samsung/wfd/WfdEnums$CapabilityType;,
        Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    }
.end annotation


# static fields
.field public static final ACTION_SECURE_END:Ljava/lang/String; = "android.intent.action.SECURE_END"

.field public static final ACTION_SECURE_END_DONE:Ljava/lang/String; = "android.intent.action.SECURE_END_DONE"

.field public static final ACTION_SECURE_START:Ljava/lang/String; = "android.intent.action.SECURE_START"

.field public static final ACTION_SECURE_START_DONE:Ljava/lang/String; = "android.intent.action.SECURE_START_DONE"

.field public static final ACTION_WIFI_DISPLAY:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final ACTION_WIFI_DISPLAY_BITRATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BITRATE"

.field public static final ACTION_WIFI_DISPLAY_PLAYBACK_MODE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PLAYBACK_MODE"

.field public static final ACTION_WIFI_DISPLAY_RESOLUTION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RESOLUTION"

.field public static final ACTION_WIFI_DISPLAY_RTP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RTP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_TCP_PLAYBACK_CONTROL:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

.field public static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_VIDEO"

.field static final BIT0:I = 0x1

.field static final BIT1:I = 0x2

.field static final BIT10:I = 0x400

.field static final BIT11:I = 0x800

.field static final BIT12:I = 0x1000

.field static final BIT13:I = 0x2000

.field static final BIT14:I = 0x4000

.field static final BIT15:I = 0x8000

.field static final BIT16:I = 0x10000

.field static final BIT17:I = 0x20000

.field static final BIT18:I = 0x40000

.field static final BIT19:I = 0x80000

.field static final BIT2:I = 0x4

.field static final BIT20:I = 0x100000

.field static final BIT21:I = 0x200000

.field static final BIT22:I = 0x400000

.field static final BIT23:I = 0x800000

.field static final BIT24:I = 0x1000000

.field static final BIT25:I = 0x2000000

.field static final BIT26:I = 0x4000000

.field static final BIT27:I = 0x8000000

.field static final BIT28:I = 0x10000000

.field static final BIT29:I = 0x20000000

.field static final BIT3:I = 0x8

.field static final BIT30:I = 0x40000000

.field static final BIT31:I = -0x80000000

.field static final BIT4:I = 0x10

.field static final BIT5:I = 0x20

.field static final BIT6:I = 0x40

.field static final BIT7:I = 0x80

.field static final BIT8:I = 0x100

.field static final BIT9:I = 0x200

.field public static final CONFIG_BUNDLE_KEY:Ljava/lang/String; = "wfd_config"

.field public static final H264_CEA_1280x720p24:I = 0x8000

.field public static final H264_CEA_1280x720p25:I = 0x400

.field public static final H264_CEA_1280x720p30:I = 0x20

.field public static final H264_CEA_1280x720p50:I = 0x800

.field public static final H264_CEA_1280x720p60:I = 0x40

.field public static final H264_CEA_1920x1080i50:I = 0x4000

.field public static final H264_CEA_1920x1080i60:I = 0x200

.field public static final H264_CEA_1920x1080p24:I = 0x10000

.field public static final H264_CEA_1920x1080p25:I = 0x1000

.field public static final H264_CEA_1920x1080p30:I = 0x80

.field public static final H264_CEA_1920x1080p50:I = 0x2000

.field public static final H264_CEA_1920x1080p60:I = 0x100

.field public static final H264_CEA_640x480p60:I = 0x1

.field public static final H264_CEA_720x480i60:I = 0x4

.field public static final H264_CEA_720x480p60:I = 0x2

.field public static final H264_CEA_720x576i50:I = 0x10

.field public static final H264_CEA_720x576p50:I = 0x8

.field public static final H264_HH_640x360p30:I = 0x40

.field public static final H264_HH_640x360p60:I = 0x80

.field public static final H264_HH_800x480p30:I = 0x1

.field public static final H264_HH_800x480p60:I = 0x2

.field public static final H264_HH_848x480p30:I = 0x400

.field public static final H264_HH_848x480p60:I = 0x800

.field public static final H264_HH_854x480p30:I = 0x4

.field public static final H264_HH_854x480p60:I = 0x8

.field public static final H264_HH_864x480p30:I = 0x10

.field public static final H264_HH_864x480p60:I = 0x20

.field public static final H264_HH_960x540p30:I = 0x100

.field public static final H264_VESA_1024x768p30:I = 0x4

.field public static final H264_VESA_1024x768p60:I = 0x8

.field public static final H264_VESA_1152x864p30:I = 0x10

.field public static final H264_VESA_1152x864p60:I = 0x20

.field public static final H264_VESA_1280x1024p30:I = 0x4000

.field public static final H264_VESA_1280x1024p60:I = 0x8000

.field public static final H264_VESA_1280x768p30:I = 0x40

.field public static final H264_VESA_1280x768p60:I = 0x80

.field public static final H264_VESA_1280x800p30:I = 0x100

.field public static final H264_VESA_1280x800p60:I = 0x200

.field public static final H264_VESA_1360x768p30:I = 0x400

.field public static final H264_VESA_1360x768p60:I = 0x800

.field public static final H264_VESA_1366x768p30:I = 0x1000

.field public static final H264_VESA_1366x768p60:I = 0x2000

.field public static final H264_VESA_1400x1050p30:I = 0x10000

.field public static final H264_VESA_1400x1050p60:I = 0x20000

.field public static final H264_VESA_1440x900p30:I = 0x40000

.field public static final H264_VESA_1440x900p60:I = 0x80000

.field public static final H264_VESA_1600x1200p30:I = 0x400000

.field public static final H264_VESA_1600x1200p60:I = 0x800000

.field public static final H264_VESA_1600x900p30:I = 0x100000

.field public static final H264_VESA_1600x900p60:I = 0x200000

.field public static final H264_VESA_1680x1024p30:I = 0x1000000

.field public static final H264_VESA_1680x1024p60:I = 0x2000000

.field public static final H264_VESA_1680x1050p30:I = 0x4000000

.field public static final H264_VESA_1680x1050p60:I = 0x8000000

.field public static final H264_VESA_1920x1200p30:I = 0x10000000

.field public static final H264_VESA_1920x1200p60:I = 0x20000000

.field public static final H264_VESA_800x600p30:I = 0x1

.field public static final H264_VESA_800x600p60:I = 0x2

.field private static resFps:I

.field private static resHeight:I

.field private static resWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput v0, Lcom/samsung/wfd/WfdEnums;->resWidth:I

    sput v0, Lcom/samsung/wfd/WfdEnums;->resHeight:I

    sput v0, Lcom/samsung/wfd/WfdEnums;->resFps:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    return-void
.end method

.method public static getResParams()[I
    .registers 3

    .prologue
    .line 99
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 100
    .local v0, "resParams":[I
    const/4 v1, 0x0

    sget v2, Lcom/samsung/wfd/WfdEnums;->resWidth:I

    aput v2, v0, v1

    .line 101
    const/4 v1, 0x1

    sget v2, Lcom/samsung/wfd/WfdEnums;->resHeight:I

    aput v2, v0, v1

    .line 102
    const/4 v1, 0x2

    sget v2, Lcom/samsung/wfd/WfdEnums;->resFps:I

    aput v2, v0, v1

    .line 103
    return-object v0
.end method

.method public static final isCeaResolution(I)Z
    .registers 7
    .param p0, "resolution"    # I

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x3c

    const/16 v3, 0x780

    const/16 v1, 0x438

    const/16 v2, 0x2d0

    .line 107
    sparse-switch p0, :sswitch_data_76

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_e
    return v0

    .line 109
    :sswitch_f
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    invoke-static {v0, v1, v4}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    .line 179
    :goto_16
    const/4 v0, 0x1

    goto :goto_e

    .line 113
    :sswitch_18
    const/16 v0, 0x1e0

    invoke-static {v2, v0, v4}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 117
    :sswitch_1e
    const/16 v0, 0x1e0

    invoke-static {v2, v0, v4}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 121
    :sswitch_24
    const/16 v0, 0x240

    invoke-static {v2, v0, v5}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 125
    :sswitch_2a
    const/16 v0, 0x240

    invoke-static {v2, v0, v5}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 129
    :sswitch_30
    const/16 v0, 0x500

    const/16 v1, 0x1e

    invoke-static {v0, v2, v1}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 133
    :sswitch_38
    const/16 v0, 0x500

    invoke-static {v0, v2, v4}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 137
    :sswitch_3e
    const/16 v0, 0x1e

    invoke-static {v3, v1, v0}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 141
    :sswitch_44
    invoke-static {v3, v1, v4}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 145
    :sswitch_48
    invoke-static {v3, v1, v4}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 149
    :sswitch_4c
    const/16 v0, 0x500

    const/16 v1, 0x19

    invoke-static {v0, v2, v1}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 153
    :sswitch_54
    const/16 v0, 0x500

    invoke-static {v0, v2, v5}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 157
    :sswitch_5a
    const/16 v0, 0x19

    invoke-static {v3, v1, v0}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 161
    :sswitch_60
    invoke-static {v3, v1, v5}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 165
    :sswitch_64
    invoke-static {v3, v1, v5}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 169
    :sswitch_68
    const/16 v0, 0x500

    const/16 v1, 0x18

    invoke-static {v0, v2, v1}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 173
    :sswitch_70
    const/16 v0, 0x18

    invoke-static {v3, v1, v0}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 107
    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_18
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_24
        0x10 -> :sswitch_2a
        0x20 -> :sswitch_30
        0x40 -> :sswitch_38
        0x80 -> :sswitch_3e
        0x100 -> :sswitch_44
        0x200 -> :sswitch_48
        0x400 -> :sswitch_4c
        0x800 -> :sswitch_54
        0x1000 -> :sswitch_5a
        0x2000 -> :sswitch_60
        0x4000 -> :sswitch_64
        0x8000 -> :sswitch_68
        0x10000 -> :sswitch_70
    .end sparse-switch
.end method

.method public static final isHhResolution(I)Z
    .registers 6
    .param p0, "resolution"    # I

    .prologue
    const/16 v4, 0x280

    const/16 v0, 0x168

    const/16 v3, 0x3c

    const/16 v2, 0x1e

    const/16 v1, 0x1e0

    .line 355
    sparse-switch p0, :sswitch_data_44

    .line 392
    const/4 v0, 0x0

    .line 394
    :goto_e
    return v0

    .line 357
    :sswitch_f
    const/16 v0, 0x320

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    .line 394
    :goto_14
    const/4 v0, 0x1

    goto :goto_e

    .line 361
    :sswitch_16
    const/16 v0, 0x320

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_14

    .line 365
    :sswitch_1c
    const/16 v0, 0x360

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_14

    .line 369
    :sswitch_22
    const/16 v0, 0x360

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_14

    .line 373
    :sswitch_28
    invoke-static {v4, v0, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_14

    .line 377
    :sswitch_2c
    invoke-static {v4, v0, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_14

    .line 381
    :sswitch_30
    const/16 v0, 0x3c0

    const/16 v1, 0x21c

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_14

    .line 385
    :sswitch_38
    const/16 v0, 0x350

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    .line 388
    :sswitch_3d
    const/16 v0, 0x350

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_14

    .line 355
    nop

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_16
        0x10 -> :sswitch_1c
        0x20 -> :sswitch_22
        0x40 -> :sswitch_28
        0x80 -> :sswitch_2c
        0x100 -> :sswitch_30
        0x400 -> :sswitch_38
        0x800 -> :sswitch_3d
    .end sparse-switch
.end method

.method public static final isVesaResolution(I)Z
    .registers 7
    .param p0, "resolution"    # I

    .prologue
    const/16 v5, 0x500

    const/16 v4, 0x400

    const/16 v1, 0x300

    const/16 v3, 0x3c

    const/16 v2, 0x1e

    .line 215
    sparse-switch p0, :sswitch_data_e2

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_e
    return v0

    .line 217
    :sswitch_f
    const/16 v0, 0x320

    const/16 v1, 0x258

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    .line 339
    :goto_16
    const/4 v0, 0x1

    goto :goto_e

    .line 221
    :sswitch_18
    const/16 v0, 0x320

    const/16 v1, 0x258

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 225
    :sswitch_20
    invoke-static {v4, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 229
    :sswitch_24
    invoke-static {v4, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 233
    :sswitch_28
    const/16 v0, 0x480

    const/16 v1, 0x360

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 237
    :sswitch_30
    const/16 v0, 0x480

    const/16 v1, 0x360

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 241
    :sswitch_38
    invoke-static {v5, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 245
    :sswitch_3c
    invoke-static {v5, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 249
    :sswitch_40
    const/16 v0, 0x320

    invoke-static {v5, v0, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 253
    :sswitch_46
    const/16 v0, 0x320

    invoke-static {v5, v0, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 257
    :sswitch_4c
    const/16 v0, 0x550

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 261
    :sswitch_52
    const/16 v0, 0x550

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 265
    :sswitch_58
    const/16 v0, 0x556

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 269
    :sswitch_5e
    const/16 v0, 0x556

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 273
    :sswitch_64
    invoke-static {v5, v4, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 277
    :sswitch_68
    invoke-static {v5, v4, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 281
    :sswitch_6c
    const/16 v0, 0x578

    const/16 v1, 0x41a

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 285
    :sswitch_74
    const/16 v0, 0x578

    const/16 v1, 0x41a

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 289
    :sswitch_7c
    const/16 v0, 0x5a0

    const/16 v1, 0x384

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 293
    :sswitch_84
    const/16 v0, 0x5a0

    const/16 v1, 0x384

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 297
    :sswitch_8c
    const/16 v0, 0x640

    const/16 v1, 0x384

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto :goto_16

    .line 301
    :sswitch_94
    const/16 v0, 0x640

    const/16 v1, 0x384

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 305
    :sswitch_9d
    const/16 v0, 0x640

    const/16 v1, 0x4b0

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 309
    :sswitch_a6
    const/16 v0, 0x640

    const/16 v1, 0x4b0

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 313
    :sswitch_af
    const/16 v0, 0x690

    invoke-static {v0, v4, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 317
    :sswitch_b6
    const/16 v0, 0x690

    invoke-static {v0, v4, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 321
    :sswitch_bd
    const/16 v0, 0x690

    const/16 v1, 0x41a

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 325
    :sswitch_c6
    const/16 v0, 0x690

    const/16 v1, 0x41a

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 329
    :sswitch_cf
    const/16 v0, 0x780

    const/16 v1, 0x4b0

    invoke-static {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 333
    :sswitch_d8
    const/16 v0, 0x780

    const/16 v1, 0x4b0

    invoke-static {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums;->setResParams(III)V

    goto/16 :goto_16

    .line 215
    nop

    :sswitch_data_e2
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_18
        0x4 -> :sswitch_20
        0x8 -> :sswitch_24
        0x10 -> :sswitch_28
        0x20 -> :sswitch_30
        0x40 -> :sswitch_38
        0x80 -> :sswitch_3c
        0x100 -> :sswitch_40
        0x200 -> :sswitch_46
        0x400 -> :sswitch_4c
        0x800 -> :sswitch_52
        0x1000 -> :sswitch_58
        0x2000 -> :sswitch_5e
        0x4000 -> :sswitch_64
        0x8000 -> :sswitch_68
        0x10000 -> :sswitch_6c
        0x20000 -> :sswitch_74
        0x40000 -> :sswitch_7c
        0x80000 -> :sswitch_84
        0x100000 -> :sswitch_8c
        0x200000 -> :sswitch_94
        0x400000 -> :sswitch_9d
        0x800000 -> :sswitch_a6
        0x1000000 -> :sswitch_af
        0x2000000 -> :sswitch_b6
        0x4000000 -> :sswitch_bd
        0x8000000 -> :sswitch_c6
        0x10000000 -> :sswitch_cf
        0x20000000 -> :sswitch_d8
    .end sparse-switch
.end method

.method private static setResParams(III)V
    .registers 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "fps"    # I

    .prologue
    .line 93
    sput p0, Lcom/samsung/wfd/WfdEnums;->resWidth:I

    .line 94
    sput p1, Lcom/samsung/wfd/WfdEnums;->resHeight:I

    .line 95
    sput p2, Lcom/samsung/wfd/WfdEnums;->resFps:I

    .line 96
    return-void
.end method
