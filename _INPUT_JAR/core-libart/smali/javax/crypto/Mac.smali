.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "Mac"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final initLock:Ljava/lang/Object;

.field private isInitMac:Z

.field private provider:Ljava/security/Provider;

.field private final specifiedProvider:Ljava/security/Provider;

.field private spiImpl:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Mac"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "macSpi"    # Ljavax/crypto/MacSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Mac;->initLock:Ljava/lang/Object;

    .line 77
    iput-object p2, p0, Ljavax/crypto/Mac;->specifiedProvider:Ljava/security/Provider;

    .line 78
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 81
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 143
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_10
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 146
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_1c

    .line 147
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1c
    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_a

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_a
    invoke-static {p0, p1}, Ljavax/crypto/Mac;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method private static getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p0, :cond_b

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_b
    invoke-static {v1, p1, p0}, Ljavax/crypto/Mac;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    if-nez v0, :cond_53

    .line 186
    if-nez p1, :cond_2c

    .line 187
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No provider found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2c
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not provide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_53
    new-instance v0, Ljavax/crypto/Mac;

    invoke-direct {v0, v1, p1, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSpi()Ljavax/crypto/MacSpi;
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/crypto/Mac;->getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;

    move-result-object v0

    return-object v0
.end method

.method private getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;
    .registers 7
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 240
    iget-object v2, p0, Ljavax/crypto/Mac;->initLock:Ljava/lang/Object;

    monitor-enter v2

    .line 241
    :try_start_3
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_11

    iget-object v1, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    if-eqz v1, :cond_11

    if-nez p1, :cond_11

    .line 242
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    monitor-exit v2

    .line 263
    :goto_10
    return-object v1

    .line 245
    :cond_11
    iget-object v1, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 246
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_10

    .line 264
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1

    .line 249
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Ljavax/crypto/Mac;->specifiedProvider:Ljava/security/Provider;

    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Ljavax/crypto/Mac;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 250
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v0, :cond_42

    .line 251
    new-instance v1, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_42
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    if-eqz v1, :cond_50

    .line 259
    :cond_4a
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iput-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    .line 261
    :cond_50
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    iput-object v1, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 263
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_18

    goto :goto_10
.end method

.method private static tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .registers 9
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 197
    if-eqz p1, :cond_12

    .line 198
    const-string v5, "Mac"

    invoke-virtual {p1, v5, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 199
    .local v2, "service":Ljava/security/Provider$Service;
    if-nez v2, :cond_d

    move-object v1, v4

    .line 214
    .end local v2    # "service":Ljava/security/Provider$Service;
    :goto_c
    return-object v1

    .line 202
    .restart local v2    # "service":Ljava/security/Provider$Service;
    :cond_d
    invoke-static {p0, v2}, Ljavax/crypto/Mac;->tryAlgorithmWithProvider(Ljava/security/Key;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    goto :goto_c

    .line 204
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_12
    sget-object v5, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v5, p2}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 205
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-nez v3, :cond_1c

    move-object v1, v4

    .line 206
    goto :goto_c

    .line 208
    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 209
    .restart local v2    # "service":Ljava/security/Provider$Service;
    invoke-static {p0, v2}, Ljavax/crypto/Mac;->tryAlgorithmWithProvider(Ljava/security/Key;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    .line 210
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-eqz v1, :cond_20

    goto :goto_c

    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_33
    move-object v1, v4

    .line 214
    goto :goto_c
.end method

.method private static tryAlgorithmWithProvider(Ljava/security/Key;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .registers 6
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "service"    # Ljava/security/Provider$Service;

    .prologue
    const/4 v1, 0x0

    .line 219
    if-eqz p0, :cond_b

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object v0, v1

    .line 233
    :cond_a
    :goto_a
    return-object v0

    .line 223
    :cond_b
    sget-object v2, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 224
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v2, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    if-nez v2, :cond_1c

    :cond_1a
    move-object v0, v1

    .line 225
    goto :goto_a

    .line 227
    :cond_1c
    iget-object v2, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    instance-of v2, v2, Ljavax/crypto/MacSpi;
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_20} :catch_24

    if-nez v2, :cond_a

    move-object v0, v1

    .line 228
    goto :goto_a

    .line 231
    .end local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_24
    move-exception v2

    move-object v0, v1

    .line 233
    goto :goto_a
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, "newSpiImpl":Ljavax/crypto/MacSpi;
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v2

    .line 524
    .local v2, "spi":Ljavax/crypto/MacSpi;
    if-eqz v2, :cond_d

    .line 525
    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newSpiImpl":Ljavax/crypto/MacSpi;
    check-cast v1, Ljavax/crypto/MacSpi;

    .line 527
    .restart local v1    # "newSpiImpl":Ljavax/crypto/MacSpi;
    :cond_d
    new-instance v0, Ljavax/crypto/Mac;

    iget-object v3, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    iget-object v4, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 528
    .local v0, "mac":Ljavax/crypto/Mac;
    iget-boolean v3, p0, Ljavax/crypto/Mac;->isInitMac:Z

    iput-boolean v3, v0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 529
    return-object v0
.end method

.method public final doFinal([BI)V
    .registers 9
    .param p1, "output"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 457
    iget-boolean v3, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v3, :cond_a

    .line 458
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 460
    :cond_a
    if-nez p1, :cond_14

    .line 461
    new-instance v3, Ljavax/crypto/ShortBufferException;

    const-string v4, "output == null"

    invoke-direct {v3, v4}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    :cond_14
    if-ltz p2, :cond_19

    array-length v3, p1

    if-lt p2, v3, :cond_32

    .line 464
    :cond_19
    new-instance v3, Ljavax/crypto/ShortBufferException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect outOffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 466
    :cond_32
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v1

    .line 467
    .local v1, "spi":Ljavax/crypto/MacSpi;
    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v2

    .line 468
    .local v2, "t":I
    array-length v3, p1

    sub-int/2addr v3, p2

    if-le v2, v3, :cond_5d

    .line 469
    new-instance v3, Ljavax/crypto/ShortBufferException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output buffer is short. Needed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 471
    :cond_5d
    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    .line 472
    .local v0, "result":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 474
    return-void
.end method

.method public final doFinal()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 428
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 431
    :cond_a
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 492
    iget-boolean v1, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v1, :cond_a

    .line 493
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 495
    :cond_a
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    .line 496
    .local v0, "spi":Ljavax/crypto/MacSpi;
    if-eqz p1, :cond_15

    .line 497
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 499
    :cond_15
    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v1

    return-object v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getMacLength()I
    .registers 2

    .prologue
    .line 280
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    .line 99
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 320
    if-nez p1, :cond_a

    .line 321
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_a
    :try_start_a
    invoke-direct {p0, p1}, Ljavax/crypto/Mac;->getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/Mac;->isInitMac:Z
    :try_end_15
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_15} :catch_16

    .line 329
    return-void

    .line 326
    :catch_16
    move-exception v0

    .line 327
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_a

    .line 301
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_a
    invoke-direct {p0, p1}, Ljavax/crypto/Mac;->getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 305
    return-void
.end method

.method public final reset()V
    .registers 2

    .prologue
    .line 510
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 511
    return-void
.end method

.method public final update(B)V
    .registers 3
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 340
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 343
    :cond_a
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    .line 344
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 405
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 408
    :cond_a
    if-eqz p1, :cond_14

    .line 409
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 413
    return-void

    .line 411
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update([B)V
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 386
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 389
    :cond_a
    if-eqz p1, :cond_15

    .line 390
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 392
    :cond_15
    return-void
.end method

.method public final update([BII)V
    .registers 7
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 363
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 366
    :cond_a
    if-nez p1, :cond_d

    .line 375
    :goto_c
    return-void

    .line 369
    :cond_d
    if-ltz p2, :cond_16

    if-ltz p3, :cond_16

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_44

    .line 370
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect arguments. input.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_44
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    goto :goto_c
.end method
