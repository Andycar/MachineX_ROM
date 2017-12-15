.class public Landroid/media/audiofx/Virtualizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Virtualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Virtualizer$1;,
        Landroid/media/audiofx/Virtualizer$Settings;,
        Landroid/media/audiofx/Virtualizer$BaseParameterListener;,
        Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final PARAM_FORCE_VIRTUALIZATION_MODE:I = 0x3

.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field public static final PARAM_VIRTUALIZATION_MODE:I = 0x4

.field public static final PARAM_VIRTUAL_SPEAKER_ANGLES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Virtualizer"

.field public static final VIRTUALIZATION_MODE_AUTO:I = 0x1

.field public static final VIRTUALIZATION_MODE_BINAURAL:I = 0x2

.field public static final VIRTUALIZATION_MODE_OFF:I = 0x0

.field public static final VIRTUALIZATION_MODE_TRANSAURAL:I = 0x3


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method public constructor <init>(II)V
    .registers 9
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    sget-object v3, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 86
    iput-boolean v2, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    .line 91
    iput-object v5, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .line 96
    iput-object v5, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    .line 101
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    .line 122
    if-nez p2, :cond_20

    .line 123
    const-string v3, "Virtualizer"

    const-string v4, "WARNING: attaching a Virtualizer to global output mix is deprecated!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_20
    new-array v0, v1, [I

    .line 127
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 128
    aget v3, v0, v2

    if-eqz v3, :cond_30

    :goto_2d
    iput-boolean v1, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    .line 129
    return-void

    :cond_30
    move v1, v2

    .line 128
    goto :goto_2d
.end method

.method static synthetic access$000(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Virtualizer;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Virtualizer;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    return-object v0
.end method

.method private static deviceToMode(I)I
    .registers 2
    .param p0, "deviceType"    # I

    .prologue
    .line 327
    packed-switch p0, :pswitch_data_a

    .line 347
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 332
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 344
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 327
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private getAnglesInt(II[I)Z
    .registers 16
    .param p1, "inputChannelMask"    # I
    .param p2, "deviceType"    # I
    .param p3, "angles"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 186
    if-nez p1, :cond_e

    .line 187
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Virtualizer: illegal CHANNEL_INVALID channel mask"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 190
    :cond_e
    if-ne p1, v8, :cond_60

    move v0, v7

    .line 192
    .local v0, "channelMask":I
    :goto_11
    invoke-static {v0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    .line 193
    .local v2, "nbChannels":I
    if-eqz p3, :cond_62

    array-length v10, p3

    mul-int/lit8 v11, v2, 0x3

    if-ge v10, v11, :cond_62

    .line 194
    const-string v7, "Virtualizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size of array for angles cannot accomodate number of channels in mask ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Virtualizer: array for channel / angle pairs is too small: is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", should be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int/lit8 v9, v2, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "channelMask":I
    .end local v2    # "nbChannels":I
    :cond_60
    move v0, p1

    .line 190
    goto :goto_11

    .line 201
    .restart local v0    # "channelMask":I
    .restart local v2    # "nbChannels":I
    :cond_62
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 202
    .local v3, "paramsConverter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 203
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 205
    invoke-static {v0}, Landroid/media/AudioFormat;->convertChannelOutMaskToNativeMask(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 207
    invoke-static {p2}, Landroid/media/AudioDevice;->convertDeviceTypeToInternalDevice(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 209
    mul-int/lit8 v7, v2, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .line 212
    .local v4, "result":[B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Landroid/media/audiofx/Virtualizer;->getParameter([B[B)I

    move-result v6

    .line 218
    .local v6, "status":I
    if-ltz v6, :cond_d4

    .line 219
    if-eqz p3, :cond_d2

    .line 221
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 222
    .local v5, "resultConverter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9d
    if-ge v1, v2, :cond_d2

    .line 225
    mul-int/lit8 v7, v1, 0x3

    mul-int/lit8 v9, v1, 0x4

    mul-int/lit8 v9, v9, 0x3

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    invoke-static {v9}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v9

    aput v9, p3, v7

    .line 228
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v9, v1, 0x4

    mul-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    aput v9, p3, v7

    .line 230
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v9, v1, 0x4

    mul-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    aput v9, p3, v7

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .end local v1    # "i":I
    .end local v5    # "resultConverter":Ljava/nio/ByteBuffer;
    :cond_d2
    move v7, v8

    .line 250
    :goto_d3
    return v7

    .line 239
    :cond_d4
    const/4 v7, -0x4

    if-ne v6, v7, :cond_d9

    move v7, v9

    .line 242
    goto :goto_d3

    .line 245
    :cond_d9
    invoke-virtual {p0, v6}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 248
    const-string v7, "Virtualizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected status code "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " after getParameter(PARAM_VIRTUAL_SPEAKER_ANGLES)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 250
    goto :goto_d3
.end method

.method private static getDeviceForModeForce(I)I
    .registers 2
    .param p0, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 320
    const/4 v0, 0x0

    .line 322
    :goto_4
    return v0

    :cond_5
    invoke-static {p0}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    goto :goto_4
.end method

.method private static getDeviceForModeQuery(I)I
    .registers 4
    .param p0, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 306
    packed-switch p0, :pswitch_data_20

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtualizer: illegal virtualization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_1c
    const/4 v0, 0x4

    .line 310
    :goto_1d
    return v0

    :pswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 306
    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public canVirtualize(II)Z
    .registers 5
    .param p1, "inputChannelMask"    # I
    .param p2, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result v0

    return v0
.end method

.method public forceVirtualizationMode(I)Z
    .registers 9
    .param p1, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 435
    invoke-static {p1}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeForce(I)I

    move-result v0

    .line 436
    .local v0, "deviceType":I
    invoke-static {v0}, Landroid/media/AudioDevice;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    .line 438
    .local v1, "internalDevice":I
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v1}, Landroid/media/audiofx/Virtualizer;->setParameter(II)I

    move-result v2

    .line 440
    .local v2, "status":I
    if-ltz v2, :cond_12

    .line 441
    const/4 v3, 0x1

    .line 453
    :cond_11
    :goto_11
    return v3

    .line 442
    :cond_12
    const/4 v4, -0x4

    if-eq v2, v4, :cond_11

    .line 448
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 451
    const-string v4, "Virtualizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected status code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " after setParameter(PARAM_FORCE_VIRTUALIZATION_MODE)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public getProperties()Landroid/media/audiofx/Virtualizer$Settings;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 609
    new-instance v0, Landroid/media/audiofx/Virtualizer$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/Virtualizer$Settings;-><init>()V

    .line 610
    .local v0, "settings":Landroid/media/audiofx/Virtualizer$Settings;
    new-array v1, v2, [S

    .line 611
    .local v1, "value":[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 612
    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    .line 613
    return-object v0
.end method

.method public getRoundedStrength()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 166
    new-array v0, v1, [S

    .line 167
    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 168
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getSpeakerAngles(II[I)Z
    .registers 6
    .param p1, "inputChannelMask"    # I
    .param p2, "virtualizationMode"    # I
    .param p3, "angles"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 412
    if-nez p3, :cond_a

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtualizer: illegal null channel / angle array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_a
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result v0

    return v0
.end method

.method public getStrengthSupported()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    return v0
.end method

.method public getVirtualizationMode()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 470
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 471
    .local v1, "value":[I
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v0

    .line 472
    .local v0, "status":I
    if-ltz v0, :cond_16

    .line 473
    aget v2, v1, v2

    invoke-static {v2}, Landroid/media/AudioDevice;->convertInternalDeviceToDeviceType(I)I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/Virtualizer;->deviceToMode(I)I

    move-result v2

    .line 483
    :cond_15
    :goto_15
    return v2

    .line 474
    :cond_16
    const/4 v3, -0x4

    if-eq v0, v3, :cond_15

    .line 478
    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 481
    const-string v3, "Virtualizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after getParameter(PARAM_VIRTUALIZATION_MODE)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public setParameterListener(Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .prologue
    .line 541
    iget-object v1, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_3
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    if-nez v0, :cond_16

    .line 543
    iput-object p1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .line 544
    new-instance v0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer$1;)V

    iput-object v0, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    .line 545
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 547
    :cond_16
    monitor-exit v1

    .line 548
    return-void

    .line 547
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V
    .registers 4
    .param p1, "settings"    # Landroid/media/audiofx/Virtualizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 626
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 627
    return-void
.end method

.method public setStrength(S)V
    .registers 3
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 154
    return-void
.end method
