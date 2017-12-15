.class public Landroid/media/AudioFormat$Builder;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 375
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 376
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 377
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 383
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;)V
    .registers 3
    .param p1, "af"    # Landroid/media/AudioFormat;

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 375
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 376
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 377
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 390
    # getter for: Landroid/media/AudioFormat;->mEncoding:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$000(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 391
    # getter for: Landroid/media/AudioFormat;->mSampleRate:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$100(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 392
    # getter for: Landroid/media/AudioFormat;->mChannelMask:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$200(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 393
    # getter for: Landroid/media/AudioFormat;->mPropertySetMask:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$300(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 394
    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFormat;
    .registers 4

    .prologue
    .line 402
    new-instance v0, Landroid/media/AudioFormat;

    const/16 v1, 0x7bc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioFormat;-><init>(ILandroid/media/AudioFormat$1;)V

    .line 403
    .local v0, "af":Landroid/media/AudioFormat;
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    # setter for: Landroid/media/AudioFormat;->mEncoding:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$002(Landroid/media/AudioFormat;I)I

    .line 404
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    # setter for: Landroid/media/AudioFormat;->mSampleRate:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$102(Landroid/media/AudioFormat;I)I

    .line 405
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    # setter for: Landroid/media/AudioFormat;->mChannelMask:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$202(Landroid/media/AudioFormat;I)I

    .line 406
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    # setter for: Landroid/media/AudioFormat;->mPropertySetMask:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$302(Landroid/media/AudioFormat;I)I

    .line 407
    return-object v0
.end method

.method public setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .registers 3
    .param p1, "channelMask"    # I

    .prologue
    .line 465
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 466
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 467
    return-object p0
.end method

.method public setEncoding(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .param p1, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 422
    sparse-switch p1, :sswitch_data_2a

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :sswitch_1c
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 443
    :goto_1f
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 444
    return-object p0

    .line 437
    :sswitch_26
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    goto :goto_1f

    .line 422
    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_26
        0x3 -> :sswitch_26
        0x4 -> :sswitch_26
        0x5 -> :sswitch_26
        0x6 -> :sswitch_26
        0x64 -> :sswitch_26
        0x65 -> :sswitch_26
        0x66 -> :sswitch_26
        0x67 -> :sswitch_26
        0x68 -> :sswitch_26
        0x69 -> :sswitch_26
    .end sparse-switch
.end method

.method public setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .param p1, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 477
    if-lez p1, :cond_7

    const v0, 0x2ee00

    if-le p1, v0, :cond_20

    .line 478
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_20
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 481
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 482
    return-object p0
.end method
