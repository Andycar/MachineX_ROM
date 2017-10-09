.class public final Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public final escapedString:Ljava/lang/String;

.field private hasConsecutiveSpaces:Z

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public final rawString:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;

.field private final tag:I

.field public wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .registers 6
    .param p1, "parsedString"    # Ljava/lang/String;
    .param p2, "hasQorE"    # Z
    .param p3, "oid"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 61
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 62
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 66
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-eq p3, v1, :cond_1a

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-ne p3, v1, :cond_21

    .line 69
    :cond_1a
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    .line 75
    .local v0, "tag":I
    :goto_1e
    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 76
    return-void

    .line 70
    .end local v0    # "tag":I
    :cond_21
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 71
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    .restart local v0    # "tag":I
    goto :goto_1e

    .line 73
    .end local v0    # "tag":I
    :cond_2e
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    .restart local v0    # "tag":I
    goto :goto_1e
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "hexString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 81
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 85
    :try_start_a
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 87
    .local v2, "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 89
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 91
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 102
    :goto_2f
    return-void

    .line 94
    :cond_30
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_34} :catch_35

    goto :goto_2f

    .line 97
    .end local v2    # "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_35
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 99
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 100
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "rawString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B
    .param p3, "tag"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 107
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 108
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 110
    if-nez p1, :cond_17

    .line 111
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 117
    :goto_16
    return-void

    .line 114
    :cond_17
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_16
.end method

.method private static isPrintableString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 125
    .local v0, "ch":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_39

    const/16 v2, 0x27

    if-lt v0, v2, :cond_17

    const/16 v2, 0x29

    if-le v0, v2, :cond_39

    :cond_17
    const/16 v2, 0x2b

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x3a

    if-le v0, v2, :cond_39

    :cond_1f
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_39

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_39

    const/16 v2, 0x41

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x5a

    if-le v0, v2, :cond_39

    :cond_2f
    const/16 v2, 0x61

    if-lt v0, v2, :cond_37

    const/16 v2, 0x7a

    if-le v0, v2, :cond_39

    .line 132
    :cond_37
    const/4 v2, 0x0

    .line 135
    .end local v0    # "ch":C
    :goto_38
    return v2

    .line 123
    .restart local v0    # "ch":C
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "ch":C
    :cond_3c
    const/4 v2, 0x1

    goto :goto_38
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x5c

    const/16 v9, 0x20

    const/4 v7, 0x1

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 211
    .local v4, "length":I
    if-nez v4, :cond_d

    .line 276
    .end local p1    # "name":Ljava/lang/String;
    :goto_c
    return-object p1

    .line 214
    .restart local p1    # "name":Ljava/lang/String;
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v4, 0x2

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 219
    .local v2, "escapeSpaces":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_16
    if-ge v3, v4, :cond_62

    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 221
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_68

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    :goto_22
    if-eqz v2, :cond_27

    if-eq v1, v9, :cond_27

    .line 272
    const/4 v2, 0x0

    .line 219
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 233
    :sswitch_2a
    add-int/lit8 v8, v4, -0x1

    if-ge v3, v8, :cond_50

    .line 234
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4c

    move v5, v7

    .line 235
    .local v5, "nextIsSpace":Z
    :goto_37
    if-nez v2, :cond_3d

    if-nez v5, :cond_3d

    if-nez v3, :cond_4e

    :cond_3d
    move v2, v7

    .line 236
    :goto_3e
    iget-boolean v8, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    or-int/2addr v8, v5

    iput-boolean v8, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    .line 241
    .end local v5    # "nextIsSpace":Z
    :goto_43
    if-eqz v2, :cond_48

    .line 242
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :cond_48
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_4c
    move v5, v6

    .line 234
    goto :goto_37

    .restart local v5    # "nextIsSpace":Z
    :cond_4e
    move v2, v6

    .line 235
    goto :goto_3e

    .line 238
    .end local v5    # "nextIsSpace":Z
    :cond_50
    const/4 v2, 0x1

    goto :goto_43

    .line 250
    :sswitch_52
    iput-boolean v7, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 251
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 262
    :sswitch_5b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 276
    .end local v1    # "ch":C
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    .line 221
    nop

    :sswitch_data_68
    .sparse-switch
        0x20 -> :sswitch_2a
        0x22 -> :sswitch_52
        0x23 -> :sswitch_5b
        0x2b -> :sswitch_5b
        0x2c -> :sswitch_5b
        0x3b -> :sswitch_5b
        0x3c -> :sswitch_5b
        0x3d -> :sswitch_5b
        0x3e -> :sswitch_5b
        0x5c -> :sswitch_52
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 184
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_27

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 188
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "c":C
    if-eq v0, v3, :cond_1e

    if-ne v0, v4, :cond_21

    .line 190
    :cond_1e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 195
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_27
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 143
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_89

    .line 144
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_1f

    .line 146
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v3, v4, :cond_57

    .line 147
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 153
    :goto_1c
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 156
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-ge v2, v3, :cond_83

    .line 160
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 161
    .local v1, "c":I
    if-ge v1, v5, :cond_75

    .line 162
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    :goto_46
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    .line 168
    if-ge v1, v5, :cond_7c

    .line 169
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 148
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "c":I
    .end local v2    # "i":I
    :cond_57
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v3, v4, :cond_6a

    .line 149
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_1c

    .line 151
    :cond_6a
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_1c

    .line 164
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "c":I
    .restart local v2    # "i":I
    :cond_75
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 171
    :cond_7c
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 174
    .end local v1    # "c":I
    :cond_83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 176
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_89
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3
.end method

