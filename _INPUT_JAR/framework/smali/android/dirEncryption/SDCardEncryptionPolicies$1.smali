.class final Landroid/dirEncryption/SDCardEncryptionPolicies$1;
.super Ljava/lang/Object;
.source "SDCardEncryptionPolicies.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dirEncryption/SDCardEncryptionPolicies;
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
        "Landroid/dirEncryption/SDCardEncryptionPolicies;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 139
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies$1;->createFromParcel(Landroid/os/Parcel;)Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 143
    new-array v0, p1, [Landroid/dirEncryption/SDCardEncryptionPolicies;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies$1;->newArray(I)[Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    return-object v0
.end method
