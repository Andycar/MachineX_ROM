.class public Landroid/media/AudioPort;
.super Ljava/lang/Object;
.source "AudioPort.java"


# static fields
.field public static final ROLE_NONE:I = 0x0

.field public static final ROLE_SINK:I = 0x2

.field public static final ROLE_SOURCE:I = 0x1

.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SESSION:I = 0x3

.field public static final TYPE_SUBMIX:I = 0x2


# instance fields
.field private mActiveConfig:Landroid/media/AudioPortConfig;

.field private final mChannelMasks:[I

.field private final mFormats:[I

.field private final mGains:[Landroid/media/AudioGain;

.field mHandle:Landroid/media/AudioHandle;

.field private final mRole:I

.field private final mSamplingRates:[I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;I[I[I[I[Landroid/media/AudioGain;)V
    .registers 7
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "role"    # I
    .param p3, "samplingRates"    # [I
    .param p4, "channelMasks"    # [I
    .param p5, "formats"    # [I
    .param p6, "gains"    # [Landroid/media/AudioGain;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    .line 80
    iput p2, p0, Landroid/media/AudioPort;->mRole:I

    .line 81
    iput-object p3, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    .line 82
    iput-object p4, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    .line 83
    iput-object p5, p0, Landroid/media/AudioPort;->mFormats:[I

    .line 84
    iput-object p6, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    .line 85
    return-void
.end method


# virtual methods
.method public activeConfig()Landroid/media/AudioPortConfig;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/media/AudioPort;->mActiveConfig:Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .registers 11
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    .line 153
    new-instance v0, Landroid/media/AudioPortConfig;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-object v0
.end method

.method public channelMasks()[I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 165
    if-eqz p1, :cond_6

    instance-of v1, p1, Landroid/media/AudioPort;

    if-nez v1, :cond_8

    .line 166
    :cond_6
    const/4 v1, 0x0

    .line 169
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 168
    check-cast v0, Landroid/media/AudioPort;

    .line 169
    .local v0, "ap":Landroid/media/AudioPort;
    iget-object v1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7
.end method

.method public formats()[I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/media/AudioPort;->mFormats:[I

    return-object v0
.end method

.method gain(I)Landroid/media/AudioGain;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 136
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    .line 137
    :cond_7
    const/4 v0, 0x0

    .line 139
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public gains()[Landroid/media/AudioGain;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    return-object v0
.end method

.method handle()Landroid/media/AudioHandle;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->hashCode()I

    move-result v0

    return v0
.end method

.method public role()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Landroid/media/AudioPort;->mRole:I

    return v0
.end method

.method public samplingRates()[I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mHandle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRole:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPort;->mRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
