.class public Lcom/absolute/android/crypt/Crypt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTR_StackMapTable:Ljava/lang/String; = "dummy"

.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "DESede"

.field public static final CIPHER_TRANSFORM:Ljava/lang/String; = "DESede/CBC/PKCS5Padding"

.field private static final a:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    move v0, v1

    .line 159
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1a

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 163
    :cond_1a
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 164
    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 165
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 166
    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 168
    new-array v0, v7, [B

    .line 169
    aput-byte v1, v0, v1

    .line 170
    const/4 v4, 0x1

    aput-byte v1, v0, v4

    .line 171
    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 172
    const/4 v4, 0x3

    aput-byte v1, v0, v4

    .line 173
    const/4 v1, 0x4

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 174
    const/4 v1, 0x5

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 175
    const/4 v1, 0x6

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v2

    shr-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 176
    const/4 v1, 0x7

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 177
    return-object v0
.end method

.method public static cryptValue([B[BILjava/lang/String;Ljava/lang/String;)[B
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p0, p2, p3, p4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 64
    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    .line 66
    invoke-virtual {v0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    add-int/2addr v1, v0

    .line 67
    array-length v0, v4

    if-ge v1, v0, :cond_21

    .line 68
    new-array v0, v1, [B

    .line 69
    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    .line 74
    :cond_21
    return-object v4
.end method

.method public static getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 7

    .prologue
    .line 93
    const-string v0, "DESede"

    .line 96
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 97
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_10
    new-instance v1, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v1, p0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 101
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 104
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Lcom/absolute/android/crypt/Crypt;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 106
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 107
    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 109
    return-object v2
.end method

.method public static getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 132
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_2a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3f

    .line 133
    :try_start_a
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v1, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_48
    .catchall {:try_start_a .. :try_end_f} :catchall_43

    .line 134
    const/16 v0, 0x2000

    :try_start_11
    new-array v0, v0, [B

    .line 135
    :cond_13
    invoke-virtual {v3, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_13

    .line 137
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/absolute/android/crypt/HexUtilities;->EncodeBytesAsHexString([B)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_25} :catch_4a
    .catchall {:try_start_11 .. :try_end_25} :catchall_46

    move-result-object v0

    .line 145
    :try_start_26
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_3d

    .line 153
    :goto_29
    return-object v0

    .line 140
    :catch_2a
    move-exception v0

    move-object v1, v2

    :goto_2c
    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 144
    :catchall_2d
    move-exception v0

    move-object v3, v2

    .line 145
    :goto_2f
    if-eqz v3, :cond_35

    .line 146
    :try_start_31
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_3b

    .line 151
    :cond_34
    :goto_34
    throw v0

    .line 148
    :cond_35
    if-eqz v1, :cond_34

    .line 149
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_34

    :catch_3b
    move-exception v1

    goto :goto_34

    .line 152
    :catch_3d
    move-exception v1

    goto :goto_29

    .line 144
    :catchall_3f
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2f

    :catchall_43
    move-exception v0

    move-object v3, v2

    goto :goto_2f

    :catchall_46
    move-exception v0

    goto :goto_2f

    .line 140
    :catch_48
    move-exception v0

    goto :goto_2c

    :catch_4a
    move-exception v0

    move-object v2, v3

    goto :goto_2c
.end method
