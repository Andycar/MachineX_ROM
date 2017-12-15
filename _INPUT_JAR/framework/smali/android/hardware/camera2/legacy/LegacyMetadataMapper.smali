.class public Landroid/hardware/camera2/legacy/LegacyMetadataMapper;
.super Ljava/lang/Object;
.source "LegacyMetadataMapper.java"


# static fields
.field private static final APPROXIMATE_CAPTURE_DELAY_MS:J = 0xc8L

.field private static final APPROXIMATE_JPEG_ENCODE_TIME_MS:J = 0x258L

.field private static final APPROXIMATE_SENSOR_AREA_PX:J = 0x800000L

.field public static final HAL_PIXEL_FORMAT_BGRA_8888:I = 0x5

.field public static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field public static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field public static final HAL_PIXEL_FORMAT_RGBA_8888:I = 0x1

.field private static final LENS_INFO_MINIMUM_FOCUS_DISTANCE_FIXED_FOCUS:F = 0.0f

.field static final LIE_ABOUT_AE_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AE_STATE:Z = false

.field static final LIE_ABOUT_AF:Z = false

.field static final LIE_ABOUT_AF_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AWB:Z = false

.field static final LIE_ABOUT_AWB_STATE:Z = false

.field private static final NS_PER_MS:J = 0xf4240L

.field private static final PREVIEW_ASPECT_RATIO_TOLERANCE:F = 0.01f

.field private static final REQUEST_MAX_NUM_INPUT_STREAMS_COUNT:I = 0x0

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC:I = 0x3

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC_STALL:I = 0x1

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_RAW:I = 0x0

.field private static final REQUEST_PIPELINE_MAX_DEPTH_HAL1:I = 0x3

.field private static final REQUEST_PIPELINE_MAX_DEPTH_OURS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LegacyMetadataMapper"

.field static final UNKNOWN_MODE:I = -0x1

.field private static final VERBOSE:Z

