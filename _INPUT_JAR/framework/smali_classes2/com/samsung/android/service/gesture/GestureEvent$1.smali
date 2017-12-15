.class final Lcom/samsung/android/service/gesture/GestureEvent$1;
.super Ljava/lang/Object;
.source "GestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/gesture/GestureEvent;
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
        "Lcom/samsung/android/service/gesture/GestureEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/gesture/GestureEvent;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 205
    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/gesture/GestureEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/gesture/GestureEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/gesture/GestureEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/service/gesture/GestureEvent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 210
    new-array v0, p1, [Lcom/samsung/android/service/gesture/GestureEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/gesture/GestureEvent$1;->newArray(I)[Lcom/samsung/android/service/gesture/GestureEvent;

    move-result-object v0

    return-object v0
.end method
