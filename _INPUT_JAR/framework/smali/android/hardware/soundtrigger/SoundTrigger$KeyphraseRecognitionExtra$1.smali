.class final Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 771
    # invokes: Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->access$600(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 775
    new-array v0, p1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;->newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v0

    return-object v0
.end method
