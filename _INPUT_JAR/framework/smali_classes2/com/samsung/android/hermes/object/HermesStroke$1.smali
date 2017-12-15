.class final Lcom/samsung/android/hermes/object/HermesStroke$1;
.super Ljava/lang/Object;
.source "HermesStroke.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/object/HermesStroke;
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
        "Lcom/samsung/android/hermes/object/HermesStroke;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hermes/object/HermesStroke;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    new-instance v0, Lcom/samsung/android/hermes/object/HermesStroke;

    invoke-direct {v0}, Lcom/samsung/android/hermes/object/HermesStroke;-><init>()V

    .line 77
    .local v0, "data":Lcom/samsung/android/hermes/object/HermesStroke;
    invoke-virtual {v0, p1}, Lcom/samsung/android/hermes/object/HermesStroke;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/hermes/object/HermesStroke$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hermes/object/HermesStroke;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/hermes/object/HermesStroke;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 83
    new-array v0, p1, [Lcom/samsung/android/hermes/object/HermesStroke;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/hermes/object/HermesStroke$1;->newArray(I)[Lcom/samsung/android/hermes/object/HermesStroke;

    move-result-object v0

    return-object v0
.end method
