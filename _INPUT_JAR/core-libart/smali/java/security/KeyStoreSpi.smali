.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C
    .registers 10
    .param p0, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    .line 502
    if-nez p0, :cond_4

    .line 503
    const/4 v5, 0x0

    .line 521
    :goto_3
    return-object v5

    .line 506
    :cond_4
    instance-of v5, p0, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v5, :cond_10

    .line 507
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    const-string v6, "Incorrect ProtectionParameter"

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 510
    :cond_10
    const-string v5, "auth.login.defaultCallbackHandler"

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "clName":Ljava/lang/String;
    if-nez v2, :cond_20

    .line 512
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    const-string v6, "Default CallbackHandler was not defined"

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 517
    :cond_20
    :try_start_20
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 518
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/callback/CallbackHandler;

    .line 519
    .local v0, "cbHand":Ljavax/security/auth/callback/CallbackHandler;
    const/4 v5, 0x1

    new-array v4, v5, [Ljavax/security/auth/callback/PasswordCallback;

    const/4 v5, 0x0

    new-instance v6, Ljavax/security/auth/callback/PasswordCallback;

    const-string v7, "password: "

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    aput-object v6, v4, v5

    .line 520
    .local v4, "pwCb":[Ljavax/security/auth/callback/PasswordCallback;
    invoke-interface {v0, v4}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 521
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_43

    move-result-object v5

    goto :goto_3

    .line 522
    .end local v0    # "cbHand":Ljavax/security/auth/callback/CallbackHandler;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "pwCb":[Ljavax/security/auth/callback/PasswordCallback;
    :catch_43
    move-exception v3

    .line 523
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public abstract engineAliases()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract engineContainsAlias(Ljava/lang/String;)Z
.end method

.method public abstract engineDeleteEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 491
    :cond_8
    :goto_8
    return v1

    .line 472
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 473
    const-string v0, "java.security.KeyStore$TrustedCertificateEntry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_8

    .line 478
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 479
    const-string v2, "java.security.KeyStore$PrivateKeyEntry"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 481
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_34

    :goto_32
    move v1, v0

    goto :goto_8

    :cond_34
    move v0, v1

    goto :goto_32

    .line 484
    :cond_36
    const-string v2, "java.security.KeyStore$SecretKeyEntry"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 486
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_45} :catch_4c

    move-result-object v2

    if-nez v2, :cond_4a

    :goto_48
    move v1, v0

    goto :goto_8

    :cond_4a
    move v0, v1

    goto :goto_48

    .line 489
    :catch_4c
    move-exception v0

    goto :goto_8
.end method

.method public abstract engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
.end method

.method public abstract engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 349
    const/4 v3, 0x0

    .line 378
    .end local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :goto_7
    return-object v3

    .line 351
    .restart local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_8
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 352
    new-instance v3, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    goto :goto_7

    .line 355
    :cond_18
    const/4 v2, 0x0

    .line 356
    .local v2, "passW":[C
    if-eqz p2, :cond_25

    .line 357
    instance-of v3, p2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_48

    .line 359
    :try_start_1f
    check-cast p2, Ljava/security/KeyStore$PasswordProtection;

    .end local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {p2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_24} :catch_3f

    move-result-object v2

    .line 371
    :cond_25
    :goto_25
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 372
    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 373
    .local v1, "key":Ljava/security/Key;
    instance-of v3, v1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_6a

    .line 374
    new-instance v3, Ljava/security/KeyStore$PrivateKeyEntry;

    check-cast v1, Ljava/security/PrivateKey;

    .end local v1    # "key":Ljava/security/Key;
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    goto :goto_7

    .line 361
    :catch_3f
    move-exception v0

    .line 362
    .local v0, "ee":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "Password was destroyed"

    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 364
    .end local v0    # "ee":Ljava/lang/IllegalStateException;
    .restart local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_48
    instance-of v3, p2, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v3, :cond_51

    .line 365
    invoke-static {p2}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v2

    goto :goto_25

    .line 367
    :cond_51
    new-instance v3, Ljava/security/UnrecoverableEntryException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProtectionParameter object is not PasswordProtection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    .end local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    .restart local v1    # "key":Ljava/security/Key;
    :cond_6a
    instance-of v3, v1, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_76

    .line 378
    new-instance v3, Ljava/security/KeyStore$SecretKeyEntry;

    check-cast v1, Ljavax/crypto/SecretKey;

    .end local v1    # "key":Ljava/security/Key;
    invoke-direct {v3, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    goto :goto_7

    .line 381
    :cond_76
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "Unknown KeyStore.Entry object"

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract engineIsCertificateEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineIsKeyEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineLoad(Ljava/io/InputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 7
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 299
    if-nez p1, :cond_7

    .line 300
    invoke-virtual {p0, v3, v3}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 318
    :goto_6
    return-void

    .line 304
    :cond_7
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 305
    .local v1, "pp":Ljava/security/KeyStore$ProtectionParameter;
    instance-of v3, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_21

    .line 307
    :try_start_f
    check-cast v1, Ljava/security/KeyStore$PasswordProtection;

    .end local v1    # "pp":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 308
    .local v2, "pwd":[C
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_6

    .line 310
    .end local v2    # "pwd":[C
    :catch_1a
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 314
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "pp":Ljava/security/KeyStore$ProtectionParameter;
    :cond_21
    instance-of v3, v1, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v3, :cond_35

    .line 316
    :try_start_25
    invoke-static {v1}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v2

    .line 317
    .restart local v2    # "pwd":[C
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V
    :try_end_2d
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_25 .. :try_end_2d} :catch_2e

    goto :goto_6

    .line 319
    .end local v2    # "pwd":[C
    :catch_2e
    move-exception v0

    .line 320
    .local v0, "e":Ljava/security/UnrecoverableEntryException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 323
    .end local v0    # "e":Ljava/security/UnrecoverableEntryException;
    :cond_35
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 402
    if-nez p2, :cond_a

    .line 403
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "entry == null"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 406
    :cond_a
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 407
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 410
    :cond_13
    instance-of v6, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v6, :cond_22

    move-object v5, p2

    .line 411
    check-cast v5, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 412
    .local v5, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v5}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 447
    .end local v5    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    .end local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :goto_21
    return-void

    .line 416
    .restart local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_22
    const/4 v2, 0x0

    .line 417
    .local v2, "passW":[C
    if-eqz p3, :cond_2f

    .line 418
    instance-of v6, p3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v6, :cond_4b

    .line 420
    :try_start_29
    check-cast p3, Ljava/security/KeyStore$PasswordProtection;

    .end local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {p3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2e} :catch_42

    move-result-object v2

    .line 436
    :cond_2f
    :goto_2f
    instance-of v6, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v6, :cond_63

    move-object v3, p2

    .line 437
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 438
    .local v3, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v2, v7}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    goto :goto_21

    .line 421
    .end local v3    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_42
    move-exception v1

    .line 422
    .local v1, "ee":Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "Password was destroyed"

    invoke-direct {v6, v7, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 424
    .end local v1    # "ee":Ljava/lang/IllegalStateException;
    .restart local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_4b
    instance-of v6, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v6, :cond_5b

    .line 426
    :try_start_4f
    invoke-static {p3}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_54

    move-result-object v2

    goto :goto_2f

    .line 427
    :catch_54
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/KeyStoreException;

    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5b
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "protParam should be PasswordProtection or CallbackHandlerProtection"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 443
    .end local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_63
    instance-of v6, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v6, :cond_73

    move-object v4, p2

    .line 444
    check-cast v4, Ljava/security/KeyStore$SecretKeyEntry;

    .line 445
    .local v4, "skE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v4}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v2, v7}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    goto :goto_21

    .line 450
    .end local v4    # "skE":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_73
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry object is neither PrivateKeyObject nor SecretKeyEntry nor TrustedCertificateEntry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSize()I
.end method

.method public abstract engineStore(Ljava/io/OutputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
