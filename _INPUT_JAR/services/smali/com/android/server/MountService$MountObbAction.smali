.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .registers 5
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 3379
    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3380
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3381
    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3382
    iput p4, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    .line 3383
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3465
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3466
    return-void
.end method

.method public handleExecute()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3387
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)V

    .line 3390
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v10

    .line 3392
    .local v10, "obbInfo":Landroid/content/res/ObbInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v13, v10, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    # invokes: Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    invoke-static {v12, v13, v14}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_50

    .line 3393
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Denied attempt to mount OBB "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " which is owned by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const/16 v12, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3461
    :goto_4f
    return-void

    .line 3400
    :cond_50
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    monitor-enter v13

    .line 3401
    :try_start_59
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v14, v14, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 3402
    .local v7, "isMounted":Z
    monitor-exit v13
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_90

    .line 3403
    if-eqz v7, :cond_93

    .line 3404
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    const/16 v12, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_4f

    .line 3402
    .end local v7    # "isMounted":Z
    :catchall_90
    move-exception v12

    :try_start_91
    monitor-exit v13
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v12

    .line 3410
    .restart local v7    # "isMounted":Z
    :cond_93
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v12, :cond_fe

    .line 3411
    const-string/jumbo v6, "none"

    .line 3432
    .local v6, "hashedKey":Ljava/lang/String;
    :goto_9c
    const/4 v11, 0x0

    .line 3434
    .local v11, "rc":I
    :try_start_9d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string/jumbo v13, "obb"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "mount"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_df
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9d .. :try_end_df} :catch_14e

    .line 3447
    :cond_df
    :goto_df
    if-nez v11, :cond_15f

    .line 3451
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    monitor-enter v13

    .line 3452
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    # invokes: Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v12, v14}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3453
    monitor-exit v13
    :try_end_f6
    .catchall {:try_start_ea .. :try_end_f6} :catchall_15c

    .line 3455
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_4f

    .line 3414
    .end local v6    # "hashedKey":Ljava/lang/String;
    .end local v11    # "rc":I
    :cond_fe
    :try_start_fe
    const-string v12, "PBKDF2WithHmacSHA1"

    invoke-static {v12}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 3416
    .local v5, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    iget-object v13, v10, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v14, 0x400

    const/16 v15, 0x80

    invoke-direct {v9, v12, v13, v14, v15}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3418
    .local v9, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v5, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 3419
    .local v8, "key":Ljavax/crypto/SecretKey;
    new-instance v1, Ljava/math/BigInteger;

    invoke-interface {v8}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/math/BigInteger;-><init>([B)V

    .line 3420
    .local v1, "bi":Ljava/math/BigInteger;
    const/16 v12, 0x10

    invoke-virtual {v1, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_129
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_fe .. :try_end_129} :catch_12c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_fe .. :try_end_129} :catch_13d

    move-result-object v6

    .restart local v6    # "hashedKey":Ljava/lang/String;
    goto/16 :goto_9c

    .line 3421
    .end local v1    # "bi":Ljava/math/BigInteger;
    .end local v5    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v6    # "hashedKey":Ljava/lang/String;
    .end local v8    # "key":Ljavax/crypto/SecretKey;
    .end local v9    # "ks":Ljava/security/spec/KeySpec;
    :catch_12c
    move-exception v3

    .line 3422
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v12, "MountService"

    const-string v13, "Could not load PBKDF2 algorithm"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3423
    const/16 v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_4f

    .line 3425
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_13d
    move-exception v3

    .line 3426
    .local v3, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v12, "MountService"

    const-string v13, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3427
    const/16 v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_4f

    .line 3436
    .end local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v6    # "hashedKey":Ljava/lang/String;
    .restart local v11    # "rc":I
    :catch_14e
    move-exception v3

    .line 3438
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_14f
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_152
    .catch Ljava/lang/NullPointerException; {:try_start_14f .. :try_end_152} :catch_159

    move-result v2

    .line 3439
    .local v2, "code":I
    const/16 v12, 0x195

    if-eq v2, v12, :cond_df

    .line 3440
    const/4 v11, -0x1

    goto :goto_df

    .line 3442
    .end local v2    # "code":I
    :catch_159
    move-exception v4

    .line 3443
    .local v4, "ex":Ljava/lang/NullPointerException;
    const/4 v11, -0x1

    goto :goto_df

    .line 3453
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catchall_15c
    move-exception v12

    :try_start_15d
    monitor-exit v13
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    throw v12

    .line 3457
    :cond_15f
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t mount OBB file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    const/16 v12, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_4f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3471
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3473
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
