.class public Landroid/net/wifi/WifiChannel;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CHANNEL_NUM:I = 0xc4

.field private static final MAX_FREQ_MHZ:I = 0x16c1

.field private static final MIN_CHANNEL_NUM:I = 0x1

.field private static final MIN_FREQ_MHZ:I = 0x96c


# instance fields
.field public channel:I

.field public channelNum:I

.field public freqMHz:I

.field public frequency:I

.field public isDFS:Z

.field public isNoIbss:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Landroid/net/wifi/WifiChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget v2, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v3, 0x96c

    if-lt v2, v3, :cond_e

    iget v2, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v3, 0x16c1

    if-le v2, v3, :cond_10

    :cond_e
    move v0, v1

    .line 86
    :cond_f
    :goto_f
    return v0

    .line 85
    :cond_10
    iget v2, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    if-lt v2, v0, :cond_1a

    iget v2, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    const/16 v3, 0xc4

    if-le v2, v3, :cond_f

    :cond_1a
    move v0, v1

    goto :goto_f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean v0, p0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/net/wifi/WifiChannel;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-boolean v0, p0, Landroid/net/wifi/WifiChannel;->isNoIbss:Z

    if-eqz v0, :cond_28

    :goto_22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void

    :cond_26
    move v0, v2

    .line 100
    goto :goto_11

    :cond_28
    move v1, v2

    .line 105
    goto :goto_22
.end method
