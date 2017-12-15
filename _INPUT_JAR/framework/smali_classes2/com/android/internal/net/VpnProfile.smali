.class public Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEC_PRODUCT_FEATURE_SECURITY_SUPPORT_VPN_STRONG_SWAN:Z = true

.field private static final TAG:Ljava/lang/String; = "VpnProfile"

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_IKEV2_PSK:I = 0x6

.field public static final TYPE_IPSEC_IKEV2_RSA:I = 0x7

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x7

.field public static final TYPE_PPTP:I


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public ocspServerUrl:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 413
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 61
    iput v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 78
    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b5

    move v0, v1

    :goto_80
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b7

    :goto_b2
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 103
    return-void

    :cond_b5
    move v0, v2

    .line 94
    goto :goto_80

    :cond_b7
    move v1, v2

    .line 102
    goto :goto_b2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 81
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static byteArrayToInt([B)I
    .registers 5
    .param p0, "b"    # [B

    .prologue
    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v3, 0x4

    if-ge v0, v3, :cond_12

    .line 140
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 141
    .local v1, "shift":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    .end local v1    # "shift":I
    :cond_12
    return v2
.end method

.method private copyStringToByteArray([BILjava/lang/String;)V
    .registers 8
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 261
    .local v1, "value":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 262
    add-int v2, v0, p2

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 263
    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 265
    :cond_16
    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .registers 15
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    .line 147
    const-string v10, "VpnProfile"

    const-string v11, "decode"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v7, 0x0

    .line 149
    .local v7, "valueString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 152
    .local v2, "newFormatProfile":I
    if-nez p0, :cond_d

    .line 153
    const/4 v4, 0x0

    .line 257
    :goto_c
    return-object v4

    .line 156
    :cond_d
    const/4 v10, 0x0

    :try_start_e
    aget-byte v10, p1, v10

    if-nez v10, :cond_3f

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    const/16 v11, 0xf

    if-ne v10, v11, :cond_3f

    .line 158
    const-string v10, "VpnProfile"

    const-string v11, "This profile has include special header : this stage is candidate."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v10, 0x4

    new-array v6, v10, [B

    .line 160
    .local v6, "size_byte":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    const/4 v10, 0x4

    if-ge v1, v10, :cond_30

    .line 162
    add-int/lit8 v10, v1, 0x2

    aget-byte v10, p1, v10

    aput-byte v10, v6, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 164
    :cond_30
    invoke-static {v6}, Lcom/android/internal/net/VpnProfile;->byteArrayToInt([B)I

    move-result v5

    .line 167
    .local v5, "size":I
    array-length v10, p1

    if-ne v5, v10, :cond_3f

    .line 169
    const/4 v2, 0x1

    .line 170
    const-string v10, "VpnProfile"

    const-string v11, "This profile is new format profile!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v1    # "i":I
    .end local v5    # "size":I
    .end local v6    # "size_byte":[B
    :cond_3f
    const/4 v10, 0x1

    if-ne v2, v10, :cond_9f

    .line 180
    array-length v10, p1

    add-int/lit8 v10, v10, -0x7

    new-array v3, v10, [B

    .line 182
    .local v3, "new_value":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_48
    array-length v10, v3

    if-ge v1, v10, :cond_59

    .line 184
    add-int/lit8 v10, v1, 0x7

    aget-byte v10, p1, v10

    aput-byte v10, v3, v1

    .line 185
    add-int/lit8 v10, v1, 0x7

    const/4 v11, 0x0

    aput-byte v11, p1, v10

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 187
    :cond_59
    new-instance v8, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_60} :catch_1fc

    .line 188
    .end local v7    # "valueString":Ljava/lang/String;
    .local v8, "valueString":Ljava/lang/String;
    :try_start_60
    const-string v10, "VpnProfile"

    const-string v11, "Decode new profile by array offset."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_205

    move-object v7, v8

    .line 196
    .end local v1    # "i":I
    .end local v3    # "new_value":[B
    .end local v8    # "valueString":Ljava/lang/String;
    .restart local v7    # "valueString":Ljava/lang/String;
    :goto_68
    :try_start_68
    const-string v10, "\u0000"

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, "values":[Ljava/lang/String;
    array-length v10, v9

    const/16 v11, 0xe

    if-lt v10, v11, :cond_79

    array-length v10, v9

    const/16 v11, 0x10

    if-le v10, v11, :cond_a8

    .line 200
    :cond_79
    invoke-virtual {v7}, Ljava/lang/String;->clear()V

    .line 201
    const-string v10, "VpnProfile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "values.length("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") is not normal "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 193
    .end local v9    # "values":[Ljava/lang/String;
    :cond_9f
    new-instance v8, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, p1, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .end local v7    # "valueString":Ljava/lang/String;
    .restart local v8    # "valueString":Ljava/lang/String;
    move-object v7, v8

    .end local v8    # "valueString":Ljava/lang/String;
    .restart local v7    # "valueString":Ljava/lang/String;
    goto :goto_68

    .line 205
    .restart local v9    # "values":[Ljava/lang/String;
    :cond_a8
    new-instance v4, Lcom/android/internal/net/VpnProfile;

    invoke-direct {v4, p0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 207
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    .line 209
    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    if-ltz v10, :cond_cd

    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_f7

    .line 210
    :cond_cd
    invoke-virtual {v4}, Lcom/android/internal/net/VpnProfile;->wipe()V

    .line 211
    invoke-virtual {v7}, Ljava/lang/String;->clear()V

    .line 212
    const-string v10, "VpnProfile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "profile.type("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") is not normal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 216
    :cond_f7
    const-string/jumbo v10, "security.mdpp"

    const-string v11, "Disabled"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "ccModePropertyValue":Ljava/lang/String;
    const-string v10, "VpnProfile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CC property value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz v0, :cond_12f

    const-string v10, "Enabled"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12f

    .line 224
    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x6

    if-lt v10, v11, :cond_12c

    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_12f

    .line 226
    :cond_12c
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 230
    :cond_12f
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 231
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 232
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 233
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 234
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x6

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 235
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x7

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 236
    const/16 v10, 0x8

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v4, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 237
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 238
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 239
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 240
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0xc

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 241
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0xd

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 242
    array-length v10, v9

    const/16 v11, 0xe

    if-le v10, v11, :cond_1ef

    new-instance v10, Ljava/lang/String;

    const/16 v11, 0xe

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1be
    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 243
    array-length v10, v9

    const/16 v11, 0xf

    if-le v10, v11, :cond_1f2

    new-instance v10, Ljava/lang/String;

    const/16 v11, 0xf

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1ce
    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 245
    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1e0

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f5

    :cond_1e0
    const/4 v10, 0x1

    :goto_1e1
    iput-boolean v10, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 246
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1e4
    array-length v10, v9

    if-ge v1, v10, :cond_1f7

    .line 247
    aget-object v10, v9, v1

    invoke-virtual {v10}, Ljava/lang/String;->clear()V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e4

    .line 242
    .end local v1    # "i":I
    :cond_1ef
    const-string v10, ""

    goto :goto_1be

    .line 243
    :cond_1f2
    const-string v10, ""

    goto :goto_1ce

    .line 245
    :cond_1f5
    const/4 v10, 0x0

    goto :goto_1e1

    .line 249
    .restart local v1    # "i":I
    :cond_1f7
    invoke-virtual {v7}, Ljava/lang/String;->clear()V
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_1fa} :catch_1fc

    goto/16 :goto_c

    .line 251
    .end local v0    # "ccModePropertyValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v9    # "values":[Ljava/lang/String;
    :catch_1fc
    move-exception v10

    .line 254
    :goto_1fd
    if-eqz v7, :cond_202

    .line 255
    invoke-virtual {v7}, Ljava/lang/String;->clear()V

    .line 257
    :cond_202
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 251
    .end local v7    # "valueString":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "new_value":[B
    .restart local v8    # "valueString":Ljava/lang/String;
    :catch_205
    move-exception v10

    move-object v7, v8

    .end local v8    # "valueString":Ljava/lang/String;
    .restart local v7    # "valueString":Ljava/lang/String;
    goto :goto_1fd
.end method

.method public static intToByteArray(I)[B
    .registers 3
    .param p0, "integer"    # I

    .prologue
    .line 129
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 130
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 132
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .registers 16

    .prologue
    const/4 v14, 0x4

    const/4 v11, 0x0

    .line 269
    const/4 v3, 0x0

    .line 271
    .local v3, "length":I
    new-instance v10, Ljava/lang/Integer;

    iget v12, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "typeString":Ljava/lang/String;
    new-instance v10, Ljava/lang/Boolean;

    iget-boolean v12, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-direct {v10, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "mppeString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v3, v10

    .line 275
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 276
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 277
    iget-boolean v10, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v10, :cond_23f

    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    :goto_46
    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 278
    iget-boolean v10, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v10, :cond_242

    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    :goto_56
    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 279
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 280
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 281
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 282
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 283
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 284
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 285
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 286
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 287
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 288
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 289
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v10

    .line 291
    new-array v0, v3, [B

    .line 292
    .local v0, "encodedProfile":[B
    const/4 v5, 0x0

    .line 294
    .local v5, "offset":I
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 295
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v5, v10

    .line 297
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aput-byte v11, v0, v5

    .line 298
    invoke-direct {p0, v0, v6, v9}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 299
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 301
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 302
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 303
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 305
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget-boolean v10, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v10, :cond_245

    .line 306
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 307
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 308
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 310
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 311
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 312
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 318
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_13d
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 319
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 320
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 322
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 323
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 324
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 326
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 327
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 328
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 330
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 331
    invoke-direct {p0, v0, v6, v4}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 332
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 334
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 335
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 336
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 338
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 339
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 340
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 342
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 343
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 344
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 346
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 347
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 348
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 350
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 351
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 352
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 354
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 355
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 356
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int v5, v6, v10

    .line 358
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 359
    iget-object v10, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 361
    add-int/lit8 v8, v3, 0x7

    .line 362
    .local v8, "total_size":I
    const-string v10, "VpnProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile total size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-array v1, v8, [B

    .line 364
    .local v1, "encodedProfile_newformat":[B
    aput-byte v11, v1, v11

    .line 365
    const/4 v10, 0x1

    const/16 v12, 0xf

    aput-byte v12, v1, v10

    .line 367
    new-array v7, v14, [B

    .line 368
    .local v7, "size":[B
    invoke-static {v8}, Lcom/android/internal/net/VpnProfile;->intToByteArray(I)[B

    move-result-object v7

    .line 369
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_234
    if-ge v2, v14, :cond_24f

    .line 371
    add-int/lit8 v10, v2, 0x2

    aget-byte v12, v7, v2

    aput-byte v12, v1, v10

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_234

    .end local v0    # "encodedProfile":[B
    .end local v1    # "encodedProfile_newformat":[B
    .end local v2    # "i":I
    .end local v6    # "offset":I
    .end local v7    # "size":[B
    .end local v8    # "total_size":I
    :cond_23f
    move v10, v11

    .line 277
    goto/16 :goto_46

    :cond_242
    move v10, v11

    .line 278
    goto/16 :goto_56

    .line 314
    .restart local v0    # "encodedProfile":[B
    .restart local v5    # "offset":I
    :cond_245
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aput-byte v11, v0, v5

    .line 315
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aput-byte v11, v0, v6

    goto/16 :goto_13d

    .line 373
    .end local v5    # "offset":I
    .restart local v1    # "encodedProfile_newformat":[B
    .restart local v2    # "i":I
    .restart local v6    # "offset":I
    .restart local v7    # "size":[B
    .restart local v8    # "total_size":I
    :cond_24f
    const/4 v10, 0x6

    aput-byte v11, v1, v10

    .line 378
    const/4 v2, 0x0

    :goto_253
    array-length v10, v0

    if-ge v2, v10, :cond_261

    .line 380
    add-int/lit8 v10, v2, 0x7

    aget-byte v12, v0, v2

    aput-byte v12, v1, v10

    .line 381
    aput-byte v11, v0, v2

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_253

    .line 384
    :cond_261
    return-object v1
.end method

.method public isValidLockdownProfile()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 394
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 396
    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v7, " +"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_10
    if-ge v3, v4, :cond_1c

    aget-object v1, v0, v3

    .line 397
    .local v1, "dnsServer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 399
    .end local v1    # "dnsServer":Ljava/lang/String;
    :cond_1c
    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 400
    const-string v6, "VpnProfile"

    const-string v7, "DNS required"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2b} :catch_2e

    .line 409
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_2b
    return v5

    .line 405
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2c
    const/4 v5, 0x1

    goto :goto_2b

    .line 407
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_2e
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "VpnProfile"

    const-string v7, "Invalid address"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public wipe()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 431
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 432
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 433
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 434
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 435
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 436
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 437
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 438
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 439
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 441
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 442
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 443
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 444
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v0, :cond_62

    move v0, v1

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v0, :cond_64

    :goto_5e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void

    :cond_62
    move v0, v2

    .line 116
    goto :goto_34

    :cond_64
    move v1, v2

    .line 124
    goto :goto_5e
.end method
