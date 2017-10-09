.class public Lorg/apache/harmony/security/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;
    }
.end annotation


# static fields
.field private static final MESSAGE_DIGEST_OID:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 8
    .param p0, "signer"    # Ljava/security/cert/X509Certificate;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 233
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 236
    .local v2, "issuer":Ljava/security/Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 237
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    aput-object p0, v4, v5

    .line 257
    :goto_14
    return-object v4

    .line 240
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v0, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 244
    const/4 v1, 0x1

    .line 246
    .local v1, "count":I
    :cond_21
    invoke-static {v2, p1}, Lorg/apache/harmony/security/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 247
    .local v3, "issuerCert":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_30

    .line 257
    :goto_27
    new-array v4, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    goto :goto_14

    .line 250
    :cond_30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 252
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 253
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_27
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "issuer"    # Ljava/security/Principal;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 262
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 263
    aget-object v1, p1, v0

    .line 266
    :goto_12
    return-object v1

    .line 261
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .registers 36
    .param p0, "signature"    # Ljava/io/InputStream;
    .param p1, "signatureBlock"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v5, "bis":Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v32, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 73
    .local v21, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v30

    .line 74
    .local v30, "signedData":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v30, :cond_1f

    .line 75
    new-instance v32, Ljava/io/IOException;

    const-string v33, "No SignedData found"

    invoke-direct/range {v32 .. v33}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 77
    :cond_1f
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v14

    .line 79
    .local v14, "encCerts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_2c

    .line 80
    const/16 v32, 0x0

    .line 228
    :goto_2b
    return-object v32

    .line 82
    :cond_2c
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v6, v0, [Ljava/security/cert/X509Certificate;

    .line 83
    .local v6, "certs":[Ljava/security/cert/X509Certificate;
    const-string v32, "X.509"

    invoke-static/range {v32 .. v32}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    .line 84
    .local v7, "cf":Ljava/security/cert/CertificateFactory;
    const/16 v18, 0x0

    .line 85
    .local v18, "i":I
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/security/x509/Certificate;

    .line 86
    .local v13, "encCert":Lorg/apache/harmony/security/x509/Certificate;
    invoke-virtual {v13}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v15

    .line 87
    .local v15, "encoded":[B
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    .local v22, "is":Ljava/io/InputStream;
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "i":I
    .local v19, "i":I
    new-instance v33, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v32

    check-cast v32, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v33, v6, v18

    move/from16 v18, v19

    .line 90
    .end local v19    # "i":I
    .restart local v18    # "i":I
    goto :goto_40

    .line 92
    .end local v13    # "encCert":Lorg/apache/harmony/security/x509/Certificate;
    .end local v15    # "encoded":[B
    .end local v22    # "is":Ljava/io/InputStream;
    :cond_6f
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v29

    .line 94
    .local v29, "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_c5

    .line 95
    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 101
    .local v28, "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v23

    .line 104
    .local v23, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v31

    .line 107
    .local v31, "snum":Ljava/math/BigInteger;
    const/16 v24, 0x0

    .line 108
    .local v24, "issuerSertIndex":I
    const/16 v18, 0x0

    :goto_91
    array-length v0, v6

    move/from16 v32, v0

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_b8

    .line 109
    aget-object v32, v6, v18

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c9

    aget-object v32, v6, v18

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c9

    .line 111
    move/from16 v24, v18

    .line 115
    :cond_b8
    array-length v0, v6

    move/from16 v32, v0

    move/from16 v0, v18

    move/from16 v1, v32

    if-ne v0, v1, :cond_cc

    .line 116
    const/16 v32, 0x0

    goto/16 :goto_2b

    .line 97
    .end local v23    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v24    # "issuerSertIndex":I
    .end local v28    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v31    # "snum":Ljava/math/BigInteger;
    :cond_c5
    const/16 v32, 0x0

    goto/16 :goto_2b

    .line 108
    .restart local v23    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v24    # "issuerSertIndex":I
    .restart local v28    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v31    # "snum":Ljava/math/BigInteger;
    :cond_c9
    add-int/lit8 v18, v18, 0x1

    goto :goto_91

    .line 119
    :cond_cc
    aget-object v32, v6, v24

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v32

    if-eqz v32, :cond_dc

    .line 120
    new-instance v32, Ljava/lang/SecurityException;

    const-string v33, "Can not recognize a critical extension"

    invoke-direct/range {v32 .. v33}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 124
    :cond_dc
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "daOid":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithmName()Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "daName":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, "deaOid":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithmName()Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "deaName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 130
    .local v3, "alg":Ljava/lang/String;
    const/16 v27, 0x0

    .line 132
    .local v27, "sig":Ljava/security/Signature;
    if-eqz v10, :cond_137

    if-eqz v12, :cond_137

    .line 133
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "with"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    :try_start_10e
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_111
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10e .. :try_end_111} :catch_230

    move-result-object v27

    .line 140
    :goto_112
    if-nez v27, :cond_137

    if-eqz v9, :cond_137

    if-eqz v11, :cond_137

    .line 141
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "with"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    :try_start_133
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_136
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_133 .. :try_end_136} :catch_233

    move-result-object v27

    .line 149
    :cond_137
    :goto_137
    if-nez v27, :cond_149

    if-eqz v12, :cond_149

    .line 150
    move-object v3, v12

    .line 152
    :try_start_13c
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_13f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13c .. :try_end_13f} :catch_236

    move-result-object v27

    .line 156
    :goto_140
    if-nez v27, :cond_149

    if-eqz v11, :cond_149

    .line 157
    move-object v3, v11

    .line 159
    :try_start_145
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_148
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_145 .. :try_end_148} :catch_239

    move-result-object v27

    .line 166
    :cond_149
    :goto_149
    if-nez v27, :cond_14f

    .line 167
    const/16 v32, 0x0

    goto/16 :goto_2b

    .line 170
    :cond_14f
    aget-object v32, v6, v24

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 175
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    move-result-object v4

    .line 177
    .local v4, "atr":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 178
    .local v26, "sfBytes":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 180
    if-nez v4, :cond_18c

    .line 181
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 224
    :cond_176
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v32

    if-nez v32, :cond_226

    .line 225
    new-instance v32, Ljava/lang/SecurityException;

    const-string v33, "Incorrect signature"

    invoke-direct/range {v32 .. v33}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 183
    :cond_18c
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 187
    const/16 v17, 0x0

    .line 188
    .local v17, "existingDigest":[B
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_19d
    :goto_19d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1f2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 189
    .local v2, "a":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v32

    sget-object v33, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    invoke-static/range {v32 .. v33}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v32

    if-eqz v32, :cond_19d

    .line 190
    if-eqz v17, :cond_1c3

    .line 191
    new-instance v32, Ljava/lang/SecurityException;

    const-string v33, "Too many MessageDigest attributes"

    invoke-direct/range {v32 .. v33}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 193
    :cond_1c3
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getValue()Lorg/apache/harmony/security/x501/AttributeValue;

    move-result-object v32

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/harmony/security/x501/AttributeValue;->getValues(Lorg/apache/harmony/security/asn1/ASN1Type;)Ljava/util/Collection;

    move-result-object v16

    .line 194
    .local v16, "entries":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1e3

    .line 195
    new-instance v32, Ljava/lang/SecurityException;

    const-string v33, "Too many values for MessageDigest attribute"

    invoke-direct/range {v32 .. v33}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 197
    :cond_1e3
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [B

    move-object/from16 v17, v32

    check-cast v17, [B

    goto :goto_19d

    .line 203
    .end local v2    # "a":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    .end local v16    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_1f2
    if-nez v17, :cond_1fc

    .line 204
    new-instance v32, Ljava/lang/SecurityException;

    const-string v33, "Missing MessageDigest in Authenticated Attributes"

    invoke-direct/range {v32 .. v33}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 207
    :cond_1fc
    const/16 v25, 0x0

    .line 208
    .local v25, "md":Ljava/security/MessageDigest;
    if-eqz v10, :cond_204

    .line 209
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v25

    .line 211
    :cond_204
    if-nez v25, :cond_20c

    if-eqz v9, :cond_20c

    .line 212
    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v25

    .line 214
    :cond_20c
    if-nez v25, :cond_212

    .line 215
    const/16 v32, 0x0

    goto/16 :goto_2b

    .line 218
    :cond_212
    invoke-virtual/range {v25 .. v26}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 219
    .local v8, "computedDigest":[B
    move-object/from16 v0, v17

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v32

    if-nez v32, :cond_176

    .line 220
    new-instance v32, Ljava/lang/SecurityException;

    const-string v33, "Incorrect MD"

    invoke-direct/range {v32 .. v33}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 228
    .end local v8    # "computedDigest":[B
    .end local v17    # "existingDigest":[B
    .end local v25    # "md":Ljava/security/MessageDigest;
    :cond_226
    aget-object v32, v6, v24

    move-object/from16 v0, v32

    invoke-static {v0, v6}, Lorg/apache/harmony/security/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v32

    goto/16 :goto_2b

    .line 136
    .end local v4    # "atr":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .end local v26    # "sfBytes":[B
    :catch_230
    move-exception v32

    goto/16 :goto_112

    .line 144
    :catch_233
    move-exception v32

    goto/16 :goto_137

    .line 153
    :catch_236
    move-exception v32

    goto/16 :goto_140

    .line 160
    :catch_239
    move-exception v32

    goto/16 :goto_149
.end method
