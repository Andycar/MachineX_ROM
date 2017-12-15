.class public Landroid/net/wifi/MsapBssInfo;
.super Ljava/lang/Object;
.source "MsapBssInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/MsapBssInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSIDs:Ljava/lang/String;

.field public beacon_int:I

.field public capabilities:I

.field public frequency:I

.field public is_msap:I

.field public level:I

.field public noise:I

.field public quality:I

.field public sid:I

.field public tsf:[B

.field public vhash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 145
    new-instance v0, Landroid/net/wifi/MsapBssInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/MsapBssInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/MsapBssInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;I)V
    .registers 10
    .param p1, "BSSID"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "quality"    # I
    .param p4, "noise"    # I
    .param p5, "level"    # I
    .param p6, "SSIDs"    # Ljava/lang/String;
    .param p7, "is_msap"    # I
    .param p8, "vhash"    # Ljava/lang/String;
    .param p9, "sid"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/net/wifi/MsapBssInfo;->BSSID:Ljava/lang/String;

    .line 89
    iput p2, p0, Landroid/net/wifi/MsapBssInfo;->frequency:I

    .line 90
    iput p3, p0, Landroid/net/wifi/MsapBssInfo;->quality:I

    .line 91
    iput p4, p0, Landroid/net/wifi/MsapBssInfo;->noise:I

    .line 92
    iput p5, p0, Landroid/net/wifi/MsapBssInfo;->level:I

    .line 93
    iput-object p6, p0, Landroid/net/wifi/MsapBssInfo;->SSIDs:Ljava/lang/String;

    .line 94
    iput p7, p0, Landroid/net/wifi/MsapBssInfo;->is_msap:I

    .line 95
    iput-object p8, p0, Landroid/net/wifi/MsapBssInfo;->vhash:Ljava/lang/String;

    .line 96
    iput p9, p0, Landroid/net/wifi/MsapBssInfo;->sid:I

    .line 97
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 104
    .local v0, "none":Ljava/lang/String;
    const-string v2, "BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/MsapBssInfo;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_7c

    move-object v2, v0

    :goto_12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/MsapBssInfo;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/MsapBssInfo;->quality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", noise: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/MsapBssInfo;->noise:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/MsapBssInfo;->noise:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", SSIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/MsapBssInfo;->SSIDs:Ljava/lang/String;

    if-nez v3, :cond_7f

    .end local v0    # "none":Ljava/lang/String;
    :goto_50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", is_msap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/MsapBssInfo;->is_msap:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", vhash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/MsapBssInfo;->vhash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", sid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/MsapBssInfo;->sid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 104
    .restart local v0    # "none":Ljava/lang/String;
    :cond_7c
    iget-object v2, p0, Landroid/net/wifi/MsapBssInfo;->BSSID:Ljava/lang/String;

    goto :goto_12

    :cond_7f
    iget-object v0, p0, Landroid/net/wifi/MsapBssInfo;->SSIDs:Ljava/lang/String;

    goto :goto_50
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Landroid/net/wifi/MsapBssInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Landroid/net/wifi/MsapBssInfo;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Landroid/net/wifi/MsapBssInfo;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/net/wifi/MsapBssInfo;->noise:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/net/wifi/MsapBssInfo;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/net/wifi/MsapBssInfo;->SSIDs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Landroid/net/wifi/MsapBssInfo;->is_msap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Landroid/net/wifi/MsapBssInfo;->vhash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Landroid/net/wifi/MsapBssInfo;->sid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
