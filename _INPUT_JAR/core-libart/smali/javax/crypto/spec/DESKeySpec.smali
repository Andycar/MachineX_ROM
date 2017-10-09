.class public Ljavax/crypto/spec/DESKeySpec;
.super Ljava/lang/Object;
.source "DESKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_KEY_LEN:I = 0x8

.field private static final SEMIWEAKS:[[B


# instance fields
.field private final key:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_b8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_d0

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_e0

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_e8

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_f0

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_f8

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_100

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_108

    aput-object v2, v0, v1

    sput-object v0, Ljavax/crypto/spec/DESKeySpec;->SEMIWEAKS:[[B

    return-void

    nop

    :array_90
    .array-data 1
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
    .end array-data

    :array_98
    .array-data 1
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
    .end array-data

    :array_a0
    .array-data 1
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
    .end array-data

    :array_a8
    .array-data 1
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
    .end array-data

    :array_b0
    .array-data 1
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
    .end array-data

    :array_b8
    .array-data 1
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
    .end array-data

    :array_c0
    .array-data 1
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
    .end array-data

    :array_c8
    .array-data 1
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
    .end array-data

    :array_d0
    .array-data 1
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
    .end array-data

    :array_d8
    .array-data 1
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
    .end array-data

    :array_e0
    .array-data 1
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
    .end array-data

    :array_e8
    .array-data 1
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data

    :array_f0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_f8
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
    .end array-data

    :array_100
    .array-data 1
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
    .end array-data

    :array_108
    .array-data 1
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([BI)V

    .line 103
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 6
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p1, :cond_f

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_f
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_1b

    .line 122
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key too short"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1b
    new-array v0, v2, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    .line 125
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 126
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .registers 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 154
    if-nez p0, :cond_c

    .line 155
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_c
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v3, :cond_18

    .line 158
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key too short"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_18
    const/4 v0, 0x0

    .line 163
    .local v0, "byteKey":I
    move v1, p1

    .local v1, "i":I
    :goto_1a
    if-ge v1, v3, :cond_30

    .line 164
    aget-byte v0, p0, v1

    .line 166
    shr-int/lit8 v2, v0, 0x1

    xor-int/2addr v0, v2

    .line 167
    shr-int/lit8 v2, v0, 0x2

    xor-int/2addr v0, v2

    .line 168
    shr-int/lit8 v2, v0, 0x4

    xor-int/2addr v0, v2

    .line 170
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2d

    .line 171
    const/4 v2, 0x0

    .line 174
    :goto_2c
    return v2

    .line 163
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 174
    :cond_30
    const/4 v2, 0x1

    goto :goto_2c
.end method

.method public static isWeak([BI)Z
    .registers 7
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 191
    if-nez p0, :cond_c

    .line 192
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_c
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v4, :cond_18

    .line 195
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key too short"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    sget-object v2, Ljavax/crypto/spec/DESKeySpec;->SEMIWEAKS:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_35

    .line 199
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1f
    if-ge v1, v4, :cond_33

    .line 200
    sget-object v2, Ljavax/crypto/spec/DESKeySpec;->SEMIWEAKS:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v1

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_30

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 199
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 204
    :cond_33
    const/4 v2, 0x1

    .line 206
    .end local v1    # "j":I
    :goto_34
    return v2

    :cond_35
    const/4 v2, 0x0

    goto :goto_34
.end method


# virtual methods
.method public getKey()[B
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 134
    new-array v0, v3, [B

    .line 135
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 136
    return-object v0
.end method
