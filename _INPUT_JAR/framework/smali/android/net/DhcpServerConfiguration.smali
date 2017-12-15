.class public Landroid/net/DhcpServerConfiguration;
.super Ljava/lang/Object;
.source "DhcpServerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DhcpServerConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DhcpServerConfiguration"

.field public static final dhcpEnableVarName:Ljava/lang/String; = "dhcp"

.field public static final ipRangeEndVarName:Ljava/lang/String; = "end_ip"

.field public static final ipRangeStartVarName:Ljava/lang/String; = "start_ip"

.field public static final leaseTimeVarName:Ljava/lang/String; = "lease_time"

.field public static final maxClientVarName:Ljava/lang/String; = "max_client"


# instance fields
.field public dhcpEnable:Z

.field public ipRangeEnd:Ljava/lang/String;

.field public ipRangeStart:Ljava/lang/String;

.field public leaseTime:I

.field public localIp:Ljava/lang/String;

.field public maxClient:I

.field public subnetmask:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Landroid/net/DhcpServerConfiguration$1;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 51
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 53
    iput v2, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 54
    iput v2, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 55
    return-void
.end method

.method public static IpToInt(Ljava/lang/String;)I
    .registers 6
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 108
    if-nez p0, :cond_5

    .line 109
    const/4 v3, -0x1

    .line 117
    :goto_4
    return v3

    .line 111
    :cond_5
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "addrArray":[Ljava/lang/String;
    new-array v2, v4, [I

    .line 114
    .local v2, "ipOct":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v4, :cond_1b

    .line 115
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 117
    :cond_1b
    const/4 v3, 0x0

    aget v3, v2, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget v4, v2, v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v2, v4

    add-int/2addr v3, v4

    goto :goto_4
.end method

.method public static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "addr"    # I

    .prologue
    const/16 v2, 0x2e

    .line 101
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    if-ne p0, p1, :cond_5

    .line 76
    :cond_4
    :goto_4
    return v1

    .line 70
    :cond_5
    instance-of v3, p1, Landroid/net/DhcpServerConfiguration;

    if-nez v3, :cond_b

    move v1, v2

    .line 71
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 74
    check-cast v0, Landroid/net/DhcpServerConfiguration;

    .line 76
    .local v0, "testConfig":Landroid/net/DhcpServerConfiguration;
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    if-nez v3, :cond_42

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    if-nez v3, :cond_40

    :goto_16
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    if-nez v3, :cond_4d

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    if-nez v3, :cond_40

    :goto_1e
    iget-boolean v3, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iget-boolean v4, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    if-nez v3, :cond_58

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    if-nez v3, :cond_40

    :goto_2c
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    if-nez v3, :cond_63

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    if-nez v3, :cond_40

    :goto_34
    iget v3, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iget v4, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iget v4, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    if-eq v3, v4, :cond_4

    :cond_40
    move v1, v2

    goto :goto_4

    :cond_42
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_16

    :cond_4d
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_1e

    :cond_58
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_2c

    :cond_63
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_34
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-boolean v1, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-eqz v1, :cond_5c

    const/4 v1, 0x1

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget v1, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget v1, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_5c
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 125
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const-string v0, "DhcpServerConfiguration"

    const-string/jumbo v1, "writeToParcel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localIp  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subnetmask  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcpEnable  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipRangeStart  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipRangeEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaseTime  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxClient  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method
