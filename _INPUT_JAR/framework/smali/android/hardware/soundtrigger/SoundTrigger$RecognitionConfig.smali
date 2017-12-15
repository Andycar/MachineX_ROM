.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
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
    name = "RecognitionConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allowMultipleTriggers:Z

.field public final captureRequested:Z

.field public final data:[B

.field public final keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 623
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V
    .registers 5
    .param p1, "captureRequested"    # Z
    .param p2, "allowMultipleTriggers"    # Z
    .param p3, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    .line 618
    iput-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    .line 619
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 620
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    .line 621
    return-void
.end method

.method static synthetic access$400(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 599
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 635
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v4, :cond_22

    move v1, v4

    .line 636
    .local v1, "captureRequested":Z
    :goto_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v4, :cond_24

    move v0, v4

    .line 637
    .local v0, "allowMultipleTriggers":Z
    :goto_10
    sget-object v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 639
    .local v3, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    .line 640
    .local v2, "data":[B
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    return-object v4

    .end local v0    # "allowMultipleTriggers":Z
    .end local v1    # "captureRequested":Z
    .end local v2    # "data":[B
    .end local v3    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    :cond_22
    move v1, v5

    .line 635
    goto :goto_9

    .restart local v1    # "captureRequested":Z
    :cond_24
    move v0, v5

    .line 636
    goto :goto_10
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionConfig [captureRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowMultipleTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 645
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 646
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-eqz v0, :cond_20

    :goto_f
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 647
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 648
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 649
    return-void

    :cond_1e
    move v0, v2

    .line 645
    goto :goto_7

    :cond_20
    move v1, v2

    .line 646
    goto :goto_f
.end method
