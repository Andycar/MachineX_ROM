.class public Landroid/net/wifi/S69BssInfo;
.super Ljava/lang/Object;
.source "S69BssInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/S69BssInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public capabilities:Ljava/lang/String;

.field public frequency:I

.field public level:I

.field public s69Capabilities:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Landroid/net/wifi/S69BssInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/S69BssInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/S69BssInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "BSSID"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "level"    # I
    .param p4, "SSIDs"    # Ljava/lang/String;
    .param p5, "capabilities"    # Ljava/lang/String;
    .param p6, "s69Capabilities"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/net/wifi/S69BssInfo;->BSSID:Ljava/lang/String;

    .line 51
    iput p2, p0, Landroid/net/wifi/S69BssInfo;->frequency:I

    .line 52
    iput p3, p0, Landroid/net/wifi/S69BssInfo;->level:I

    .line 53
    iput-object p4, p0, Landroid/net/wifi/S69BssInfo;->SSID:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Landroid/net/wifi/S69BssInfo;->capabilities:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Landroid/net/wifi/S69BssInfo;->s69Capabilities:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/wifi/S69BssInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Landroid/net/wifi/S69BssInfo;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/net/wifi/S69BssInfo;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/net/wifi/S69BssInfo;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroid/net/wifi/S69BssInfo;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroid/net/wifi/S69BssInfo;->s69Capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
