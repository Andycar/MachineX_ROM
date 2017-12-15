.class public Lcom/samsung/android/cepproxyks/CertificateAKS;
.super Ljava/lang/Object;
.source "CertificateAKS.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cepproxyks/CertificateAKS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCertificate:[Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/android/cepproxyks/CertificateAKS$1;

    invoke-direct {v0}, Lcom/samsung/android/cepproxyks/CertificateAKS$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cepproxyks/CertificateAKS;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 25
    return-void
.end method
