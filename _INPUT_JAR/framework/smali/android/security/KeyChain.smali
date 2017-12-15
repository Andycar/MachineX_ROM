.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$KeyChainConnection;,
        Landroid/security/KeyChain$AliasResponse;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field private static final CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTRA_HOST:Ljava/lang/String; = "host"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field private static final KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"

.field private static final TAG:Ljava/lang/String; = "KeyChain"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    return-void
.end method

.method public static bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 503
    if-nez p0, :cond_b

    .line 504
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "context == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 506
    :cond_b
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 507
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 508
    .local v4, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v3, Landroid/security/KeyChain$1;

    invoke-direct {v3, v4}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 522
    .local v3, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Landroid/security/IKeyChainService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 524
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0, v1, v3, v7, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 529
    .local v2, "isBound":Z
    if-nez v2, :cond_3d

    .line 530
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "could not bind to KeyChainService"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 532
    :cond_3d
    new-instance v6, Landroid/security/KeyChain$KeyChainConnection;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/IKeyChainService;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v5, v7}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Landroid/security/KeyChain$1;)V

    return-object v6
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 295
    if-nez p0, :cond_b

    .line 296
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_b
    if-nez p1, :cond_16

    .line 299
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "response == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v1, "response"

    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 304
    const-string v1, "host"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "alias"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string/jumbo v1, "sender"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method public static createInstallIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 229
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string/jumbo v4, "senderpackagename"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packagename from createInstallIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_32} :catch_3a

    .line 236
    .end local v0    # "callingPackageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_32
    const-string v4, "com.android.certinstaller"

    const-string v5, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    return-object v1

    .line 232
    :catch_3a
    move-exception v3

    .line 233
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while extracting packagename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 537
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 538
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_14
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "certChain":[Ljava/security/cert/X509Certificate;
    if-nez p1, :cond_b

    .line 383
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 386
    :cond_b
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    .line 388
    :try_start_12
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_2b

    move-result-object v0

    .line 395
    :cond_16
    :goto_16
    if-nez v0, :cond_7f

    .line 396
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4

    .line 398
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1c
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    .line 399
    .local v5, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v5, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B
    :try_end_23
    .catch Ljava/security/cert/CertificateException; {:try_start_1c .. :try_end_23} :catch_65
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_71
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_23} :catch_78
    .catchall {:try_start_1c .. :try_end_23} :catchall_6c

    move-result-object v1

    .line 400
    .local v1, "certificateBytes":[B
    if-nez v1, :cond_48

    .line 401
    const/4 v7, 0x0

    .line 416
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 420
    .end local v1    # "certificateBytes":[B
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_2a
    return-object v7

    .line 389
    :catch_2b
    move-exception v3

    .line 390
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error retrieving certificate from CCM for alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_16

    .line 404
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "certificateBytes":[B
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_48
    :try_start_48
    new-instance v6, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 405
    .local v6, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v2

    .line 407
    .local v2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;
    :try_end_61
    .catch Ljava/security/cert/CertificateException; {:try_start_48 .. :try_end_61} :catch_65
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_61} :catch_71
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_61} :catch_78
    .catchall {:try_start_48 .. :try_end_61} :catchall_6c

    .line 416
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_2a

    .line 408
    .end local v1    # "certificateBytes":[B
    .end local v2    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v6    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_65
    move-exception v3

    .line 409
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_66
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6c

    .line 416
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catchall_6c
    move-exception v7

    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v7

    .line 410
    :catch_71
    move-exception v3

    .line 411
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_72
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 412
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_78
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_6c

    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_7f
    move-object v7, v0

    .line 420
    goto :goto_2a
.end method

.method public static getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v5, 0x0

    .line 333
    .local v5, "privateKey":Ljava/security/PrivateKey;
    if-nez p1, :cond_b

    .line 334
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "alias == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 337
    :cond_b
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_16

    .line 339
    :try_start_12
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_3a

    move-result-object v5

    .line 346
    :cond_16
    :goto_16
    if-nez v5, :cond_64

    .line 347
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2

    .line 349
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1c
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 350
    .local v3, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v3, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "keyId":Ljava/lang/String;
    if-nez v4, :cond_57

    .line 352
    new-instance v6, Landroid/security/KeyChainException;

    const-string v7, "keystore had a problem"

    invoke-direct {v6, v7}, Landroid/security/KeyChainException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2e} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2e} :catch_65
    .catch Ljava/security/InvalidKeyException; {:try_start_1c .. :try_end_2e} :catch_6c
    .catchall {:try_start_1c .. :try_end_2e} :catchall_35

    .line 357
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v4    # "keyId":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2f
    new-instance v6, Landroid/security/KeyChainException;

    invoke-direct {v6, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_35

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_35
    move-exception v6

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6

    .line 340
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3a
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "KeyChain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error retrieving key from CCM for alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_16

    .line 355
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v4    # "keyId":Ljava/lang/String;
    :cond_57
    :try_start_57
    const-string v6, "keystore"

    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 356
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    invoke-virtual {v1, v4}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_60} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_60} :catch_65
    .catch Ljava/security/InvalidKeyException; {:try_start_57 .. :try_end_60} :catch_6c
    .catchall {:try_start_57 .. :try_end_60} :catchall_35

    move-result-object v5

    .line 365
    .end local v5    # "privateKey":Ljava/security/PrivateKey;
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 368
    .end local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v4    # "keyId":Ljava/lang/String;
    :cond_64
    return-object v5

    .line 359
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "privateKey":Ljava/security/PrivateKey;
    :catch_65
    move-exception v0

    .line 361
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_66
    new-instance v6, Landroid/security/KeyChainException;

    invoke-direct {v6, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 362
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_6c
    move-exception v0

    .line 363
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Landroid/security/KeyChainException;

    invoke-direct {v6, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_35
.end method

.method public static isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "RSA"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 442
    const/4 v0, 0x1

    .line 449
    :goto_15
    return v0

    .line 445
    :cond_16
    invoke-static {p0}, Landroid/security/KeyChain;->isKeyAlgorithmSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 446
    const/4 v0, 0x0

    goto :goto_15

    .line 449
    :cond_1e
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_15
.end method

.method public static isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "algUpper":Ljava/lang/String;
    const-string v1, "DSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 454
    if-nez p0, :cond_a

    .line 455
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bytes == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_a
    :try_start_a
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 459
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 460
    .local v0, "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_1b} :catch_1c

    .end local v0    # "cert":Ljava/security/cert/Certificate;
    return-object v0

    .line 461
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_1c
    move-exception v2

    .line 462
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
