.class public Landroid/app/PackageSync;
.super Ljava/lang/Object;
.source "PackageSync.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PackageSync;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public label:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public sanitize:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Landroid/app/PackageSync$1;

    invoke-direct {v0}, Landroid/app/PackageSync$1;-><init>()V

    sput-object v0, Landroid/app/PackageSync;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PackageSync;->pkg:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PackageSync;->label:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PackageSync;->sanitize:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "sanitize"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/app/PackageSync;->pkg:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Landroid/app/PackageSync;->label:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Landroid/app/PackageSync;->sanitize:Z

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget-object v0, p0, Landroid/app/PackageSync;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Landroid/app/PackageSync;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Landroid/app/PackageSync;->sanitize:Z

    if-eqz v0, :cond_14

    const-string v0, "1"

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void

    .line 45
    :cond_14
    const-string v0, ""

    goto :goto_10
.end method