.method public getRFC2253String()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x20

    .line 334
    iget-boolean v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    if-nez v6, :cond_b

    .line 335
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 372
    :goto_a
    return-object v6

    .line 338
    :cond_b
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    if-nez v6, :cond_7a

    .line 340
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x2

    .line 341
    .local v3, "lastIndex":I
    move v2, v3

    .local v2, "i":I
    :goto_18
    if-lez v2, :cond_31

    .line 342
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_2e

    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_2e

    .line 343
    add-int/lit8 v3, v2, -0x1

    .line 341
    :cond_2e
    add-int/lit8 v2, v2, -0x2

    goto :goto_18

    .line 347
    :cond_31
    const/4 v0, 0x1

    .line 348
    .local v0, "beginning":Z
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 349
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_3e
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_74

    .line 350
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 351
    .local v1, "ch":C
    if-eq v1, v9, :cond_55

    .line 352
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    const/4 v0, 0x0

    .line 349
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 355
    :cond_55
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 356
    .local v4, "nextCh":C
    if-ne v4, v8, :cond_6c

    .line 357
    if-nez v0, :cond_63

    if-le v2, v3, :cond_66

    .line 358
    :cond_63
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_66
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 362
    :cond_6c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const/4 v0, 0x0

    goto :goto_69

    .line 370
    .end local v1    # "ch":C
    .end local v4    # "nextCh":C
    :cond_74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    .line 372
    .end local v0    # "beginning":Z
    .end local v2    # "i":I
    .end local v3    # "lastIndex":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_7a
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    goto :goto_a
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0
.end method

.method public getValues(Lorg/apache/harmony/security/asn1/ASN1Type;)Ljava/util/Collection;
    .registers 4
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/security/asn1/ASN1Type;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public makeCanonical()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x23

    const/16 v7, 0x20

    .line 280
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 281
    .local v4, "length":I
    if-nez v4, :cond_11

    .line 282
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 326
    :goto_10
    return-object v5

    .line 284
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 287
    .local v3, "index":I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_2a

    .line 288
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 294
    :cond_2a
    :goto_2a
    if-ge v3, v4, :cond_51

    .line 295
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 297
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_6e

    .line 316
    :goto_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 299
    :sswitch_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 300
    .local v1, "bufLength":I
    if-eqz v1, :cond_38

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_38

    .line 303
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 313
    .end local v1    # "bufLength":I
    :sswitch_4d
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 321
    .end local v2    # "ch":C
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 322
    .restart local v1    # "bufLength":I
    :goto_57
    const/4 v5, -0x1

    if-le v1, v5, :cond_63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_63

    add-int/lit8 v1, v1, -0x1

    goto :goto_57

    .line 324
    :cond_63
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 297
    nop

    :sswitch_data_6e
    .sparse-switch
        0x20 -> :sswitch_3b
        0x22 -> :sswitch_4d
        0x2b -> :sswitch_4d
        0x2c -> :sswitch_4d
        0x3b -> :sswitch_4d
        0x3c -> :sswitch_4d
        0x3e -> :sswitch_4d
        0x5c -> :sswitch_4d
    .end sparse-switch
.end method
