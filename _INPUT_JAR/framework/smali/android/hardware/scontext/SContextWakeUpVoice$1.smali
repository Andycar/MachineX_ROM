.class final Landroid/hardware/scontext/SContextWakeUpVoice$1;
.super Ljava/lang/Object;
.source "SContextWakeUpVoice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextWakeUpVoice;
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
        "Landroid/hardware/scontext/SContextWakeUpVoice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextWakeUpVoice;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 169
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextWakeUpVoice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextWakeUpVoice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextWakeUpVoice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextWakeUpVoice;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 174
    new-array v0, p1, [Landroid/hardware/scontext/SContextWakeUpVoice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextWakeUpVoice$1;->newArray(I)[Landroid/hardware/scontext/SContextWakeUpVoice;

    move-result-object v0

    return-object v0
.end method