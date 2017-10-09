.class Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOffReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 337
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$102(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 338
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$202(Ljava/security/Key;)Ljava/security/Key;

    .line 339
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$302(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    .line 340
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_21

    .line 341
    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive: Action Screen Off (keys are cleared from memory)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_21
    :goto_21
    return-void

    .line 342
    :cond_22
    const-string v7, "android.security.STORAGE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 343
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_35

    .line 344
    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive: Action Credential Storage Changed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_35
    :try_start_35
    const-string v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 354
    .local v5, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 356
    const-string v7, "KnoxSSOKey"

    invoke-virtual {v5, v7}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 357
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 360
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 365
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400()Landroid/util/SparseArray;

    move-result-object v7

    if-eqz v7, :cond_a2

    .line 366
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5e
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_a2

    .line 367
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 368
    .local v6, "userId":I
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 374
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ssotoken.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 383
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v6    # "userId":I
    :cond_a2
    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$202(Ljava/security/Key;)Ljava/security/Key;

    .line 384
    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$302(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    .line 385
    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$102(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 386
    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$502(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    :try_end_b2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_b2} :catch_b4
    .catch Ljava/security/KeyStoreException; {:try_start_35 .. :try_end_b2} :catch_be
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_b2} :catch_c8
    .catch Ljava/security/cert/CertificateException; {:try_start_35 .. :try_end_b2} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_b2} :catch_dc

    goto/16 :goto_21

    .line 389
    .end local v4    # "keyFile":Ljava/io/File;
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    :catch_b4
    move-exception v1

    .line 390
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: NoSuchAlgorithmException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 393
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_be
    move-exception v1

    .line 394
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: KeyStoreException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 397
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_c8
    move-exception v1

    .line 398
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 401
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d2
    move-exception v1

    .line 402
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: CertificateException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 405
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_dc
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: General Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21
.end method
