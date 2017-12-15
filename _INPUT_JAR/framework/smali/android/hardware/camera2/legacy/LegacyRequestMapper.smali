.class public Landroid/hardware/camera2/legacy/LegacyRequestMapper;
.super Ljava/lang/Object;
.source "LegacyRequestMapper.java"


# static fields
.field private static final DEFAULT_JPEG_QUALITY:B = 0x55t

.field private static final TAG:Ljava/lang/String; = "LegacyRequestMapper"

.field private static final VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    const-string v0, "LegacyRequestMapper"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForCompleteGpsData(Landroid/location/Location;)Z
    .registers 5
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 456
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 609
    packed-switch p0, :pswitch_data_12

    .line 623
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 611
    :pswitch_5
    const-string/jumbo v0, "off"

    goto :goto_4

    .line 614
    :pswitch_9
    const-string v0, "50hz"

    goto :goto_4

    .line 617
    :pswitch_c
    const-string v0, "60hz"

    goto :goto_4

    .line 620
    :pswitch_f
    const-string v0, "auto"

    goto :goto_4

    .line 609
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
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
    .line 629
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 630
    .local v0, "legacyFps":[I
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    .line 631
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    .line 632
    return-object v0
.end method

.method private static convertAwbModeToLegacy(I)Ljava/lang/String;
    .registers 4
    .param p0, "mode"    # I

    .prologue
    .line 636
    packed-switch p0, :pswitch_data_3a

    .line 654
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertAwbModeToLegacy - unrecognized control.awbMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v0, "auto"

    :goto_1d
    return-object v0

    .line 638
    :pswitch_1e
    const-string v0, "auto"

    goto :goto_1d

    .line 640
    :pswitch_21
    const-string v0, "incandescent"

    goto :goto_1d

    .line 642
    :pswitch_24
    const-string v0, "fluorescent"

    goto :goto_1d

    .line 644
    :pswitch_27
    const-string/jumbo v0, "warm-fluorescent"

    goto :goto_1d

    .line 646
    :pswitch_2b
    const-string v0, "daylight"

    goto :goto_1d

    .line 648
    :pswitch_2e
    const-string v0, "cloudy-daylight"

    goto :goto_1d

    .line 650
    :pswitch_31
    const-string/jumbo v0, "twilight"

    goto :goto_1d

    .line 652
    :pswitch_35
    const-string/jumbo v0, "shade"

    goto :goto_1d

    .line 636
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method private static convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;
    .registers 18
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "meteringRegions"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p3, "maxNumMeteringAreas"    # I
    .param p4, "regionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    if-eqz p2, :cond_4

    if-gtz p3, :cond_15

    .line 485
    :cond_4
    if-lez p3, :cond_13

    .line 486
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/hardware/Camera$Area;

    const/4 v11, 0x0

    sget-object v12, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 529
    :cond_12
    :goto_12
    return-object v6

    .line 488
    :cond_13
    const/4 v6, 0x0

    goto :goto_12

    .line 493
    :cond_15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v8, "meteringRectangleList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    move-object v1, p2

    .local v1, "arr$":[Landroid/hardware/camera2/params/MeteringRectangle;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_2d

    aget-object v9, v1, v4

    .line 495
    .local v9, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v9}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v10

    if-eqz v10, :cond_2a

    .line 496
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 500
    .end local v9    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_2d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_47

    .line 501
    const-string v10, "LegacyRequestMapper"

    const-string v11, "Only received metering rectangles with weight 0."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/hardware/Camera$Area;

    const/4 v11, 0x0

    sget-object v12, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_12

    .line 506
    :cond_47
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, p3

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 508
    .local v2, "countMeteringAreas":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v6, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_57
    if-ge v3, v2, :cond_6b

    .line 511
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 513
    .restart local v9    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-static {p0, v9, p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    move-result-object v7

    .line 515
    .local v7, "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    iget-object v10, v7, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 518
    .end local v7    # "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    .end local v9    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_6b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, p3

    if-ge v0, v10, :cond_99

    .line 519
    const-string v10, "LegacyRequestMapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertMeteringRegionsToLegacy - Too many requested "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " regions, ignoring all beyond the first "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_99
    sget-boolean v10, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->VERBOSE:Z

    if-eqz v10, :cond_12

    .line 525
    const-string v10, "LegacyRequestMapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertMeteringRegionsToLegacy - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " areas = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromAreaList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .registers 56
    .param p0, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v17, v0

    .line 61
    .local v17, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v42, v0

    .line 62
    .local v42, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    move-object/from16 v40, v0

    .line 63
    .local v40, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v39, v0

    .line 65
    .local v39, "params":Landroid/hardware/Camera$Parameters;
    sget-object v51, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 72
    .local v7, "activeArray":Landroid/graphics/Rect;
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/graphics/Rect;

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-static {v7, v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v50

    .line 77
    .local v50, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v51

    if-eqz v51, :cond_5a6

    .line 78
    move-object/from16 v0, v50

    iget v0, v0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    move/from16 v51, v0

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 89
    :cond_4d
    :goto_4d
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 93
    .local v6, "aberrationMode":I
    const/16 v51, 0x1

    move/from16 v0, v51

    if-eq v6, v0, :cond_85

    .line 94
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_85
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 106
    .local v13, "antiBandingMode":Ljava/lang/Integer;
    if-eqz v13, :cond_5b3

    .line 107
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v51

    invoke-static/range {v51 .. v51}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;

    move-result-object v30

    .line 118
    .local v30, "legacyMode":Ljava/lang/String;
    :goto_9b
    if-eqz v30, :cond_a4

    .line 119
    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 130
    :cond_a4
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 131
    .local v10, "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v51

    if-eqz v51, :cond_c3

    .line 132
    const-string v51, "LegacyRequestMapper"

    const-string v52, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value"

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_c3
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v34

    .line 136
    .local v34, "maxNumMeteringAreas":I
    const-string v51, "AE"

    move-object/from16 v0, v50

    move/from16 v1, v34

    move-object/from16 v2, v51

    invoke-static {v7, v0, v10, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v35

    .line 141
    .local v35, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v34, :cond_dc

    .line 142
    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 148
    :cond_dc
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 149
    .local v12, "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v33

    .line 150
    .local v33, "maxNumFocusAreas":I
    const-string v51, "AF"

    move-object/from16 v0, v50

    move/from16 v1, v33

    move-object/from16 v2, v51

    invoke-static {v7, v0, v12, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 155
    .local v22, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v33, :cond_101

    .line 156
    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 162
    :cond_101
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 163
    .local v8, "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_15a

    .line 164
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeFpsRangeToLegacy(Landroid/util/Range;)[I

    move-result-object v29

    .line 167
    .local v29, "legacyFps":[I
    const/16 v47, 0x0

    .line 168
    .local v47, "supported":Z
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v51

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_11d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_147

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [I

    .line 169
    .local v41, "range":[I
    const/16 v51, 0x0

    aget v51, v29, v51

    const/16 v52, 0x0

    aget v52, v41, v52

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_11d

    const/16 v51, 0x1

    aget v51, v29, v51

    const/16 v52, 0x1

    aget v52, v41, v52

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_11d

    .line 170
    const/16 v47, 0x1

    .line 174
    .end local v41    # "range":[I
    :cond_147
    if-eqz v47, :cond_5e0

    .line 175
    const/16 v51, 0x0

    aget v51, v29, v51

    const/16 v52, 0x1

    aget v52, v29, v52

    move-object/from16 v0, v39

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 188
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v29    # "legacyFps":[I
    .end local v47    # "supported":Z
    :cond_15a
    :goto_15a
    sget-object v51, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Range;

    .line 190
    .local v19, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 194
    .local v18, "compensation":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v19

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v51

    if-nez v51, :cond_195

    .line 195
    const-string v51, "LegacyRequestMapper"

    const-string v52, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value"

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v18, 0x0

    .line 201
    :cond_195
    move-object/from16 v0, v39

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 206
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v53

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 210
    .local v9, "aeLock":Ljava/lang/Boolean;
    if-eqz v9, :cond_1cb

    .line 211
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v51

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 214
    :cond_1cb
    sget-boolean v51, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->VERBOSE:Z

    if-eqz v51, :cond_1e9

    .line 215
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "convertRequestToMetadata - control.aeLock set to "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1e9
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 226
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 228
    .local v11, "afMode":I
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-static {v11, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;

    move-result-object v24

    .line 231
    .local v24, "focusMode":Ljava/lang/String;
    if-eqz v24, :cond_21b

    .line 232
    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 235
    :cond_21b
    sget-boolean v51, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->VERBOSE:Z

    if-eqz v51, :cond_247

    .line 236
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "convertRequestToMetadata - control.afMode "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " mapped to "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_247
    sget-object v52, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v51, 0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v51

    if-eqz v51, :cond_612

    const/16 v51, 0x1

    :goto_257
    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    move/from16 v3, v51

    move-object/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 248
    .local v15, "awbMode":Ljava/lang/Integer;
    const/16 v49, 0x0

    .line 249
    .local v49, "whiteBalanceMode":Ljava/lang/String;
    if-eqz v15, :cond_280

    .line 250
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v51

    invoke-static/range {v51 .. v51}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAwbModeToLegacy(I)Ljava/lang/String;

    move-result-object v49

    .line 251
    move-object/from16 v0, v39

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 254
    :cond_280
    sget-boolean v51, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->VERBOSE:Z

    if-eqz v51, :cond_2ac

    .line 255
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "convertRequestToMetadata - control.awbMode "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " mapped to "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2ac
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v53

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    .line 266
    .local v14, "awbLock":Ljava/lang/Boolean;
    if-eqz v14, :cond_2db

    .line 267
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v51

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 275
    :cond_2db
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 279
    .local v16, "captureIntent":I
    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    move-result v16

    .line 281
    const/16 v51, 0x3

    move/from16 v0, v16

    move/from16 v1, v51

    if-eq v0, v1, :cond_307

    const/16 v51, 0x4

    move/from16 v0, v16

    move/from16 v1, v51

    if-ne v0, v1, :cond_616

    :cond_307
    const/16 v51, 0x1

    :goto_309
    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 288
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v53

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Integer;

    .line 293
    .local v46, "stabMode":Ljava/lang/Integer;
    if-eqz v46, :cond_349

    .line 294
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v51

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_61a

    const/16 v51, 0x1

    :goto_342
    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 300
    :cond_349
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v51

    const-string v52, "infinity"

    invoke-static/range {v51 .. v52}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v26

    .line 303
    .local v26, "infinityFocusSupported":Z
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v52

    const/16 v53, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v53

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v26

    move-object/from16 v4, v53

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    .line 306
    .local v23, "focusDistance":Ljava/lang/Float;
    if-eqz v23, :cond_37d

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v51

    const/16 v52, 0x0

    cmpl-float v51, v51, v52

    if-eqz v51, :cond_39f

    .line 307
    :cond_37d
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "convertRequestToMetadata - Ignoring android.lens.focusDistance "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ", only 0.0f is supported"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_39f
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v51

    if-eqz v51, :cond_3eb

    .line 318
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 321
    .local v20, "controlMode":I
    packed-switch v20, :pswitch_data_6e4

    .line 340
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Control mode "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " is unsupported, defaulting to AUTO"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v37, "auto"

    .line 345
    .local v37, "modeToSet":Ljava/lang/String;
    :goto_3e4
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 351
    .end local v20    # "controlMode":I
    .end local v37    # "modeToSet":Ljava/lang/String;
    :cond_3eb
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v51

    if-eqz v51, :cond_416

    .line 352
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 354
    .local v21, "effectMode":I
    invoke-static/range {v21 .. v21}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeToLegacy(I)Ljava/lang/String;

    move-result-object v28

    .line 355
    .local v28, "legacyEffectMode":Ljava/lang/String;
    if-eqz v28, :cond_664

    .line 356
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 370
    .end local v21    # "effectMode":I
    .end local v28    # "legacyEffectMode":Ljava/lang/String;
    :cond_416
    :goto_416
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v48

    .line 372
    .local v48, "testPatternMode":I
    if-eqz v48, :cond_452

    .line 373
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "convertRequestToMetadata - ignoring sensor.testPatternMode "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "; only OFF is supported"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_452
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/location/Location;

    .line 385
    .local v32, "location":Landroid/location/Location;
    if-eqz v32, :cond_6aa

    .line 386
    invoke-static/range {v32 .. v32}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->checkForCompleteGpsData(Landroid/location/Location;)Z

    move-result v51

    if-eqz v51, :cond_68c

    .line 387
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getAltitude()D

    move-result-wide v52

    move-object/from16 v0, v39

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 388
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLatitude()D

    move-result-wide v52

    move-object/from16 v0, v39

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 389
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLongitude()D

    move-result-wide v52

    move-object/from16 v0, v39

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 390
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v39

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getTime()J

    move-result-wide v52

    move-object/from16 v0, v39

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 402
    :goto_4a1
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 403
    .local v38, "orientation":Ljava/lang/Integer;
    sget-object v52, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v38, :cond_6af

    const/16 v51, 0x0

    :goto_4b3
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v51

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 409
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x55

    invoke-static/range {v52 .. v52}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Byte;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Byte;->byteValue()B

    move-result v51

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xff

    move/from16 v51, v0

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 415
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x55

    invoke-static/range {v52 .. v52}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Byte;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Byte;->byteValue()B

    move-result v51

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xff

    move/from16 v51, v0

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 421
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v45

    .line 423
    .local v45, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v45, :cond_569

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v51

    if-lez v51, :cond_569

    .line 424
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/util/Size;

    .line 425
    .local v43, "s":Landroid/util/Size;
    if-nez v43, :cond_6b5

    const/16 v27, 0x0

    .line 427
    .local v27, "invalidSize":Z
    :goto_534
    if-eqz v27, :cond_558

    .line 428
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Invalid JPEG thumbnail size set "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ", skipping thumbnail..."

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_558
    if-eqz v43, :cond_55c

    if-eqz v27, :cond_6d1

    .line 432
    :cond_55c
    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 444
    .end local v27    # "invalidSize":Z
    .end local v43    # "s":Landroid/util/Size;
    :cond_569
    :goto_569
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 448
    .local v36, "mode":I
    const/16 v51, 0x1

    move/from16 v0, v36

    move/from16 v1, v51

    if-eq v0, v1, :cond_5a5

    .line 449
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_5a5
    return-void

    .line 79
    .end local v6    # "aberrationMode":I
    .end local v8    # "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "aeLock":Ljava/lang/Boolean;
    .end local v10    # "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v11    # "afMode":I
    .end local v12    # "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v13    # "antiBandingMode":Ljava/lang/Integer;
    .end local v14    # "awbLock":Ljava/lang/Boolean;
    .end local v15    # "awbMode":Ljava/lang/Integer;
    .end local v16    # "captureIntent":I
    .end local v18    # "compensation":I
    .end local v19    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v22    # "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v23    # "focusDistance":Ljava/lang/Float;
    .end local v24    # "focusMode":Ljava/lang/String;
    .end local v26    # "infinityFocusSupported":Z
    .end local v30    # "legacyMode":Ljava/lang/String;
    .end local v32    # "location":Landroid/location/Location;
    .end local v33    # "maxNumFocusAreas":I
    .end local v34    # "maxNumMeteringAreas":I
    .end local v35    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v36    # "mode":I
    .end local v38    # "orientation":Ljava/lang/Integer;
    .end local v45    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v46    # "stabMode":Ljava/lang/Integer;
    .end local v48    # "testPatternMode":I
    .end local v49    # "whiteBalanceMode":Ljava/lang/String;
    :cond_5a6
    sget-boolean v51, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->VERBOSE:Z

    if-eqz v51, :cond_4d

    .line 80
    const-string v51, "LegacyRequestMapper"

    const-string v52, "convertRequestToMetadata - zoom is not supported"

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 109
    .restart local v6    # "aberrationMode":I
    .restart local v13    # "antiBandingMode":Ljava/lang/Integer;
    :cond_5b3
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v51

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "auto"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    const-string/jumbo v54, "off"

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "50hz"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "60hz"

    aput-object v54, v52, v53

    invoke-static/range {v51 .. v52}, Landroid/hardware/camera2/utils/ListUtils;->listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .restart local v30    # "legacyMode":Ljava/lang/String;
    goto/16 :goto_9b

    .line 178
    .restart local v8    # "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v10    # "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v12    # "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v22    # "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v29    # "legacyFps":[I
    .restart local v33    # "maxNumFocusAreas":I
    .restart local v34    # "maxNumMeteringAreas":I
    .restart local v35    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .restart local v47    # "supported":Z
    :cond_5e0
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Unsupported FPS range set ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const/16 v53, 0x0

    aget v53, v29, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ","

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const/16 v53, 0x1

    aget v53, v29, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "]"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15a

    .line 243
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v29    # "legacyFps":[I
    .end local v47    # "supported":Z
    .restart local v9    # "aeLock":Ljava/lang/Boolean;
    .restart local v11    # "afMode":I
    .restart local v18    # "compensation":I
    .restart local v19    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v24    # "focusMode":Ljava/lang/String;
    :cond_612
    const/16 v51, 0x0

    goto/16 :goto_257

    .line 281
    .restart local v14    # "awbLock":Ljava/lang/Boolean;
    .restart local v15    # "awbMode":Ljava/lang/Integer;
    .restart local v16    # "captureIntent":I
    .restart local v49    # "whiteBalanceMode":Ljava/lang/String;
    :cond_616
    const/16 v51, 0x0

    goto/16 :goto_309

    .line 294
    .restart local v46    # "stabMode":Ljava/lang/Integer;
    :cond_61a
    const/16 v51, 0x0

    goto/16 :goto_342

    .line 323
    .restart local v20    # "controlMode":I
    .restart local v23    # "focusDistance":Ljava/lang/Float;
    .restart local v26    # "infinityFocusSupported":Z
    :pswitch_61e
    sget-object v51, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v52, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .line 325
    .local v44, "sceneMode":I
    invoke-static/range {v44 .. v44}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeToLegacy(I)Ljava/lang/String;

    move-result-object v31

    .line 327
    .local v31, "legacySceneMode":Ljava/lang/String;
    if-eqz v31, :cond_640

    .line 328
    move-object/from16 v37, v31

    .restart local v37    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_3e4

    .line 330
    .end local v37    # "modeToSet":Ljava/lang/String;
    :cond_640
    const-string v37, "auto"

    .line 331
    .restart local v37    # "modeToSet":Ljava/lang/String;
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Skipping unknown requested scene mode: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e4

    .line 336
    .end local v31    # "legacySceneMode":Ljava/lang/String;
    .end local v37    # "modeToSet":Ljava/lang/String;
    .end local v44    # "sceneMode":I
    :pswitch_660
    const-string v37, "auto"

    .line 337
    .restart local v37    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_3e4

    .line 358
    .end local v20    # "controlMode":I
    .end local v37    # "modeToSet":Ljava/lang/String;
    .restart local v21    # "effectMode":I
    .restart local v28    # "legacyEffectMode":Ljava/lang/String;
    :cond_664
    const-string/jumbo v51, "none"

    move-object/from16 v0, v39

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 359
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Skipping unknown requested effect mode: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_416

    .line 393
    .end local v21    # "effectMode":I
    .end local v28    # "legacyEffectMode":Ljava/lang/String;
    .restart local v32    # "location":Landroid/location/Location;
    .restart local v48    # "testPatternMode":I
    :cond_68c
    const-string v51, "LegacyRequestMapper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Incomplete GPS parameters provided in location "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a1

    .line 396
    :cond_6aa
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto/16 :goto_4a1

    .line 403
    .restart local v38    # "orientation":Ljava/lang/Integer;
    :cond_6af
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v51

    goto/16 :goto_4b3

    .line 425
    .restart local v43    # "s":Landroid/util/Size;
    .restart local v45    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_6b5
    invoke-virtual/range {v43 .. v43}, Landroid/util/Size;->getWidth()I

    move-result v51

    invoke-virtual/range {v43 .. v43}, Landroid/util/Size;->getHeight()I

    move-result v52

    move-object/from16 v0, v45

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->containsSize(Ljava/util/List;II)Z

    move-result v51

    if-nez v51, :cond_6cd

    const/16 v27, 0x1

    goto/16 :goto_534

    :cond_6cd
    const/16 v27, 0x0

    goto/16 :goto_534

    .line 434
    .restart local v27    # "invalidSize":Z
    :cond_6d1
    invoke-virtual/range {v43 .. v43}, Landroid/util/Size;->getWidth()I

    move-result v51

    invoke-virtual/range {v43 .. v43}, Landroid/util/Size;->getHeight()I

    move-result v52

    move-object/from16 v0, v39

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_569

    .line 321
    :pswitch_data_6e4
    .packed-switch 0x1
        :pswitch_660
        :pswitch_61e
    .end packed-switch
.end method

.method static filterSupportedCaptureIntent(I)I
    .registers 4
    .param p0, "captureIntent"    # I

    .prologue
    .line 460
    packed-switch p0, :pswitch_data_44

    .line 473
    :goto_3
    const/4 p0, 0x1

    .line 474
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :pswitch_22
    return p0

    .line 469
    :pswitch_23
    const/4 p0, 0x1

    .line 470
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 460
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private static getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;ZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p4, "allowedValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 675
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-nez p3, :cond_2d

    .line 676
    invoke-static {v0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 677
    const-string v1, "LegacyRequestMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported; ignoring requested value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_2c
    const/4 v0, 0x0

    .line 682
    .end local v0    # "val":Ljava/lang/Object;, "TT;"
    :cond_2d
    return-object v0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .registers 10
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 533
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 534
    .local v1, "flashMode":I
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 536
    .local v0, "aeMode":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 538
    .local v3, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 541
    .local v2, "flashModeSetting":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 542
    const-string/jumbo v2, "off"

    .line 550
    :cond_34
    if-ne v0, v6, :cond_a0

    .line 551
    if-ne v1, v7, :cond_88

    .line 552
    const-string/jumbo v4, "torch"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 553
    const-string/jumbo v2, "torch"

    .line 593
    :cond_44
    :goto_44
    if-eqz v2, :cond_49

    .line 594
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 597
    :cond_49
    sget-boolean v4, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->VERBOSE:Z

    if-eqz v4, :cond_7e

    .line 598
    const-string v4, "LegacyRequestMapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mapAeAndFlashMode - set flash.mode (api1) to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requested (api2) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", supported (api1) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/hardware/camera2/utils/ListUtils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_7e
    return-void

    .line 555
    :cond_7f
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 558
    :cond_88
    if-ne v1, v6, :cond_44

    .line 559
    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 560
    const-string/jumbo v2, "on"

    goto :goto_44

    .line 562
    :cond_97
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == SINGLE;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 568
    :cond_a0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_b9

    .line 569
    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 570
    const-string/jumbo v2, "on"

    goto :goto_44

    .line 572
    :cond_b0
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_ALWAYS_FLASH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 575
    :cond_b9
    if-ne v0, v7, :cond_d1

    .line 576
    const-string v4, "auto"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 577
    const-string v2, "auto"

    goto/16 :goto_44

    .line 579
    :cond_c7
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 582
    :cond_d1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_44

    .line 583
    const-string/jumbo v4, "red-eye"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 584
    const-string/jumbo v2, "red-eye"

    goto/16 :goto_44

    .line 586
    :cond_e2
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH_REDEYE;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44
.end method
