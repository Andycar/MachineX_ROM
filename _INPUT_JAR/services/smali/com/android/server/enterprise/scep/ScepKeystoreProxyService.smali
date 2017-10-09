.class public Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.super Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyStoreErrors;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SCEPKeystoreProxyService"


# instance fields
.field private UidoftheCert:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scepuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 506
    if-nez p0, :cond_b

    .line 507
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "context == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 509
    :cond_b
    invoke-static {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 510
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 512
    .local v6, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 536
    .local v5, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-class v8, Landroid/security/IKeyChainService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 538
    .local v2, "comp":Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 540
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_4f

    .line 541
    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyChainConnection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_4f
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 544
    .local v7, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 545
    .local v0, "backupUID":J
    invoke-virtual {p0, v3, v5, v11, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    .line 546
    .local v4, "isBound":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    if-nez v4, :cond_6d

    .line 548
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 550
    :cond_6d
    new-instance v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v5, v8, v10}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;)V

    return-object v9
.end method

.method private broadcastStorageChange()V
    .registers 3

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method private checkCEPCaller()Z
    .registers 4

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "actualForSCEP":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 451
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_16

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 452
    const/4 v2, 0x1

    .line 454
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private checkCaller()Ljava/lang/String;
    .registers 4

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "actualPackage":Ljava/lang/String;
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 554
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 555
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 556
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_14
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .registers 10
    .param p1, "keyData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 561
    :try_start_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 562
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 563
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    if-nez v4, :cond_16

    .line 575
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_15
    :goto_15
    return v5

    .line 565
    .restart local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_16
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "algId":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 568
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 571
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result v5

    goto :goto_15

    .line 572
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_2f
    move-exception v3

    .line 573
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    const-string v6, "System Service"

    const-string v7, "Failed to parse key data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 463
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 464
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public deletecertificateEntry(Ljava/lang/String;Z)I
    .registers 13
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "UidoftheCert":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 233
    .local v5, "processId":I
    const/4 v1, 0x0

    .line 235
    .local v1, "UidoftheCertSystem":I
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v7

    if-nez v7, :cond_e

    .line 314
    :cond_d
    :goto_d
    return v6

    .line 240
    :cond_e
    :try_start_e
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_2e

    .line 241
    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2e
    if-nez p2, :cond_d4

    .line 244
    const/4 v0, -0x1

    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 246
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x3e8

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 252
    :goto_47
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_63

    .line 253
    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: UidoftheCert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_63
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_7f

    .line 255
    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: processId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_7f
    const/4 v2, 0x0

    .line 259
    .local v2, "bDeleted":Z
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 260
    .local v4, "mAndroid":Landroid/security/KeyStore;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v0, v5}, Landroid/security/KeyStore;->deleteAsUser(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_de

    .line 262
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_d

    .line 263
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete user cert: failure"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_c1} :catch_c3

    goto/16 :goto_d

    .line 309
    .end local v2    # "bDeleted":Z
    .end local v4    # "mAndroid":Landroid/security/KeyStore;
    :catch_c3
    move-exception v3

    .line 311
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_d

    .line 313
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry return exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 248
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d4
    const/16 v0, 0x3f2

    .line 249
    :try_start_d6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 250
    const/16 v1, 0x3f2

    goto/16 :goto_47

    .line 266
    .restart local v2    # "bDeleted":Z
    .restart local v4    # "mAndroid":Landroid/security/KeyStore;
    :cond_de
    const/4 v2, 0x1

    .line 267
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_ea

    .line 268
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete user cert: success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_ea
    :goto_ea
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_192

    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v0, v5}, Landroid/security/KeyStore;->deleteAsUser(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_147

    .line 277
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_d

    .line 278
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete CA Cert: failure"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 271
    :cond_129
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_ea

    .line 272
    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "not exist : USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    .line 281
    :cond_147
    const/4 v2, 0x1

    .line 282
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_153

    .line 283
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delete CA cert: success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_153
    :goto_153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1c1

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v0, v5}, Landroid/security/KeyStore;->delKeyAsUser(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_1b0

    .line 292
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_d

    .line 293
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delKeyAsUser: failure"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 286
    :cond_192
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_153

    .line 287
    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "not exist : CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    .line 296
    :cond_1b0
    const/4 v2, 0x1

    .line 297
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_1bc

    .line 298
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "deleteCertificateEntry delKeyAsUser: success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1bc
    :goto_1bc
    if-ne v6, v2, :cond_d

    .line 306
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 301
    :cond_1c1
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_1bc

    .line 302
    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "not exist : USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_1de} :catch_c3

    goto :goto_1bc
.end method

.method public getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;
    .registers 14
    .param p1, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v8

    if-nez v8, :cond_9

    move-object v6, v9

    .line 89
    :cond_8
    :goto_8
    return-object v6

    .line 62
    :cond_9
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 64
    .local v4, "mAndroid":Landroid/security/KeyStore;
    new-instance v6, Lcom/samsung/android/cepproxyks/CertificateAKS;

    invoke-direct {v6}, Lcom/samsung/android/cepproxyks/CertificateAKS;-><init>()V

    .line 65
    .local v6, "mCertObj":Lcom/samsung/android/cepproxyks/CertificateAKS;
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_32

    .line 66
    const-string v8, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_32
    :try_start_32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v10, 0x3e8

    invoke-static {v8, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 69
    .local v0, "UidoftheCertSystem":I
    const/16 v1, 0x3f2

    .line 70
    .local v1, "UidoftheCertWifi":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 71
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v10, 0x3e8

    invoke-static {v8, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->UidoftheCert:I

    .line 75
    :cond_6b
    :goto_6b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->UidoftheCert:I

    invoke-virtual {v4, v8, v10}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v7

    .line 76
    .local v7, "mWificert":[B
    if-nez v7, :cond_ad

    move-object v6, v9

    .line 77
    goto :goto_8

    .line 72
    .end local v7    # "mWificert":[B
    :cond_88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 73
    const/16 v8, 0x3f2

    iput v8, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->UidoftheCert:I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_a5} :catch_a6

    goto :goto_6b

    .line 85
    .end local v0    # "UidoftheCertSystem":I
    .end local v1    # "UidoftheCertWifi":I
    :catch_a6
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v9

    .line 89
    goto/16 :goto_8

    .line 78
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "UidoftheCertSystem":I
    .restart local v1    # "UidoftheCertWifi":I
    .restart local v7    # "mWificert":[B
    :cond_ad
    :try_start_ad
    invoke-static {v7}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v5

    .line 79
    .local v5, "mCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 80
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/security/cert/Certificate;

    .line 81
    .local v2, "cert":[Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v2, v10

    .line 82
    iput-object v2, v6, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c8} :catch_a6

    goto/16 :goto_8
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 5
    .param p1, "uidscep"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_7

    .line 418
    :cond_6
    :goto_6
    return-void

    .line 394
    :cond_7
    if-eqz p2, :cond_6

    const-string v0, ""

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    .line 398
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method public installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I
    .registers 10
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v7

    if-nez v7, :cond_9

    .line 383
    :cond_8
    :goto_8
    return v6

    .line 367
    :cond_9
    if-eqz p1, :cond_8

    .line 370
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 371
    .local v5, "uidscep":I
    iget-object v7, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 373
    .local v3, "keyChainService":Landroid/security/IKeyChainService;
    iget-object v4, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    .line 374
    .local v4, "mCertArray":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    array-length v7, v4

    if-ge v1, v7, :cond_2b

    .line 375
    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_32
    .catchall {:try_start_b .. :try_end_28} :catchall_3c

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 381
    :cond_2b
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 383
    :cond_30
    const/4 v6, 0x0

    goto :goto_8

    .line 376
    .end local v1    # "i":I
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v4    # "mCertArray":[Ljava/security/cert/Certificate;
    .end local v5    # "uidscep":I
    :catch_32
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    .line 381
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_8

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v6

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_42
    throw v6
.end method

.method public installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I
    .registers 13
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .param p2, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 422
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v7

    if-nez v7, :cond_9

    .line 445
    :goto_8
    return v5

    .line 426
    :cond_9
    const/4 v0, 0x0

    .line 427
    .local v0, "UidoftheCert":I
    const/16 v0, 0x3f2

    .line 428
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 430
    .local v4, "keystoreService":Landroid/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 432
    .local v2, "id":J
    if-eqz p1, :cond_3a

    .line 433
    :try_start_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v0, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_43
    .catchall {:try_start_16 .. :try_end_33} :catchall_4b

    move-result v7

    if-nez v7, :cond_3e

    .line 443
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :cond_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :cond_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v6

    .line 445
    goto :goto_8

    .line 439
    :catch_43
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4b

    .line 443
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4b
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public installCaCertificate([B)V
    .registers 8
    .param p1, "caCertificate"    # [B

    .prologue
    .line 321
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 323
    .local v3, "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :try_start_5
    monitor-enter v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_39
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_49

    .line 324
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 325
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_19

    .line 326
    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_17

    .line 327
    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "CA Certificate parse error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_17
    monitor-exit v3

    .line 353
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_18
    return-void

    .line 331
    .restart local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_19
    invoke-virtual {v3, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 335
    .local v0, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 336
    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_31

    .line 337
    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "CA Certificate successfully installed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_36

    .line 352
    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_32
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->broadcastStorageChange()V

    goto :goto_18

    .line 340
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v4
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/security/cert/CertificateException; {:try_start_38 .. :try_end_39} :catch_49

    .line 341
    :catch_39
    move-exception v2

    .line 342
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_45

    .line 343
    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "IOException while installing CA Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_45
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 346
    .end local v2    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v2

    .line 347
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-boolean v4, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_55

    .line 348
    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "CertificateException while installing CA Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_55
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_32
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I
    .registers 22
    .param p1, "certificate"    # Lcom/samsung/android/cepproxyks/CertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "installWithWIFI"    # Z
    .param p5, "scepUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v3

    if-nez v3, :cond_8

    .line 133
    const/4 v3, 0x1

    .line 223
    :goto_7
    return v3

    .line 135
    :cond_8
    if-nez p1, :cond_c

    .line 136
    const/4 v3, 0x1

    goto :goto_7

    .line 138
    :cond_c
    const-wide/16 v10, 0x0

    .line 140
    .local v10, "id":J
    :try_start_e
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v13

    .line 141
    .local v13, "mJavaKey":Ljava/security/KeyStore;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    new-array v12, v3, [B

    .line 142
    .local v12, "mCertficate":[B
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    .line 143
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 145
    .local v15, "mcert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v14

    .line 146
    .local v14, "mPriv":Ljava/security/Key;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/security/cert/Certificate;

    .line 147
    .local v8, "certchain":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aput-object v15, v8, v3

    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 150
    sget-boolean v3, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_62

    .line 151
    const-string v3, "SCEPKeystoreProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_62
    if-eqz p4, :cond_120

    .line 154
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 156
    .local v2, "keystoreService":Landroid/security/KeyStore;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_8d
    .catch Ljava/security/KeyStoreException; {:try_start_e .. :try_end_8d} :catch_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_8d} :catch_1c1
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_8d} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8d} :catch_1d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_e .. :try_end_8d} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_8d} :catch_1e9
    .catchall {:try_start_e .. :try_end_8d} :catchall_1f3

    move-result v3

    if-nez v3, :cond_96

    .line 158
    const/4 v3, 0x1

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 160
    :cond_96
    :try_start_96
    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->isHardwareBackedKey([B)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_c1
    .catch Ljava/security/KeyStoreException; {:try_start_96 .. :try_end_c1} :catch_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_96 .. :try_end_c1} :catch_1c1
    .catch Ljava/security/cert/CertificateException; {:try_start_96 .. :try_end_c1} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_c1} :catch_1d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_96 .. :try_end_c1} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_c1} :catch_1e9
    .catchall {:try_start_96 .. :try_end_c1} :catchall_1f3

    move-result v3

    if-nez v3, :cond_f2

    .line 163
    const/4 v3, 0x1

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 166
    :cond_ca
    :try_start_ca
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    const/16 v5, 0x3f2

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_e9
    .catch Ljava/security/KeyStoreException; {:try_start_ca .. :try_end_e9} :catch_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ca .. :try_end_e9} :catch_1c1
    .catch Ljava/security/cert/CertificateException; {:try_start_ca .. :try_end_e9} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_e9} :catch_1d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_ca .. :try_end_e9} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e9} :catch_1e9
    .catchall {:try_start_ca .. :try_end_e9} :catchall_1f3

    move-result v3

    if-nez v3, :cond_f2

    .line 168
    const/4 v3, 0x1

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 171
    :cond_f2
    :try_start_f2
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v3, :cond_1b1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_117
    .catch Ljava/security/KeyStoreException; {:try_start_f2 .. :try_end_117} :catch_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f2 .. :try_end_117} :catch_1c1
    .catch Ljava/security/cert/CertificateException; {:try_start_f2 .. :try_end_117} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_117} :catch_1d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_f2 .. :try_end_117} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_117} :catch_1e9
    .catchall {:try_start_f2 .. :try_end_117} :catchall_1f3

    move-result v3

    if-nez v3, :cond_1b1

    .line 174
    const/4 v3, 0x1

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 180
    .end local v2    # "keystoreService":Landroid/security/KeyStore;
    :cond_120
    :try_start_120
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 182
    .restart local v2    # "keystoreService":Landroid/security/KeyStore;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->putAsUser(Ljava/lang/String;[BIII)Z
    :try_end_14c
    .catch Ljava/security/KeyStoreException; {:try_start_120 .. :try_end_14c} :catch_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_120 .. :try_end_14c} :catch_1c1
    .catch Ljava/security/cert/CertificateException; {:try_start_120 .. :try_end_14c} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_14c} :catch_1d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_120 .. :try_end_14c} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_14c} :catch_1e9
    .catchall {:try_start_120 .. :try_end_14c} :catchall_1f3

    move-result v3

    if-nez v3, :cond_155

    .line 184
    const/4 v3, 0x1

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 186
    :cond_155
    :try_start_155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->importKeyAsUser(Ljava/lang/String;[BIII)Z
    :try_end_177
    .catch Ljava/security/KeyStoreException; {:try_start_155 .. :try_end_177} :catch_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_155 .. :try_end_177} :catch_1c1
    .catch Ljava/security/cert/CertificateException; {:try_start_155 .. :try_end_177} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_177} :catch_1d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_155 .. :try_end_177} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_177} :catch_1e9
    .catchall {:try_start_155 .. :try_end_177} :catchall_1f3

    move-result v3

    if-nez v3, :cond_180

    .line 188
    const/4 v3, 0x1

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 190
    :cond_180
    :try_start_180
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v3, :cond_1b1

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->putAsUser(Ljava/lang/String;[BIII)Z
    :try_end_1a8
    .catch Ljava/security/KeyStoreException; {:try_start_180 .. :try_end_1a8} :catch_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_180 .. :try_end_1a8} :catch_1c1
    .catch Ljava/security/cert/CertificateException; {:try_start_180 .. :try_end_1a8} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_1a8} :catch_1d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_180 .. :try_end_1a8} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1a8} :catch_1e9
    .catchall {:try_start_180 .. :try_end_1a8} :catchall_1f3

    move-result v3

    if-nez v3, :cond_1b1

    .line 193
    const/4 v3, 0x1

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 197
    :cond_1b1
    const/4 v3, 0x0

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 199
    .end local v2    # "keystoreService":Landroid/security/KeyStore;
    .end local v8    # "certchain":[Ljava/security/cert/Certificate;
    .end local v12    # "mCertficate":[B
    .end local v13    # "mJavaKey":Ljava/security/KeyStore;
    .end local v14    # "mPriv":Ljava/security/Key;
    .end local v15    # "mcert":Ljava/security/cert/X509Certificate;
    :catch_1b7
    move-exception v9

    .line 201
    .local v9, "e":Ljava/security/KeyStoreException;
    :try_start_1b8
    invoke-virtual {v9}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_1f3

    .line 202
    const/4 v3, 0x2

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 203
    .end local v9    # "e":Ljava/security/KeyStoreException;
    :catch_1c1
    move-exception v9

    .line 205
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_1c2
    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_1c5
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_1f3

    .line 206
    const/4 v3, 0x2

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 207
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1cb
    move-exception v9

    .line 209
    .local v9, "e":Ljava/security/cert/CertificateException;
    :try_start_1cc
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_1cf
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_1f3

    .line 210
    const/4 v3, 0x3

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 211
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    :catch_1d5
    move-exception v9

    .line 213
    .local v9, "e":Ljava/io/IOException;
    :try_start_1d6
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d9
    .catchall {:try_start_1d6 .. :try_end_1d9} :catchall_1f3

    .line 214
    const/4 v3, 0x4

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 215
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1df
    move-exception v9

    .line 217
    .local v9, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_1e0
    invoke-virtual {v9}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_1e3
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_1f3

    .line 218
    const/4 v3, 0x2

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 219
    .end local v9    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_1e9
    move-exception v9

    .line 220
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1ea
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ed
    .catchall {:try_start_1ea .. :try_end_1ed} :catchall_1f3

    .line 221
    const/4 v3, 0x4

    .line 223
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_1f3
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 96
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v6

    if-nez v6, :cond_9

    .line 125
    :cond_8
    :goto_8
    return v4

    .line 100
    :cond_9
    sget-boolean v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v6, :cond_29

    .line 101
    const-string v6, "SCEPKeystoreProxyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAliasExists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_29
    :try_start_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 105
    .local v0, "UidoftheCertSystem":I
    const/16 v1, 0x3f2

    .line 106
    .local v1, "UidoftheCertWifi":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 107
    .local v3, "mAndroid":Landroid/security/KeyStore;
    if-eqz p2, :cond_8d

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_8a
    move v4, v5

    .line 111
    goto/16 :goto_8

    .line 114
    :cond_8d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_d5} :catch_db

    move-result v6

    if-eqz v6, :cond_8

    :cond_d8
    move v4, v5

    .line 117
    goto/16 :goto_8

    .line 120
    .end local v0    # "UidoftheCertSystem":I
    .end local v1    # "UidoftheCertWifi":I
    .end local v3    # "mAndroid":Landroid/security/KeyStore;
    :catch_db
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8
.end method

.method setPrivateKey([B)Ljava/security/PrivateKey;
    .registers 6
    .param p1, "bytes"    # [B

    .prologue
    .line 489
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 490
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_e} :catch_17

    move-result-object v2

    .line 491
    .local v2, "mUserKey":Ljava/security/PrivateKey;
    return-object v2

    .line 492
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "mUserKey":Ljava/security/PrivateKey;
    :catch_10
    move-exception v0

    .line 493
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 494
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_17
    move-exception v0

    .line 495
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
