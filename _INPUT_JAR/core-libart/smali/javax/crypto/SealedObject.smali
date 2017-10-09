.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .registers 10
    .param p1, "object"    # Ljava/io/Serializable;
    .param p2, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-nez p2, :cond_e

    .line 101
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "c == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    :cond_e
    const/4 v3, 0x0

    .line 105
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_f
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljavax/crypto/BadPaddingException; {:try_start_f .. :try_end_19} :catch_4a
    .catchall {:try_start_f .. :try_end_19} :catchall_55

    .line 107
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_19
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 109
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 110
    .local v0, "ap":Ljava/security/AlgorithmParameters;
    if-nez v0, :cond_40

    move-object v6, v5

    :goto_26
    iput-object v6, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 111
    if-nez v0, :cond_45

    :goto_2a
    iput-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 113
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B
    :try_end_3c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_3c} :catch_5d
    .catchall {:try_start_19 .. :try_end_3c} :catchall_5a

    .line 119
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 121
    return-void

    .line 110
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v6

    goto :goto_26

    .line 111
    :cond_45
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;
    :try_end_48
    .catch Ljavax/crypto/BadPaddingException; {:try_start_40 .. :try_end_48} :catch_5d
    .catchall {:try_start_40 .. :try_end_48} :catchall_5a

    move-result-object v5

    goto :goto_2a

    .line 114
    .end local v0    # "ap":Ljava/security/AlgorithmParameters;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4a
    move-exception v2

    .line 117
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    :goto_4b
    :try_start_4b
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_55

    .line 119
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catchall_55
    move-exception v5

    :goto_56
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_5a
    move-exception v5

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_56

    .line 114
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_5d
    move-exception v2

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4b
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .registers 4
    .param p1, "so"    # Ljavax/crypto/SealedObject;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    if-nez p1, :cond_e

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "so == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_e
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    if-eqz v0, :cond_33

    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1a
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 137
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v0, :cond_35

    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_28
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 138
    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 140
    return-void

    :cond_33
    move-object v0, v1

    .line 136
    goto :goto_1a

    :cond_35
    move-object v0, v1

    .line 137
    goto :goto_28
.end method

.method private static getSafeCopy(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;)[B
    .registers 5
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, p1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 76
    .local v0, "fieldValue":[B
    if-eqz v0, :cond_13

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_12
    return-object v1

    :cond_13
    move-object v1, v2

    goto :goto_12
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 67
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "encodedParams"

    invoke-static {v0, v1}, Ljavax/crypto/SealedObject;->getSafeCopy(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 68
    const-string v1, "encryptedContent"

    invoke-static {v0, v1}, Ljavax/crypto/SealedObject;->getSafeCopy(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 69
    const-string v1, "paramsAlg"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 70
    const-string v1, "sealAlg"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private static readSerialized([B)Ljava/lang/Object;
    .registers 4
    .param p0, "serialized"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    .line 298
    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_18

    move-result-object v2

    .line 300
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "ois":Ljava/io/ObjectInputStream;
    :catchall_13
    move-exception v2

    :goto_14
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_14
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_a

    .line 170
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "key == null"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_a
    :try_start_a
    iget-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 174
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_36

    .line 175
    iget-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 176
    .local v2, "params":Ljava/security/AlgorithmParameters;
    iget-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v2, v4}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 177
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 181
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :goto_2b
    iget-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 182
    .local v3, "serialized":[B
    invoke-static {v3}, Ljavax/crypto/SealedObject;->readSerialized([B)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 179
    .end local v3    # "serialized":[B
    :cond_36
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_3a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_3a} :catch_3b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_3a} :catch_46
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_3a} :catch_51
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_3a} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_3a} :catch_67

    goto :goto_2b

    .line 183
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_3b
    move-exception v1

    .line 186
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_46
    move-exception v1

    .line 190
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_51
    move-exception v1

    .line 194
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5c
    move-exception v1

    .line 198
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_67
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 258
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "provider name empty or null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 261
    :cond_10
    :try_start_10
    iget-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 262
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v4, :cond_3c

    iget-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 263
    iget-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 264
    .local v2, "params":Ljava/security/AlgorithmParameters;
    iget-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v2, v4}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 265
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 269
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :goto_31
    iget-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 270
    .local v3, "serialized":[B
    invoke-static {v3}, Ljavax/crypto/SealedObject;->readSerialized([B)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 267
    .end local v3    # "serialized":[B
    :cond_3c
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_40
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_10 .. :try_end_40} :catch_41
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_10 .. :try_end_40} :catch_4c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_10 .. :try_end_40} :catch_57
    .catch Ljavax/crypto/BadPaddingException; {:try_start_10 .. :try_end_40} :catch_62
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_40} :catch_6d

    goto :goto_31

    .line 271
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_41
    move-exception v1

    .line 274
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4c
    move-exception v1

    .line 278
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_57
    move-exception v1

    .line 282
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_62
    move-exception v1

    .line 286
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6d
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .registers 5
    .param p1, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p1, :cond_a

    .line 227
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "c == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_a
    iget-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 230
    .local v0, "serialized":[B
    invoke-static {v0}, Ljavax/crypto/SealedObject;->readSerialized([B)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
