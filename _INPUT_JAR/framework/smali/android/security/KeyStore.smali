.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private lMdmService:Landroid/sec/enterprise/IEDMProxy;

.field private final mBinder:Landroid/security/IKeystoreService;

.field private mError:I


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .registers 3
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 82
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 85
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    .line 88
    return-void
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .registers 6

    .prologue
    .line 91
    const-string v3, "android.security.keystore"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v2

    .line 94
    .local v2, "keystore":Landroid/security/IKeystoreService;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    const/16 v3, 0xa

    if-ge v1, v3, :cond_11

    .line 95
    if-eqz v2, :cond_15

    .line 106
    :cond_11
    if-nez v2, :cond_33

    .line 107
    const/4 v3, 0x0

    .line 109
    :goto_14
    return-object v3

    .line 97
    :cond_15
    const-wide/16 v4, 0x64

    :try_start_17
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_2e

    .line 101
    :goto_1a
    const-string v3, "android.security.keystore"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v2

    .line 103
    const-string v3, "KeyStore"

    const-string v4, "fail getService(android.security.keystore)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 98
    :catch_2e
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1a

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_33
    new-instance v3, Landroid/security/KeyStore;

    invoke-direct {v3, v2}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    goto :goto_14
.end method

.method static getKeyTypeForAlgorithm(Ljava/lang/String;)I
    .registers 4
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 114
    const/4 v0, 0x6

    .line 118
    :goto_9
    return v0

    .line 115
    :cond_a
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 116
    const/16 v0, 0x74

    goto :goto_9

    .line 117
    :cond_15
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 118
    const/16 v0, 0x198

    goto :goto_9

    .line 120
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemUidAsUser(I)I
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 692
    const v0, 0x186a0

    mul-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private refreshRollbackUserKeystore(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 682
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_9

    .line 684
    :try_start_4
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyUserKeystoreUnlocked(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 689
    :cond_9
    :goto_9
    return-void

    .line 685
    :catch_a
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 542
    const/4 v2, 0x0

    .line 544
    .local v2, "result":Z
    :try_start_2
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->check_password(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_17

    move-result v4

    if-ne v4, v3, :cond_c

    move v2, v3

    .line 550
    :goto_b
    return v2

    .line 544
    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 545
    :catch_e
    move-exception v1

    .line 546
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 547
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 548
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "KeyStore"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public clearUid(I)Z
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Landroid/security/IKeystoreService;->clear_uid(J)I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_8} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_18

    move-result v3

    if-ne v3, v1, :cond_d

    :goto_b
    move v2, v1

    .line 492
    :goto_c
    return v2

    :cond_d
    move v1, v2

    .line 486
    goto :goto_b

    .line 487
    :catch_f
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 490
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 275
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 272
    goto :goto_a

    .line 273
    :catch_d
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 275
    goto :goto_a
.end method

.method public delKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delKey(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del_key(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 396
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 393
    goto :goto_a

    .line 394
    :catch_d
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 396
    goto :goto_a
.end method

.method public delKeyAsUser(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p3}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v4

    invoke-interface {v3, p1, p2, v4}, Landroid/security/IKeystoreService;->del_key_as_user(Ljava/lang/String;II)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_11

    move-result v3

    if-ne v3, v1, :cond_f

    .line 252
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 249
    goto :goto_e

    .line 250
    :catch_11
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 252
    goto :goto_e
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 262
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 259
    goto :goto_a

    .line 260
    :catch_d
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 262
    goto :goto_a
.end method

.method public deleteAsUser(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p3}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v4

    invoke-interface {v3, p1, p2, v4}, Landroid/security/IKeystoreService;->del_as_user(Ljava/lang/String;II)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_11

    move-result v3

    if-ne v3, v1, :cond_f

    .line 217
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 214
    goto :goto_e

    .line 215
    :catch_11
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 217
    goto :goto_e
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 9
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 463
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 460
    goto :goto_a

    .line 461
    :catch_d
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 463
    goto :goto_a
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIII[[B)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_13

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    .line 369
    :goto_10
    return v0

    .line 366
    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    .line 367
    :catch_13
    move-exception v7

    .line 368
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public get(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 153
    :goto_6
    return-object v1

    .line 151
    :catch_7
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getByUid(Ljava/lang/String;I)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get_by_uid(Ljava/lang/String;I)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 181
    :goto_6
    return-object v1

    .line 179
    :catch_7
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 537
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getPubkey(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get_pubkey(Ljava/lang/String;)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 387
    :goto_6
    return-object v1

    .line 385
    :catch_7
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getmtime(Ljava/lang/String;)J
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 446
    :try_start_2
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;)J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_11

    move-result-wide v2

    .line 447
    .local v2, "millis":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    .line 454
    .end local v2    # "millis":J
    :goto_c
    return-wide v4

    .line 451
    .restart local v2    # "millis":J
    :cond_d
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    goto :goto_c

    .line 452
    .end local v2    # "millis":J
    :catch_11
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v6, "Cannot connect to keystore"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public grant(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 427
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 424
    goto :goto_a

    .line 425
    :catch_d
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 427
    goto :goto_a
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .registers 9
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 378
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 375
    goto :goto_a

    .line 376
    :catch_d
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 378
    goto :goto_a
.end method

.method public importKeyAsUser(Ljava/lang/String;[BIII)Z
    .registers 15
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "targetUid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 205
    :try_start_2
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p5}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->import_key_as_user(Ljava/lang/String;[BIII)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_16

    move-result v0

    if-ne v0, v7, :cond_14

    move v0, v7

    .line 208
    :goto_13
    return v0

    :cond_14
    move v0, v8

    .line 205
    goto :goto_13

    .line 206
    :catch_16
    move-exception v6

    .line 207
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    .line 208
    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 353
    :try_start_1
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2}, Landroid/security/IKeystoreService;->zero()I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_15

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    const/4 v1, 0x1

    .line 359
    :cond_b
    :goto_b
    return v1

    .line 354
    :catch_c
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 357
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public isEmpty(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 651
    const/4 v2, 0x0

    .line 653
    .local v2, "result":Z
    :try_start_1
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->zero(I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_17

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_c

    const/4 v2, 0x1

    .line 659
    :goto_b
    return v2

    .line 653
    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 654
    :catch_e
    move-exception v1

    .line 655
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 656
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 657
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "KeyStore"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public isHardwareBacked()Z
    .registers 2

    .prologue
    .line 469
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_d} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_1d

    move-result v3

    if-ne v3, v1, :cond_12

    :goto_10
    move v2, v1

    .line 480
    :goto_11
    return v2

    :cond_12
    move v1, v2

    .line 474
    goto :goto_10

    .line 475
    :catch_14
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 478
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public isUnlocked()Z
    .registers 3

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public lock()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->lock()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 329
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 326
    goto :goto_a

    .line 327
    :catch_d
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 329
    goto :goto_a
.end method

.method public lock(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 586
    const/4 v2, 0x0

    .line 588
    .local v2, "result":Z
    :try_start_2
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_17

    move-result v4

    if-ne v4, v3, :cond_c

    move v2, v3

    .line 594
    :goto_b
    return v2

    .line 588
    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 589
    :catch_e
    move-exception v1

    .line 590
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 591
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 592
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "KeyStore"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public password(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 320
    :cond_9
    :goto_9
    return v1

    .line 309
    :cond_a
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2a

    .line 312
    .local v1, "ret":Z
    :goto_12
    if-eqz v1, :cond_9

    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_9

    .line 318
    .end local v1    # "ret":Z
    :catch_20
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 320
    goto :goto_9

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    move v1, v2

    .line 309
    goto :goto_12
.end method

.method public password(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 565
    const/4 v2, 0x0

    .line 567
    .local v2, "result":Z
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 582
    :cond_9
    :goto_9
    return v4

    .line 569
    :cond_a
    iget-object v5, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v5, p1, p2}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_29

    .line 572
    .local v3, "ret":Z
    :goto_12
    if-eqz v3, :cond_9

    .line 573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1f} :catch_2b

    goto :goto_9

    .line 577
    .end local v3    # "ret":Z
    :catch_20
    move-exception v1

    .line 578
    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "KeyStore"

    const-string v6, "Wrong KeyStore detected!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_29
    move v3, v4

    .line 569
    goto :goto_12

    .line 579
    :catch_2b
    move-exception v0

    .line 580
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v5, "KeyStore"

    const-string v6, "KeyStore service is absent!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public passwordUid(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 532
    :cond_9
    :goto_9
    return v1

    .line 520
    :cond_a
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->password_uid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 521
    iget v3, p0, Landroid/security/KeyStore;->mError:I

    if-ne v3, v1, :cond_2e

    .line 524
    .local v1, "ret":Z
    :goto_16
    if-eqz v1, :cond_9

    .line 525
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_9

    .line 530
    .end local v1    # "ret":Z
    :catch_24
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 532
    goto :goto_9

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2e
    move v1, v2

    .line 521
    goto :goto_16
.end method

.method public put(Ljava/lang/String;[BII)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    :try_start_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v3

    if-nez v3, :cond_19

    .line 162
    const-string v1, "KeyStore"

    const-string v3, "Put not allowed. Untrusted certificate."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_18
    return v2

    .line 168
    :cond_19
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1e} :catch_25

    move-result v3

    if-ne v3, v1, :cond_23

    :goto_21
    move v2, v1

    goto :goto_18

    :cond_23
    move v1, v2

    goto :goto_21

    .line 169
    :catch_25
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public putAsUser(Ljava/lang/String;[BIII)Z
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "targetUid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 189
    :try_start_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v0

    if-nez v0, :cond_19

    .line 190
    const-string v0, "KeyStore"

    const-string v1, "Put not allowed. Untrusted certificate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_18
    return v8

    .line 196
    :cond_19
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p5}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->insert_as_user(Ljava/lang/String;[BIII)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_2e

    move-result v0

    if-ne v0, v7, :cond_2c

    move v0, v7

    :goto_2a
    move v8, v0

    goto :goto_18

    :cond_2c
    move v0, v8

    goto :goto_2a

    .line 197
    :catch_2e
    move-exception v6

    .line 198
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public reset()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->reset()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 301
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 298
    goto :goto_a

    .line 299
    :catch_d
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 301
    goto :goto_a
.end method

.method public reset(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 639
    const/4 v2, 0x0

    .line 641
    .local v2, "result":Z
    :try_start_2
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_17

    move-result v4

    if-ne v4, v3, :cond_c

    move v2, v3

    .line 647
    :goto_b
    return v2

    .line 641
    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 642
    :catch_e
    move-exception v1

    .line 643
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 644
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 645
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "KeyStore"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public resetAsUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p1}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->reset_as_user(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_11

    move-result v3

    if-ne v3, v1, :cond_f

    .line 243
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 240
    goto :goto_e

    .line 241
    :catch_11
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 243
    goto :goto_e
.end method

.method public resetHard(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 663
    const/4 v2, 0x0

    .line 665
    .local v2, "result":Z
    :try_start_2
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset_hard(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_17

    move-result v4

    if-ne v4, v3, :cond_c

    move v2, v3

    .line 671
    :goto_b
    return v2

    .line 665
    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 666
    :catch_e
    move-exception v1

    .line 667
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 668
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 669
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public resetUid(I)Z
    .registers 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 498
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->reset_uid(I)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 499
    iget v3, p0, Landroid/security/KeyStore;->mError:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_11

    if-ne v3, v1, :cond_f

    .line 502
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 499
    goto :goto_e

    .line 500
    :catch_11
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 502
    goto :goto_e
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->saw(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 288
    :goto_6
    return-object v1

    .line 286
    :catch_7
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMaxRetryCount(I)Z
    .registers 7
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 553
    const/4 v2, 0x0

    .line 555
    .local v2, "result":Z
    :try_start_2
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->set_max_retry_count(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_17

    move-result v4

    if-ne v4, v3, :cond_c

    move v2, v3

    .line 561
    :goto_b
    return v2

    .line 555
    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 556
    :catch_e
    move-exception v1

    .line 557
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 558
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 559
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "KeyStore"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public sign(Ljava/lang/String;[B)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 409
    :goto_6
    return-object v1

    .line 407
    :catch_7
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public state()Landroid/security/KeyStore$State;
    .registers 5

    .prologue
    .line 127
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2}, Landroid/security/IKeystoreService;->test()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_1f

    move-result v1

    .line 136
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_36

    .line 140
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 128
    .end local v1    # "ret":I
    :catch_11
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KeyStore"

    const-string v3, "KeyStore service is absent!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 131
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1f
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_2d
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 139
    :goto_2f
    return-object v2

    .line 138
    :pswitch_30
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_2f

    .line 139
    :pswitch_33
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_2f

    .line 136
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 620
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->test(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_f

    move-result v1

    .line 626
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_26

    .line 630
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 621
    .end local v1    # "ret":I
    :catch_f
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 627
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_1d
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 629
    :goto_1f
    return-object v2

    .line 628
    :pswitch_20
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_1f

    .line 629
    :pswitch_23
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_1f

    .line 626
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public stateAsUser(I)Landroid/security/KeyStore$State;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 224
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p1}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/security/IKeystoreService;->test_as_user(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v1

    .line 230
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_2c

    .line 234
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 225
    .end local v1    # "ret":I
    :catch_15
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_23
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 233
    :goto_25
    return-object v2

    .line 232
    :pswitch_26
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_25

    .line 233
    :pswitch_29
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_25

    .line 230
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public syncUid(II)Z
    .registers 7
    .param p1, "sourceUid"    # I
    .param p2, "targetUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 508
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->sync_uid(II)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 509
    iget v3, p0, Landroid/security/KeyStore;->mError:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_11

    if-ne v3, v1, :cond_f

    .line 512
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 509
    goto :goto_e

    .line 510
    :catch_11
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 512
    goto :goto_e
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 436
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 433
    goto :goto_a

    .line 434
    :catch_d
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 436
    goto :goto_a
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 336
    iget v3, p0, Landroid/security/KeyStore;->mError:I

    if-ne v3, v1, :cond_1c

    .line 339
    .local v1, "ret":Z
    :goto_e
    if-eqz v1, :cond_1b

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1e

    .line 347
    .end local v1    # "ret":Z
    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    .line 336
    goto :goto_e

    .line 345
    :catch_1e
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 347
    goto :goto_1b
.end method

.method public unlock(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 598
    const/4 v2, 0x0

    .line 600
    .local v2, "result":Z
    :try_start_2
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/security/KeyStore;->mError:I

    .line 601
    iget v4, p0, Landroid/security/KeyStore;->mError:I

    if-ne v4, v3, :cond_1c

    .line 604
    .local v3, "ret":Z
    :goto_e
    if-eqz v3, :cond_1b

    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1b} :catch_27

    .line 614
    .end local v3    # "ret":Z
    :cond_1b
    :goto_1b
    return v2

    .line 601
    :cond_1c
    const/4 v3, 0x0

    goto :goto_e

    .line 609
    :catch_1e
    move-exception v1

    .line 610
    .local v1, "re":Landroid/os/RemoteException;
    const-string v4, "KeyStore"

    const-string v5, "Wrong KeyStore detected!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 611
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_27
    move-exception v0

    .line 612
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v4, "KeyStore"

    const-string v5, "KeyStore service is absent!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 418
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 415
    goto :goto_a

    .line 416
    :catch_d
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 418
    goto :goto_a
.end method
