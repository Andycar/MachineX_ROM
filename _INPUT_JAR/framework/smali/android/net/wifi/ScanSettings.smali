.class public Landroid/net/wifi/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channelSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Landroid/net/wifi/ScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanSettings;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/ScanSettings;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v0, :cond_10

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    .line 44
    :cond_10
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 4

    .prologue
    .line 48
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .line 49
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    invoke-virtual {v0}, Landroid/net/wifi/WifiChannel;->isValid()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 50
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_22

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v2, :cond_29

    .line 64
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 62
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_22
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_5

    .line 65
    :cond_29
    return-void
.end method
