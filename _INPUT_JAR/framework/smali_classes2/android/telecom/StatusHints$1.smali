.class final Landroid/telecom/StatusHints$1;
.super Ljava/lang/Object;
.source "StatusHints.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/StatusHints;
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
        "Landroid/telecom/StatusHints;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/StatusHints;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 104
    new-instance v0, Landroid/telecom/StatusHints;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telecom/StatusHints;-><init>(Landroid/os/Parcel;Landroid/telecom/StatusHints$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/telecom/StatusHints$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/StatusHints;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/StatusHints;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 108
    new-array v0, p1, [Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/telecom/StatusHints$1;->newArray(I)[Landroid/telecom/StatusHints;

    move-result-object v0

    return-object v0
.end method
