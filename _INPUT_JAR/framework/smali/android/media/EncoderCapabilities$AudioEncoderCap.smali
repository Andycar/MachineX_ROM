.class public Landroid/media/EncoderCapabilities$AudioEncoderCap;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioEncoderCap"
.end annotation


# instance fields
.field public final mCodec:I

.field public final mMaxBitRate:I

.field public final mMaxChannels:I

.field public final mMaxSampleRate:I

.field public final mMinBitRate:I

.field public final mMinChannels:I

.field public final mMinSampleRate:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .registers 8
    .param p1, "codec"    # I
    .param p2, "minBitRate"    # I
    .param p3, "maxBitRate"    # I
    .param p4, "minSampleRate"    # I
    .param p5, "maxSampleRate"    # I
    .param p6, "minChannels"    # I
    .param p7, "maxChannels"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mCodec:I

    .line 100
    iput p2, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMinBitRate:I

    .line 101
    iput p3, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMaxBitRate:I

    .line 102
    iput p4, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMinSampleRate:I

    .line 103
    iput p5, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMaxSampleRate:I

    .line 104
    iput p6, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMinChannels:I

    .line 105
    iput p7, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMaxChannels:I

    .line 106
    return-void
.end method
