.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final captureAvailable:Z

.field public final captureDelayMs:I

.field public captureFormat:Landroid/media/AudioFormat;

.field public final capturePreambleMs:I

.field public final captureSession:I

.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I

.field public final triggerInData:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 463
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZIIIZLandroid/media/AudioFormat;[B)V
    .registers 10
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    .line 453
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    .line 454
    iput-boolean p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    .line 455
    iput p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    .line 456
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    .line 457
    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    .line 458
    iput-boolean p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    .line 459
    iput-object p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    .line 460
    iput-object p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    .line 461
    return-void
.end method

.method static synthetic access$300(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 425
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 16
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v13, 0x0

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 476
    .local v1, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 477
    .local v2, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v14

    if-ne v14, v0, :cond_56

    move v3, v0

    .line 478
    .local v3, "captureAvailable":Z
    :goto_11
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 479
    .local v4, "captureSession":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 480
    .local v5, "captureDelayMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 481
    .local v6, "capturePreambleMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v14

    if-ne v14, v0, :cond_58

    move v7, v0

    .line 482
    .local v7, "triggerInData":Z
    :goto_24
    const/4 v8, 0x0

    .line 483
    .local v8, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v13

    if-ne v13, v0, :cond_4c

    .line 484
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 485
    .local v12, "sampleRate":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 486
    .local v11, "encoding":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 487
    .local v10, "channelMask":I
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    .line 493
    .end local v10    # "channelMask":I
    .end local v11    # "encoding":I
    .end local v12    # "sampleRate":I
    :cond_4c
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v9

    .line 494
    .local v9, "data":[B
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    invoke-direct/range {v0 .. v9}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    return-object v0

    .end local v3    # "captureAvailable":Z
    .end local v4    # "captureSession":I
    .end local v5    # "captureDelayMs":I
    .end local v6    # "capturePreambleMs":I
    .end local v7    # "triggerInData":Z
    .end local v8    # "captureFormat":Landroid/media/AudioFormat;
    .end local v9    # "data":[B
    :cond_56
    move v3, v13

    .line 477
    goto :goto_11

    .restart local v3    # "captureAvailable":Z
    .restart local v4    # "captureSession":I
    .restart local v5    # "captureDelayMs":I
    .restart local v6    # "capturePreambleMs":I
    :cond_58
    move v7, v13

    .line 481
    goto :goto_24
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    if-ne p0, p1, :cond_5

    .line 574
    :cond_4
    :goto_4
    return v1

    .line 547
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 548
    goto :goto_4

    .line 549
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 550
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 551
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 552
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 553
    goto :goto_4

    .line 554
    :cond_20
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    if-eq v3, v4, :cond_28

    move v1, v2

    .line 555
    goto :goto_4

    .line 556
    :cond_28
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    if-eq v3, v4, :cond_30

    move v1, v2

    .line 557
    goto :goto_4

    .line 558
    :cond_30
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    if-eq v3, v4, :cond_38

    move v1, v2

    .line 559
    goto :goto_4

    .line 560
    :cond_38
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_44

    move v1, v2

    .line 561
    goto :goto_4

    .line 562
    :cond_44
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    if-eq v3, v4, :cond_4c

    move v1, v2

    .line 563
    goto :goto_4

    .line 564
    :cond_4c
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eq v3, v4, :cond_54

    move v1, v2

    .line 565
    goto :goto_4

    .line 566
    :cond_54
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eq v3, v4, :cond_5c

    move v1, v2

    .line 567
    goto :goto_4

    .line 568
    :cond_5c
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    if-eq v3, v4, :cond_6c

    move v1, v2

    .line 569
    goto :goto_4

    .line 570
    :cond_6c
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    if-eq v3, v4, :cond_7c

    move v1, v2

    .line 571
    goto :goto_4

    .line 572
    :cond_7c
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 573
    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    .line 525
    const/16 v0, 0x1f

    .line 526
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 527
    .local v1, "result":I
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eqz v2, :cond_61

    move v2, v3

    :goto_c
    add-int/lit8 v1, v2, 0x1f

    .line 528
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    add-int v1, v2, v5

    .line 529
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    add-int v1, v2, v5

    .line 530
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    add-int v1, v2, v5

    .line 531
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eqz v5, :cond_63

    :goto_26
    add-int v1, v2, v3

    .line 532
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v2, :cond_4a

    .line 533
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    add-int v1, v2, v3

    .line 534
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    add-int v1, v2, v3

    .line 535
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    add-int v1, v2, v3

    .line 537
    :cond_4a
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 538
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    add-int v1, v2, v3

    .line 539
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    add-int v1, v2, v3

    .line 540
    return v1

    :cond_61
    move v2, v4

    .line 527
    goto :goto_c

    :cond_63
    move v3, v4

    .line 531
    goto :goto_26
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionEvent [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundModelHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capturePreambleMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerInData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_91

    const-string v0, ""

    :goto_5f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_ab

    const-string v0, ""

    :goto_69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_c5

    const-string v0, ""

    :goto_73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    if-nez v0, :cond_df

    const/4 v0, 0x0

    :goto_82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sampleRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", encoding="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", channelMask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_73

    :cond_df
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    array-length v0, v0

    goto :goto_82
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 505
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eqz v0, :cond_55

    move v0, v1

    :goto_11
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 508
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eqz v0, :cond_57

    move v0, v1

    :goto_29
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 512
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v0, :cond_59

    .line 513
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 514
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    :goto_4f
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 521
    return-void

    :cond_55
    move v0, v2

    .line 507
    goto :goto_11

    :cond_57
    move v0, v2

    .line 511
    goto :goto_29

    .line 518
    :cond_59
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4f
.end method
