.class public Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.super Lorg/apache/harmony/security/asn1/ASN1BitString;
.source "ASN1BitString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASN1NamedBitList"
.end annotation


# static fields
.field private static final INDEFINITE_SIZE:I = -0x1

.field private static final SET_MASK:[B

.field private static final emptyString:Lorg/apache/harmony/security/asn1/BitString;


# instance fields
.field private final maxBits:I

.field private final minBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    .line 101
    new-instance v0, Lorg/apache/harmony/security/asn1/BitString;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    return-void

    .line 100
    :array_14
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "minBits"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    .line 108
    iput p1, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    .line 110
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 15
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 115
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v6, v8, v11

    .line 116
    .local v6, "unusedBits":I
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x8

    sub-int v0, v8, v6

    .line 118
    .local v0, "bitsNumber":I
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-ne v8, v12, :cond_2a

    .line 119
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-ne v8, v12, :cond_1e

    .line 120
    new-array v7, v0, [Z

    .line 135
    .local v7, "value":[Z
    :goto_1b
    if-nez v0, :cond_3b

    .line 156
    :cond_1d
    return-object v7

    .line 122
    .end local v7    # "value":[Z
    :cond_1e
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-le v0, v8, :cond_25

    .line 123
    new-array v7, v0, [Z

    .restart local v7    # "value":[Z
    goto :goto_1b

    .line 125
    .end local v7    # "value":[Z
    :cond_25
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    new-array v7, v8, [Z

    .restart local v7    # "value":[Z
    goto :goto_1b

    .line 129
    .end local v7    # "value":[Z
    :cond_2a
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-le v0, v8, :cond_36

    .line 130
    new-instance v8, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v9, "ASN.1 Named Bitstring: size constraints"

    invoke-direct {v8, v9}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    :cond_36
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    new-array v7, v8, [Z

    .restart local v7    # "value":[Z
    goto :goto_1b

    .line 140
    :cond_3b
    const/4 v1, 0x1

    .line 141
    .local v1, "i":I
    const/4 v2, 0x0

    .line 142
    .local v2, "j":I
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v11, v1

    aget-byte v4, v8, v11

    .line 143
    .local v4, "octet":B
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v5, v8, -0x1

    .local v5, "size":I
    :goto_48
    if-ge v1, v5, :cond_6c

    .line 144
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_4b
    const/16 v8, 0x8

    if-ge v3, v8, :cond_60

    .line 145
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_5e

    move v8, v9

    :goto_57
    aput-boolean v8, v7, v2

    .line 144
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_5e
    move v8, v10

    .line 145
    goto :goto_57

    .line 147
    :cond_60
    add-int/lit8 v1, v1, 0x1

    .line 148
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v11, v1

    aget-byte v4, v8, v11

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 152
    .end local v3    # "k":I
    :cond_6c
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_6d
    rsub-int/lit8 v8, v6, 0x8

    if-ge v3, v8, :cond_1d

    .line 153
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_80

    move v8, v9

    :goto_79
    aput-boolean v8, v7, v2

    .line 152
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    :cond_80
    move v8, v10

    .line 153
    goto :goto_79
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 11
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    const/4 v8, -0x1

    .line 160
    iget-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v7, [Z

    move-object v5, v7

    check-cast v5, [Z

    .line 162
    .local v5, "toEncode":[Z
    array-length v7, v5

    add-int/lit8 v2, v7, -0x1

    .line 163
    .local v2, "index":I
    :goto_b
    if-le v2, v8, :cond_14

    aget-boolean v7, v5, v2

    if-nez v7, :cond_14

    .line 164
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 167
    :cond_14
    if-ne v2, v8, :cond_1e

    .line 168
    sget-object v7, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 169
    const/4 v7, 0x1

    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 194
    :goto_1d
    return-void

    .line 171
    :cond_1e
    rem-int/lit8 v7, v2, 0x8

    rsub-int/lit8 v6, v7, 0x7

    .line 172
    .local v6, "unusedBits":I
    div-int/lit8 v7, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [B

    .line 174
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 175
    .local v3, "j":I
    array-length v7, v0

    add-int/lit8 v2, v7, -0x1

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v2, :cond_4a

    .line 177
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_30
    const/16 v7, 0x8

    if-ge v4, v7, :cond_47

    .line 178
    aget-boolean v7, v5, v3

    if-eqz v7, :cond_42

    .line 179
    aget-byte v7, v0, v1

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 177
    :cond_42
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 176
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 185
    .end local v4    # "k":I
    :cond_4a
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_4b
    rsub-int/lit8 v7, v6, 0x8

    if-ge v4, v7, :cond_62

    .line 186
    aget-boolean v7, v5, v3

    if-eqz v7, :cond_5d

    .line 187
    aget-byte v7, v0, v2

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 185
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 191
    :cond_62
    new-instance v7, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v7, v0, v6}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 192
    array-length v7, v0

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    goto :goto_1d
.end method
