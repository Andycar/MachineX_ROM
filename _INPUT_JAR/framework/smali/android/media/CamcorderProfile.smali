.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_2160P:I = 0x8

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_4kDCI:I = 0xd

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_FWVGA:I = 0xc

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final QUALITY_HIGH_SPEED_2160P:I = 0x7d5

.field public static final QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final QUALITY_HIGH_SPEED_LIST_END:I = 0x7d5

.field private static final QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field private static final QUALITY_LIST_END:I = 0xd

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_4kDCI:I = 0x3f5

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_FWVGA:I = 0x3f1

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f5

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final QUALITY_TIME_LAPSE_VGA:I = 0x3f3

.field public static final QUALITY_TIME_LAPSE_WQVGA:I = 0x3f4

.field public static final QUALITY_TIME_LAPSE_WVGA:I = 0x3f2

.field public static final QUALITY_VGA:I = 0xa

.field public static final QUALITY_WQVGA:I = 0xb

.field public static final QUALITY_WVGA:I = 0x9


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 451
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    .line 453
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .registers 13
    .param p1, "duration"    # I
    .param p2, "quality"    # I
    .param p3, "fileFormat"    # I
    .param p4, "videoCodec"    # I
    .param p5, "videoBitRate"    # I
    .param p6, "videoFrameRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "audioCodec"    # I
    .param p10, "audioBitRate"    # I
    .param p11, "audioSampleRate"    # I
    .param p12, "audioChannels"    # I

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    .line 470
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    .line 471
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 472
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 473
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 474
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 475
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 476
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 477
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 478
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 479
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 480
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 481
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .registers 5
    .param p0, "quality"    # I

    .prologue
    .line 312
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 313
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 314
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_1b

    .line 315
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 316
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 317
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 320
    :goto_17
    return-object v3

    .line 314
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 320
    :cond_1b
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .registers 5
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 375
    if-ltz p1, :cond_6

    const/16 v1, 0xd

    if-le p1, v1, :cond_2f

    :cond_6
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_e

    const/16 v1, 0x3f5

    if-le p1, v1, :cond_2f

    :cond_e
    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_16

    const/16 v1, 0x7d5

    if-le p1, v1, :cond_2f

    .line 381
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    .end local v0    # "errMessage":Ljava/lang/String;
    :cond_2f
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method public static hasProfile(I)Z
    .registers 5
    .param p0, "quality"    # I

    .prologue
    .line 411
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 412
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 413
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_1b

    .line 414
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 415
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 416
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    .line 419
    :goto_17
    return v3

    .line 413
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 419
    :cond_1b
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static hasProfile(II)Z
    .registers 3
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 447
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
