.class final Landroid/telecom/PhoneAccount$1;
.super Ljava/lang/Object;
.source "PhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccount;
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
        "Landroid/telecom/PhoneAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/PhoneAccount;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 425
    new-instance v0, Landroid/telecom/PhoneAccount;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telecom/PhoneAccount;-><init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccount$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/PhoneAccount;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 430
    new-array v0, p1, [Landroid/telecom/PhoneAccount;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount$1;->newArray(I)[Landroid/telecom/PhoneAccount;

    move-result-object v0

    return-object v0
.end method