.field private static final sAllowedTemplates:[I

.field private static final sEffectModes:[I

.field private static final sLegacyEffectMode:[Ljava/lang/String;

.field private static final sLegacySceneModes:[Ljava/lang/String;

.field private static final sSceneModes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x9

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 59
    const-string v0, "LegacyMetadataMapper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    .line 978
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v6

    const-string v1, "action"

    aput-object v1, v0, v7

    const-string/jumbo v1, "portrait"

    aput-object v1, v0, v3

    const-string v1, "landscape"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string/jumbo v2, "night"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "night-portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "theatre"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "beach"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "snow"

    aput-object v2, v0, v1

    const-string/jumbo v1, "sunset"

    aput-object v1, v0, v5

    const/16 v1, 0xa

    const-string/jumbo v2, "steadyphoto"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fireworks"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "sports"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "party"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "candlelight"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "barcode"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hdr"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    .line 998
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_c2

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    .line 1042
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mono"

    aput-object v1, v0, v7

    const-string/jumbo v1, "negative"

    aput-object v1, v0, v3

    const-string/jumbo v1, "solarize"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string/jumbo v2, "sepia"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "posterize"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "whiteboard"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "blackboard"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "aqua"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    .line 1054
    new-array v0, v5, [I

    fill-array-data v0, :array_e8

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    .line 1165
    new-array v0, v4, [I

    fill-array-data v0, :array_fe

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    return-void

    .line 998
    :array_c2
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x12
    .end array-data

    .line 1054
    :array_e8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 1165
    :array_fe
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V
    .registers 9
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    .local p0, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 972
    .local v2, "size":Landroid/hardware/Camera$Size;
    new-instance v0, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 974
    .local v0, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 976
    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1e
    return-void
.end method

.method private static calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J
    .registers 11
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 1146
    const-wide/32 v2, 0xbebc200

    .line 1147
    .local v2, "baseDuration":J
    iget v6, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v6, v6

    iget v8, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v8, v8

    mul-long v0, v6, v8

    .line 1148
    .local v0, "area":J
    const-wide/16 v4, 0x47

    .line 1150
    .local v4, "stallPerArea":J
    mul-long v6, v0, v4

    add-long/2addr v6, v2

    return-wide v6
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1135
    .local v0, "legacyFps":[I
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    .line 1136
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    .line 1137
    return-object v0
.end method

.method static convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;
    .registers 9
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1402
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1403
    :cond_9
    const-string v2, "LegacyMetadataMapper"

    const-string v3, "No focus modes supported; API1 bug"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 v1, 0x0

    .line 1442
    :cond_11
    :goto_11
    return-object v1

    .line 1407
    :cond_12
    const/4 v1, 0x0

    .line 1408
    .local v1, "param":Ljava/lang/String;
    packed-switch p0, :pswitch_data_5a

    .line 1432
    :goto_16
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1434
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1435
    .local v0, "defaultMode":Ljava/lang/String;
    const-string v2, "LegacyMetadataMapper"

    const-string v3, "convertAfModeToLegacy - ignoring unsupported mode %d, defaulting to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    move-object v1, v0

    goto :goto_11

    .line 1410
    .end local v0    # "defaultMode":Ljava/lang/String;
    :pswitch_3b
    const-string v1, "auto"

    .line 1411
    goto :goto_16

    .line 1413
    :pswitch_3e
    const-string v1, "continuous-picture"

    .line 1414
    goto :goto_16

    .line 1416
    :pswitch_41
    const-string v1, "continuous-video"

    .line 1417
    goto :goto_16

    .line 1419
    :pswitch_44
    const-string v1, "edof"

    .line 1420
    goto :goto_16

    .line 1422
    :pswitch_47
    const-string/jumbo v1, "macro"

    .line 1423
    goto :goto_16

    .line 1425
    :pswitch_4b
    const-string v2, "fixed"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1426
    const-string v1, "fixed"

    goto :goto_16

    .line 1428
    :cond_56
    const-string v1, "infinity"

    goto :goto_16

    .line 1408
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3b
        :pswitch_47
        :pswitch_41
        :pswitch_3e
        :pswitch_44
    .end packed-switch
.end method

.method private static convertAntiBandingMode(Ljava/lang/String;)I
    .registers 7
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1093
    if-nez p0, :cond_8

    .line 1112
    :goto_7
    return v0

    .line 1097
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5e

    :cond_f
    move v5, v0

    :goto_10
    packed-switch v5, :pswitch_data_70

    .line 1111
    const-string v1, "LegacyMetadataMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAntiBandingMode - Unknown antibanding mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1097
    :sswitch_2c
    const-string/jumbo v5, "off"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v1

    goto :goto_10

    :sswitch_37
    const-string v5, "50hz"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v2

    goto :goto_10

    :sswitch_41
    const-string v5, "60hz"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v3

    goto :goto_10

    :sswitch_4b
    const-string v5, "auto"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v4

    goto :goto_10

    :pswitch_55
    move v0, v1

    .line 1099
    goto :goto_7

    :pswitch_57
    move v0, v2

    .line 1102
    goto :goto_7

    :pswitch_59
    move v0, v3

    .line 1105
    goto :goto_7

    :pswitch_5b
    move v0, v4

    .line 1108
    goto :goto_7

    .line 1097
    nop

    :sswitch_data_5e
    .sparse-switch
        0x1ad6f -> :sswitch_2c
        0x18d8ed -> :sswitch_37
        0x194d4c -> :sswitch_41
        0x2dddaf -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_55
        :pswitch_57
        :pswitch_59
        :pswitch_5b
    .end packed-switch
.end method

.method static convertAntiBandingModeOrDefault(Ljava/lang/String;)I
    .registers 3
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1125
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v0

    .line 1126
    .local v0, "antiBandingMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1127
    const/4 v0, 0x0

    .line 1130
    .end local v0    # "antiBandingMode":I
    :cond_8
    return v0
.end method

.method static convertEffectModeFromLegacy(Ljava/lang/String;)I
    .registers 3
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1067
    if-nez p0, :cond_4

    .line 1068
    const/4 v1, 0x0

    .line 1074
    :goto_3
    return v1

    .line 1070
    :cond_4
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1071
    .local v0, "index":I
    if-gez v0, :cond_e

    .line 1072
    const/4 v1, -0x1

    goto :goto_3

    .line 1074
    :cond_e
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    aget v1, v1, v0

    goto :goto_3
.end method

.method static convertEffectModeToLegacy(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .prologue
    .line 1078
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    .line 1079
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 1080
    const/4 v1, 0x0

    .line 1082
    :goto_9
    return-object v1

    :cond_a
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_9
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .registers 1
    .param p0, "request"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    .line 1162
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 1163
    return-void
.end method

.method static convertSceneModeFromLegacy(Ljava/lang/String;)I
    .registers 3
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1019
    if-nez p0, :cond_4

    .line 1020
    const/4 v1, 0x0

    .line 1026
    :goto_3
    return v1

    .line 1022
    :cond_4
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1023
    .local v0, "index":I
    if-gez v0, :cond_e

    .line 1024
    const/4 v1, -0x1

    goto :goto_3

    .line 1026
    :cond_e
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    aget v1, v1, v0

    goto :goto_3
.end method

.method static convertSceneModeToLegacy(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .prologue
    .line 1030
    const/4 v1, 0x1

    if-ne p0, v1, :cond_6

    .line 1032
    const-string v1, "auto"

    .line 1039
    :goto_5
    return-object v1

    .line 1035
    :cond_6
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    .line 1036
    .local v0, "index":I
    if-gez v0, :cond_10

    .line 1037
    const/4 v1, 0x0

    goto :goto_5

    .line 1039
    :cond_10
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_5
.end method

.method public static createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "info"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 121
    const-string/jumbo v2, "parameters must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v2, "info must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "paramStr":Ljava/lang/String;
    new-instance v0, Landroid/hardware/CameraInfo;

    invoke-direct {v0}, Landroid/hardware/CameraInfo;-><init>()V

    .line 126
    .local v0, "outerInfo":Landroid/hardware/CameraInfo;
    iput-object p1, v0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    .line 128
    invoke-static {v1, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    return-object v2
.end method

.method public static createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 6
    .param p0, "parameters"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/hardware/CameraInfo;

    .prologue
    .line 143
    const-string/jumbo v2, "parameters must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "info must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v2, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    const-string v3, "info.info must not be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 149
    .local v0, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V

    .line 151
    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 152
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 153
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 155
    sget-boolean v2, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v2, :cond_42

    .line 156
    const-string v2, "LegacyMetadataMapper"

    const-string v3, "createCharacteristics metadata:"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "LegacyMetadataMapper"

    const-string v3, "--------------------------------------------------- (start)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->dumpToLog()V

    .line 159
    const-string v2, "LegacyMetadataMapper"

    const-string v3, "--------------------------------------------------- (end)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_42
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v2
.end method

.method public static createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 23
    .param p0, "c"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "templateId"    # I

    .prologue
    .line 1189
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    move/from16 v0, p1

    invoke-static {v1, v0}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "templateId out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1193
    :cond_13
    new-instance v16, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct/range {v16 .. v16}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1206
    .local v16, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1210
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1213
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1216
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1219
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1222
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1225
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1228
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1232
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 1233
    .local v7, "activeArray":Landroid/graphics/Rect;
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v20, 0x0

    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v1, v8, v20

    .line 1236
    .local v8, "activeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1237
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1238
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1244
    packed-switch p1, :pswitch_data_240

    .line 1256
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Impossible; keep in sync with sAllowedTemplates"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1246
    :pswitch_bd
    const/4 v13, 0x1

    .line 1258
    .local v13, "captureIntent":I
    :goto_be
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1262
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1266
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1270
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    .line 1273
    .local v17, "minimumFocusDistance":Ljava/lang/Float;
    if-eqz v17, :cond_171

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_171

    .line 1276
    const/4 v9, 0x0

    .line 1296
    .local v9, "afMode":I
    :cond_f7
    :goto_f7
    sget-boolean v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v1, :cond_131

    .line 1297
    const-string v1, "LegacyMetadataMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRequestTemplate (templateId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " afMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", minimumFocusDistance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_131
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1306
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/util/Range;

    .line 1310
    .local v11, "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    aget-object v12, v11, v1

    .line 1311
    .local v12, "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object v10, v11

    .local v10, "arr$":[Landroid/util/Range;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_14c
    if-ge v14, v15, :cond_1d1

    aget-object v18, v10, v14

    .line 1312
    .local v18, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_1ae

    .line 1313
    move-object/from16 v12, v18

    .line 1311
    :cond_168
    :goto_168
    add-int/lit8 v14, v14, 0x1

    goto :goto_14c

    .line 1249
    .end local v9    # "afMode":I
    .end local v10    # "arr$":[Landroid/util/Range;
    .end local v11    # "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v12    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v13    # "captureIntent":I
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "minimumFocusDistance":Ljava/lang/Float;
    .end local v18    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :pswitch_16b
    const/4 v13, 0x2

    .line 1250
    .restart local v13    # "captureIntent":I
    goto/16 :goto_be

    .line 1252
    .end local v13    # "captureIntent":I
    :pswitch_16e
    const/4 v13, 0x3

    .line 1253
    .restart local v13    # "captureIntent":I
    goto/16 :goto_be

    .line 1279
    .restart local v17    # "minimumFocusDistance":Ljava/lang/Float;
    :cond_171
    const/4 v9, 0x1

    .line 1281
    .restart local v9    # "afMode":I
    const/4 v1, 0x3

    move/from16 v0, p1

    if-eq v0, v1, :cond_17c

    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_190

    .line 1283
    :cond_17c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 1285
    const/4 v9, 0x3

    goto/16 :goto_f7

    .line 1287
    :cond_190
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_19a

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_f7

    .line 1289
    :cond_19a
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 1291
    const/4 v9, 0x4

    goto/16 :goto_f7

    .line 1314
    .restart local v10    # "arr$":[Landroid/util/Range;
    .restart local v11    # "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v12    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1ae
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    if-ne v1, v2, :cond_168

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_168

    .line 1316
    move-object/from16 v12, v18

    goto :goto_168

    .line 1319
    .end local v18    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1d1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1323
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1330
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1337
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1342
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1349
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1357
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/util/Size;

    .line 1358
    .local v19, "sizes":[Landroid/util/Size;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_23b

    const/4 v1, 0x1

    aget-object v1, v19, v1

    :goto_235
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1361
    return-object v16

    .line 1358
    :cond_23b
    const/4 v1, 0x0

    aget-object v1, v19, v1

    goto :goto_235

    .line 1244
    nop

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_16b
        :pswitch_16e
    .end packed-switch
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .line 1365
    .local p0, "keys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    array-length v2, p0

    new-array v1, v2, [I

    .line 1367
    .local v1, "tags":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 1368
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v1, v0

    .line 1367
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1371
    :cond_16
    return-object v1
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .line 1375
    .local p0, "keys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    array-length v2, p0

    new-array v1, v2, [I

    .line 1377
    .local v1, "tags":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 1378
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v1, v0

    .line 1377
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1381
    :cond_16
    return-object v1
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .line 1385
    .local p0, "keys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    array-length v2, p0

    new-array v1, v2, [I

    .line 1387
    .local v1, "tags":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 1388
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v1, v0

    .line 1387
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1391
    :cond_16
    return-object v1
.end method

.method private static mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V
    .registers 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "i"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 166
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 168
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 169
    return-void

    .line 166
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 6
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 182
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 186
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 190
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 195
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 199
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 203
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 207
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 212
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 218
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 223
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 228
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 233
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 238
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 243
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 250
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 252
    return-void
.end method

.method private static mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 28
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v4

    .line 386
    .local v4, "antiBandingModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_7d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_7d

    .line 387
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 388
    .local v18, "modes":[I
    const/4 v13, 0x0

    .line 389
    .local v13, "j":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 390
    .local v17, "mode":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v5

    .line 391
    .local v5, "convertedMode":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_58

    .line 392
    const-string v23, "LegacyMetadataMapper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Antibanding mode "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez v17, :cond_42

    const-string v17, "NULL"

    .end local v17    # "mode":Ljava/lang/String;
    :cond_42
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " not supported, skipping..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 395
    .restart local v17    # "mode":Ljava/lang/String;
    :cond_58
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "j":I
    .local v14, "j":I
    aput v5, v18, v13

    move v13, v14

    .end local v14    # "j":I
    .restart local v13    # "j":I
    goto :goto_1b

    .line 398
    .end local v5    # "convertedMode":I
    .end local v17    # "mode":Ljava/lang/String;
    :cond_5e
    sget-object v23, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 407
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "j":I
    .end local v18    # "modes":[I
    :goto_6f
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v9

    .line 408
    .local v9, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v9, :cond_91

    .line 409
    new-instance v23, Ljava/lang/AssertionError;

    const-string v24, "Supported FPS ranges cannot be null."

    invoke-direct/range {v23 .. v24}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v23

    .line 400
    .end local v9    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_7d
    sget-object v23, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto :goto_6f

    .line 411
    .restart local v9    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_91
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v21

    .line 412
    .local v21, "rangesSize":I
    if-gtz v21, :cond_9f

    .line 413
    new-instance v23, Ljava/lang/AssertionError;

    const-string v24, "At least one FPS range must be supported."

    invoke-direct/range {v23 .. v24}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v23

    .line 415
    :cond_9f
    move/from16 v0, v21

    new-array v0, v0, [Landroid/util/Range;

    move-object/from16 v20, v0

    .line 416
    .local v20, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 417
    .local v10, "i":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_aa
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    .line 418
    .local v19, "r":[I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    const/16 v23, 0x0

    aget v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v19, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v23

    aput-object v23, v20, v10

    move v10, v11

    .line 420
    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_aa

    .line 421
    .end local v19    # "r":[I
    :cond_d0
    sget-object v23, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v8

    .line 430
    .local v8, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v7, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string/jumbo v24, "off"

    aput-object v24, v7, v23

    const/16 v23, 0x1

    const-string v24, "auto"

    aput-object v24, v7, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "on"

    aput-object v24, v7, v23

    const/16 v23, 0x3

    const-string/jumbo v24, "red-eye"

    aput-object v24, v7, v23

    const/16 v23, 0x4

    const-string/jumbo v24, "torch"

    aput-object v24, v7, v23

    .line 438
    .local v7, "flashModeStrings":[Ljava/lang/String;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v6, v0, [I

    fill-array-data v6, :array_164

    .line 444
    .local v6, "flashModeInts":[I
    invoke-static {v8, v7, v6}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v3

    .line 448
    .local v3, "aeAvail":[I
    if-eqz v3, :cond_11b

    array-length v0, v3

    move/from16 v23, v0

    if-nez v23, :cond_127

    .line 449
    :cond_11b
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v3, v0, [I

    .end local v3    # "aeAvail":[I
    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v24, v3, v23

    .line 455
    .restart local v3    # "aeAvail":[I
    :cond_127
    sget-object v23, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v16

    .line 463
    .local v16, "min":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v15

    .line 465
    .local v15, "max":I
    sget-object v23, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v22

    .line 474
    .local v22, "step":F
    sget-object v23, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v22 .. v22}, Landroid/hardware/camera2/utils/ParamsUtils;->createRational(F)Landroid/util/Rational;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 476
    return-void

    .line 438
    nop

    :array_164
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private static mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 11
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 485
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 487
    .local v3, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "auto"

    aput-object v4, v2, v6

    const-string v4, "continuous-picture"

    aput-object v4, v2, v7

    const/4 v4, 0x2

    const-string v5, "continuous-video"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "edof"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "infinity"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "macro"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "fixed"

    aput-object v5, v2, v4

    .line 497
    .local v2, "focusModeStrings":[Ljava/lang/String;
    new-array v1, v8, [I

    fill-array-data v1, :array_7a

    .line 507
    .local v1, "focusModeInts":[I
    invoke-static {v3, v2, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 511
    .local v0, "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4f

    .line 512
    :cond_3c
    const-string v4, "LegacyMetadataMapper"

    const-string v5, "No AF modes supported (HAL bug); defaulting to AF_MODE_OFF only"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    .restart local v0    # "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_4f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 519
    sget-boolean v4, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v4, :cond_79

    .line 520
    const-string v4, "LegacyMetadataMapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mapControlAf - control.afAvailableModes set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/hardware/camera2/utils/ListUtils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_79
    return-void

    .line 497
    :array_7a
    .array-data 4
        0x1
        0x4
        0x3
        0x5
        0x0
        0x2
        0x0
    .end array-data
.end method

.method private static mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 10
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 532
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v3

    .line 534
    .local v3, "wbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "auto"

    aput-object v5, v2, v4

    const-string v4, "incandescent"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v5, "fluorescent"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "warm-fluorescent"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "daylight"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "cloudy-daylight"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "twilight"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "shade"

    aput-object v5, v2, v4

    .line 545
    .local v2, "wbModeStrings":[Ljava/lang/String;
    new-array v1, v7, [I

    fill-array-data v1, :array_82

    .line 557
    .local v1, "wbModeInts":[I
    invoke-static {v3, v2, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 561
    .local v0, "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_57

    .line 562
    :cond_44
    const-string v4, "LegacyMetadataMapper"

    const-string v5, "No AWB modes supported (HAL bug); defaulting to AWB_MODE_AUTO only"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .restart local v0    # "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_57
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 569
    sget-boolean v4, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v4, :cond_81

    .line 570
    const-string v4, "LegacyMetadataMapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mapControlAwb - control.awbAvailableModes set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/hardware/camera2/utils/ListUtils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_81
    return-void

    .line 545
    :array_82
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private static mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 15
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 581
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v9

    if-eqz v9, :cond_6a

    new-array v6, v10, [I

    fill-array-data v6, :array_78

    .line 586
    .local v6, "stabModes":[I
    :goto_e
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v9, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 592
    const/4 v0, 0x0

    .local v0, "AE":I
    const/4 v2, 0x1

    .local v2, "AWB":I
    const/4 v1, 0x2

    .line 594
    .local v1, "AF":I
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 595
    .local v4, "maxRegions":[I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v9

    aput v9, v4, v11

    .line 596
    aput v11, v4, v12

    .line 597
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v9

    aput v9, v4, v10

    .line 606
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v9, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 611
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    .line 612
    .local v3, "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_6f

    new-array v7, v11, [I

    .line 615
    .local v7, "supportedEffectModes":[I
    :goto_34
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v9, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 620
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v5

    .line 621
    .local v5, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    sget-object v10, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    invoke-static {v5, v9, v10}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v8

    .line 623
    .local v8, "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v8, :cond_53

    .line 624
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .restart local v8    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_53
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v9

    if-lez v9, :cond_60

    .line 628
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_60
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v8}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 631
    return-void

    .line 581
    .end local v0    # "AE":I
    .end local v1    # "AF":I
    .end local v2    # "AWB":I
    .end local v3    # "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "maxRegions":[I
    .end local v5    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "stabModes":[I
    .end local v7    # "supportedEffectModes":[I
    .end local v8    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6a
    new-array v6, v12, [I

    aput v11, v6, v11

    goto :goto_e

    .line 612
    .restart local v0    # "AE":I
    .restart local v1    # "AF":I
    .restart local v2    # "AWB":I
    .restart local v3    # "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "maxRegions":[I
    .restart local v6    # "stabModes":[I
    :cond_6f
    sget-object v9, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    sget-object v10, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v3, v9, v10}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v7

    goto :goto_34

    .line 581
    :array_78
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 6
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "flashAvailable":Z
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 665
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_11

    .line 667
    const-string/jumbo v2, "off"

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ListUtils;->listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v0, 0x1

    .line 674
    :cond_11
    :goto_11
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 675
    return-void

    .line 667
    :cond_1b
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 5
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v1

    .line 680
    .local v1, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_17

    .line 681
    invoke-static {v1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;

    move-result-object v0

    .line 682
    .local v0, "sizes":[Landroid/util/Size;
    new-instance v2, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 683
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 685
    .end local v0    # "sizes":[Landroid/util/Size;
    :cond_17
    return-void
.end method

.method private static mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 6
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 638
    sget-boolean v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v1, :cond_27

    .line 639
    const-string v1, "LegacyMetadataMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mapLens - focus-mode=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_27
    const-string v1, "fixed"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 646
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 648
    sget-boolean v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v1, :cond_49

    .line 649
    const-string v1, "LegacyMetadataMapper"

    const-string/jumbo v2, "mapLens - lens.info.minimumFocusDistance = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_49
    :goto_49
    const/4 v1, 0x1

    new-array v0, v1, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v2

    aput v2, v0, v1

    .line 658
    .local v0, "focalLengths":[F
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 659
    return-void

    .line 652
    .end local v0    # "focalLengths":[F
    :cond_59
    sget-boolean v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v1, :cond_49

    .line 653
    const-string v1, "LegacyMetadataMapper"

    const-string/jumbo v2, "mapLens - lens.info.minimumFocusDistance is unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private static mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 14
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 691
    const/4 v10, 0x1

    new-array v5, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v5, v10

    .line 692
    .local v5, "capabilities":[I
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v10, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 702
    const/16 v10, 0x21

    new-array v2, v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x0

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xa

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xb

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xc

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xd

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xe

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xf

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x10

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x11

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x12

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x13

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x14

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x15

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x16

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x17

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x18

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x19

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1a

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1b

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1c

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1d

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1e

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1f

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x20

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    .line 738
    .local v2, "availableKeys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    .local v6, "characteristicsKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_e4

    .line 744
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_e4
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v10

    invoke-virtual {p0, v11, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 755
    const/16 v10, 0x1b

    new-array v7, v10, [Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x0

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xa

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xb

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xc

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xd

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xe

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xf

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x10

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x11

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x12

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x13

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x14

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x15

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x16

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x17

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x18

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x19

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x1a

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    .line 784
    .local v7, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 787
    .local v0, "availableKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v10

    if-lez v10, :cond_1a8

    .line 788
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_1a8
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v10

    if-lez v10, :cond_1b3

    .line 791
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_1b3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v3, v10, [Landroid/hardware/camera2/CaptureRequest$Key;

    .line 796
    .local v3, "availableRequestKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 797
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 804
    const/16 v10, 0x17

    new-array v8, v10, [Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v10, 0x0

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xa

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xb

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xc

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xd

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xe

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xf

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x10

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x11

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x12

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x13

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x14

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x15

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x16

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    .line 830
    .local v8, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 833
    .local v1, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v10

    if-lez v10, :cond_25f

    .line 834
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_25f
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v10

    if-lez v10, :cond_26a

    .line 837
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_26a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    new-array v4, v10, [Landroid/hardware/camera2/CaptureResult$Key;

    .line 842
    .local v4, "availableResultKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 843
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 849
    const/4 v10, 0x3

    new-array v9, v10, [I

    fill-array-data v9, :array_2a6

    .line 857
    .local v9, "outputStreams":[I
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v10, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 862
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 867
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 872
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 874
    return-void

    .line 849
    :array_2a6
    .array-data 4
        0x0
        0x3
        0x1
    .end array-data
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 880
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 885
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 886
    return-void
.end method

.method private static mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 28
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 256
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v9, "availableStreamConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    .line 267
    .local v22, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v16

    .line 279
    .local v16, "jpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v8, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v8}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    .line 282
    .local v8, "areaComparator":Landroid/hardware/camera2/legacy/SizeAreaComparator;
    move-object/from16 v0, v22

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 285
    .local v20, "maxJpegSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, v20

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float v15, v2, v3

    .line 287
    .local v15, "jpegAspectRatio":F
    sget-boolean v2, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v2, :cond_5e

    .line 288
    const-string v2, "LegacyMetadataMapper"

    const-string/jumbo v3, "mapScalerStreamConfigs - largest JPEG area %dx%d, AR=%f"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v5

    const/4 v5, 0x2

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_5e
    :goto_5e
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 294
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .line 295
    .local v14, "index":I
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    .line 297
    .local v24, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, v24

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 299
    .local v21, "previewAspectRatio":F
    sub-float v2, v15, v21

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c8

    .line 301
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    sget-boolean v2, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->VERBOSE:Z

    if-eqz v2, :cond_5e

    .line 304
    const-string v2, "LegacyMetadataMapper"

    const-string/jumbo v3, "mapScalerStreamConfigs - removed preview size %dx%d, AR=%f was not the same"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 314
    .end local v14    # "index":I
    .end local v21    # "previewAspectRatio":F
    .end local v24    # "size":Landroid/hardware/Camera$Size;
    :cond_c8
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 316
    const-string v2, "LegacyMetadataMapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mapScalerStreamConfigs - failed to find any preview size matching JPEG aspect ratio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    .line 322
    :cond_eb
    invoke-static {v8}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    const/16 v2, 0x22

    move-object/from16 v0, v22

    invoke-static {v9, v2, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    .line 327
    const/16 v2, 0x23

    move-object/from16 v0, v22

    invoke-static {v9, v2, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_10a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 330
    .local v10, "format":I
    invoke-static {v10}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v2

    if-eqz v2, :cond_126

    .line 331
    move-object/from16 v0, v22

    invoke-static {v9, v10, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    goto :goto_10a

    .line 337
    :cond_126
    const-string v2, "LegacyMetadataMapper"

    const-string/jumbo v3, "mapStreamConfigs - Skipping non-public format %x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a

    .line 342
    .end local v10    # "format":I
    :cond_13d
    const/16 v2, 0x21

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v9, v2, v3}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    .line 347
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 354
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 356
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v17, v0

    .line 358
    .local v17, "jpegStalls":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v11, 0x0

    .line 359
    .local v11, "i":I
    const-wide/16 v18, -0x1

    .line 360
    .local v18, "longestStallDuration":J
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_16d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_198

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/hardware/Camera$Size;

    .line 361
    .local v23, "s":Landroid/hardware/Camera$Size;
    invoke-static/range {v23 .. v23}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J

    move-result-wide v6

    .line 362
    .local v6, "stallDuration":J
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v3, 0x21

    move-object/from16 v0, v23

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    aput-object v2, v17, v11

    .line 364
    cmp-long v2, v18, v6

    if-gez v2, :cond_196

    .line 365
    move-wide/from16 v18, v6

    :cond_196
    move v11, v12

    .line 367
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_16d

    .line 372
    .end local v6    # "stallDuration":J
    .end local v23    # "s":Landroid/hardware/Camera$Size;
    :cond_198
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 377
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method private static mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 16
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 890
    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v7

    .line 895
    .local v7, "largestJpegSize":Landroid/util/Size;
    invoke-static {v7}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 896
    .local v0, "activeArrayRect":Landroid/graphics/Rect;
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v9, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 904
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 910
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v9, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 919
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v1

    .line 920
    .local v1, "focalLength":F
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double v2, v10, v12

    .line 921
    .local v2, "angleHor":D
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double v4, v10, v12

    .line 923
    .local v4, "angleVer":D
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-float v6, v10

    .line 924
    .local v6, "height":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-float v8, v10

    .line 926
    .local v8, "width":F
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v10, Landroid/util/SizeF;

    invoke-direct {v10, v8, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 933
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 935
    return-void
.end method

.method private static mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 5
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 943
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_20

    .line 944
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_26

    .line 954
    .local v0, "fdModes":[I
    :goto_d
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 959
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 960
    return-void

    .line 950
    .end local v0    # "fdModes":[I
    :cond_20
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput v2, v0, v2

    .restart local v0    # "fdModes":[I
    goto :goto_d

    .line 944
    :array_26
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 966
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 967
    return-void
.end method
