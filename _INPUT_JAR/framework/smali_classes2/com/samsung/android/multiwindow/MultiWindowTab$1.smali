.class final Lcom/samsung/android/multiwindow/MultiWindowTab$1;
.super Ljava/lang/Object;
.source "MultiWindowTab.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowTab;
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
        "Lcom/samsung/android/multiwindow/MultiWindowTab;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/multiwindow/MultiWindowTab;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowTab;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowTab$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/multiwindow/MultiWindowTab;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/multiwindow/MultiWindowTab;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/samsung/android/multiwindow/MultiWindowTab;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowTab$1;->newArray(I)[Lcom/samsung/android/multiwindow/MultiWindowTab;

    move-result-object v0

    return-object v0
.end method
