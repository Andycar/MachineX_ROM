.class public Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$1;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_INVALID:I = 0x0

.field public static final CHANNEL_IN_5POINT1:I = 0xfc

.field public static final CHANNEL_IN_BACK:I = 0x20

.field public static final CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final CHANNEL_IN_DEFAULT:I = 0x1

.field public static final CHANNEL_IN_FRONT:I = 0x10

.field public static final CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final CHANNEL_IN_LEFT:I = 0x4

.field public static final CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final CHANNEL_IN_MONO:I = 0x10

.field public static final CHANNEL_IN_PRESSURE:I = 0x400

.field public static final CHANNEL_IN_RIGHT:I = 0x8

.field public static final CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final CHANNEL_IN_STEREO:I = 0xc

.field public static final CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final CHANNEL_IN_X_AXIS:I = 0x800

.field public static final CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final CHANNEL_OUT_7POINT1:I = 0x3fc

.field public static final CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final CHANNEL_OUT_MONO:I = 0x4

.field public static final CHANNEL_OUT_QUAD:I = 0xcc

.field public static final CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final CHANNEL_OUT_STEREO:I = 0xc

.field public static final CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_AMRNB:I = 0x64

.field public static final ENCODING_AMRWB:I = 0x65

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_EVRC:I = 0x66

.field public static final ENCODING_EVRCB:I = 0x67

.field public static final ENCODING_EVRCNW:I = 0x69

.field public static final ENCODING_EVRCWB:I = 0x68

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4


# instance fields
.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "ignoredArgument"    # I

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method private constructor <init>(III)V
    .registers 5
    .param p1, "encoding"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelMask"    # I

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 297
    iput p2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 298
    iput p3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 299
    const/4 v0, 0x7

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 302
    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/AudioFormat$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/media/AudioFormat$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioFormat;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioFormat;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioFormat;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioFormat;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioFormat;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/AudioFormat;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioFormat;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/AudioFormat;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p1
.end method

.method public static channelCountFromInChannelMask(I)I
    .registers 2
    .param p0, "mask"    # I

    .prologue
    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static channelCountFromOutChannelMask(I)I
    .registers 2
    .param p0, "mask"    # I

    .prologue
    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static convertChannelOutMaskToNativeMask(I)I
    .registers 2
    .param p0, "javaMask"    # I

    .prologue
    .line 166
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static convertNativeChannelMaskToOutMask(I)I
    .registers 2
    .param p0, "nativeMask"    # I

    .prologue
    .line 176
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static getBytesPerSample(I)I
    .registers 4
    .param p0, "audioFormat"    # I

    .prologue
    .line 209
    sparse-switch p0, :sswitch_data_2c

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :sswitch_1c
    const/4 v0, 0x1

    .line 225
    :goto_1d
    return v0

    .line 214
    :sswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 216
    :sswitch_20
    const/4 v0, 0x4

    goto :goto_1d

    .line 218
    :sswitch_22
    const/16 v0, 0x20

    goto :goto_1d

    .line 220
    :sswitch_25
    const/16 v0, 0x3d

    goto :goto_1d

    .line 225
    :sswitch_28
    const/16 v0, 0x17

    goto :goto_1d

    .line 209
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_20
        0x64 -> :sswitch_22
        0x65 -> :sswitch_25
        0x66 -> :sswitch_28
        0x67 -> :sswitch_28
        0x68 -> :sswitch_28
        0x69 -> :sswitch_28
    .end sparse-switch
.end method

.method public static isEncodingLinearPcm(I)Z
    .registers 4
    .param p0, "audioFormat"    # I

    .prologue
    .line 256
    sparse-switch p0, :sswitch_data_20

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :sswitch_1c
    const/4 v0, 0x1

    .line 270
    :goto_1d
    return v0

    :sswitch_1e
    const/4 v0, 0x0

    goto :goto_1d

    .line 256
    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1c
        0x5 -> :sswitch_1e
        0x6 -> :sswitch_1e
        0x64 -> :sswitch_1e
        0x65 -> :sswitch_1e
        0x66 -> :sswitch_1e
        0x67 -> :sswitch_1e
        0x68 -> :sswitch_1e
        0x69 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static isValidEncoding(I)Z
    .registers 2
    .param p0, "audioFormat"    # I

    .prologue
    .line 235
    sparse-switch p0, :sswitch_data_8

    .line 249
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 247
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 235
    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getChannelMask()I
    .registers 2

    .prologue
    .line 348
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    .line 349
    const/4 v0, 0x0

    .line 351
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    goto :goto_7
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    goto :goto_7
.end method

.method public getPropertySetMask()I
    .registers 2

    .prologue
    .line 356
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 488
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
