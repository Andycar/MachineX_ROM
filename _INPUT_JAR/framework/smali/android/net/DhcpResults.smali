.class public Landroid/net/DhcpResults;
.super Landroid/net/StaticIpConfiguration;
.source "DhcpResults.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DhcpResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_DHCP_REQUEST:I = 0x2

.field public static final RESTART_DHCP_DISCOVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DhcpResults"


# instance fields
.field public leaseDuration:I

.field public resultAfterRoaming:I

.field public serverAddress:Ljava/net/InetAddress;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    new-instance v0, Landroid/net/DhcpResults$1;

    invoke-direct {v0}, Landroid/net/DhcpResults$1;-><init>()V

    sput-object v0, Landroid/net/DhcpResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/DhcpResults;)V
    .registers 3
    .param p1, "source"    # Landroid/net/DhcpResults;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 65
    if-eqz p1, :cond_15

    .line 67
    iget-object v0, p1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 68
    iget-object v0, p1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 69
    iget v0, p1, Landroid/net/DhcpResults;->leaseDuration:I

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 71
    iget v0, p1, Landroid/net/DhcpResults;->resultAfterRoaming:I

    iput v0, p0, Landroid/net/DhcpResults;->resultAfterRoaming:I

    .line 73
    :cond_15
    return-void
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .registers 2
    .param p1, "source"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpResults;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/DhcpResults;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/net/DhcpResults;->readFromParcel(Landroid/net/DhcpResults;Landroid/os/Parcel;)V

    return-void
.end method

.method private static readFromParcel(Landroid/net/DhcpResults;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "dhcpResults"    # Landroid/net/DhcpResults;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 162
    invoke-static {p0, p1}, Landroid/net/StaticIpConfiguration;->readFromParcel(Landroid/net/StaticIpConfiguration;Landroid/os/Parcel;)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 164
    invoke-static {p1}, Landroid/net/NetworkUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public addDns(Ljava/lang/String;)Z
    .registers 6
    .param p1, "addrString"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 194
    :try_start_6
    iget-object v1, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_11

    .line 200
    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 195
    :catch_11
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDns failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0}, Landroid/net/StaticIpConfiguration;->clear()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 103
    iput v1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 105
    iput v1, p0, Landroid/net/DhcpResults;->resultAfterRoaming:I

    .line 106
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p0, p1, :cond_5

    .line 129
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v1

    .line 125
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Landroid/net/DhcpResults;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 127
    check-cast v0, Landroid/net/DhcpResults;

    .line 129
    .local v0, "target":Landroid/net/DhcpResults;
    check-cast p1, Landroid/net/StaticIpConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/net/StaticIpConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    iget-object v4, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iget v4, v0, Landroid/net/DhcpResults;->leaseDuration:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/net/DhcpResults;->resultAfterRoaming:I

    iget v4, v0, Landroid/net/DhcpResults;->resultAfterRoaming:I

    if-eq v3, v4, :cond_4

    :cond_36
    move v1, v2

    goto :goto_4
.end method

.method public hasMeteredHint()Z
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    const-string v1, "ANDROID_METERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 96
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setDomains(Ljava/lang/String;)V
    .registers 2
    .param p1, "domains"    # Ljava/lang/String;

    .prologue
    .line 228
    .line 229
    return-void
.end method

.method public setGateway(Ljava/lang/String;)Z
    .registers 6
    .param p1, "addrString"    # Ljava/lang/String;

    .prologue
    .line 183
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_8

    .line 188
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 184
    :catch_8
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGateway failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public setIpAddress(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "addrString"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 172
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 173
    .local v0, "addr":Ljava/net/Inet4Address;
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, v0, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_35
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_d} :catch_f

    .line 178
    const/4 v2, 0x0

    .end local v0    # "addr":Ljava/net/Inet4Address;
    :goto_e
    return v2

    .line 174
    :catch_f
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_10
    const-string v2, "DhcpResults"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIpAddress failed with addrString "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v2, 0x1

    goto :goto_e

    .line 174
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_35
    move-exception v1

    goto :goto_10
.end method

.method public setLeaseDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 214
    iput p1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 215
    return-void
.end method

.method public setRoamingResult(I)V
    .registers 2
    .param p1, "RoamingResult"    # I

    .prologue
    .line 220
    iput p1, p0, Landroid/net/DhcpResults;->resultAfterRoaming:I

    .line 221
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)Z
    .registers 6
    .param p1, "addrString"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_8

    .line 210
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 206
    :catch_8
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setServerAddress failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public setVendorInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, " DHCP server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 113
    const-string v1, " Vendor info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, " lease "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget v1, p0, Landroid/net/DhcpResults;->resultAfterRoaming:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a

    const-string v1, " - Server responded to REQUEST at last DHCP process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFromDhcpRequest(Landroid/net/DhcpResults;)V
    .registers 4
    .param p1, "orig"    # Landroid/net/DhcpResults;

    .prologue
    .line 81
    if-nez p1, :cond_3

    .line 86
    :cond_2
    :goto_2
    return-void

    .line 82
    :cond_3
    iget-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-nez v0, :cond_b

    iget-object v0, p1, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    .line 83
    :cond_b
    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/net/StaticIpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 153
    iget v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    invoke-static {p1, v0, p2}, Landroid/net/NetworkUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    .line 155
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Landroid/net/DhcpResults;->resultAfterRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return-void
.end method
