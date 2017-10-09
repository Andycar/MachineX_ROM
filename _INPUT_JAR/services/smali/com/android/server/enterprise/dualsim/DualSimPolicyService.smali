.class public Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
.super Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;
.source "DualSimPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"

.field private static mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;-><init>()V

    .line 71
    const-string v0, "DualSimPolicyService"

    const-string v1, "DualSimPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    .line 76
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    .line 77
    return-void
.end method

.method private enforceDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 87
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public addPhoneToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "status":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 470
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 471
    .local v1, "uid":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 472
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addPhoneToSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 474
    :cond_13
    return v0
.end method

.method public checkPrivilegedNumber(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "simId"    # I

    .prologue
    .line 326
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v13

    if-eqz v13, :cond_185

    .line 329
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    if-nez v13, :cond_35

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_35

    .line 330
    const/16 p3, 0x1

    .line 333
    :cond_35
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "iccID":Ljava/lang/String;
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber iccID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(Ljava/lang/String;)Z

    move-result v4

    .line 336
    .local v4, "isCorporate":Z
    const/4 v7, 0x0

    .line 339
    .local v7, "patternFound":Z
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with sim card slot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Icc id ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " coporate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SIM inserted ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move/from16 v11, p3

    .line 344
    .local v11, "simRef":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_a9
    :try_start_a9
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v13

    if-ge v12, v13, :cond_165

    .line 345
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loop check - SIM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    const/4 v14, -0x1

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 348
    .local v8, "patternList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_14e

    .line 349
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_14e

    if-eqz p2, :cond_14e

    .line 350
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_e6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 351
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 352
    .local v6, "pattern":Ljava/util/regex/Pattern;
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Compiled regex was "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "and the number is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " found at simSlot= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 354
    .local v5, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 355
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found at sim list =>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v7, 0x1

    .line 357
    move/from16 p3, v11

    move/from16 v10, p3

    .line 384
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iccID":Ljava/lang/String;
    .end local v4    # "isCorporate":Z
    .end local v5    # "match":Ljava/util/regex/Matcher;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .end local v7    # "patternFound":Z
    .end local v8    # "patternList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "regex":Ljava/lang/String;
    .end local v11    # "simRef":I
    .end local v12    # "x":I
    .end local p3    # "simId":I
    .local v10, "simId":I
    :goto_14d
    return v10

    .line 364
    .end local v10    # "simId":I
    .restart local v3    # "iccID":Ljava/lang/String;
    .restart local v4    # "isCorporate":Z
    .restart local v7    # "patternFound":Z
    .restart local v8    # "patternList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "simRef":I
    .restart local v12    # "x":I
    .restart local p3    # "simId":I
    :cond_14e
    add-int/lit8 v11, v11, 0x1

    .line 366
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_155} :catch_15d

    move-result v13

    if-ne v11, v13, :cond_159

    .line 367
    const/4 v11, 0x0

    .line 344
    :cond_159
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a9

    .line 371
    .end local v8    # "patternList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_15d
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    const-string v13, "DualSimPolicyService"

    const-string v14, ">>> checkPrivilegedNumber - exception"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_165
    if-eqz v4, :cond_185

    if-nez v7, :cond_185

    .line 377
    const/16 p3, 0xff

    .line 378
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Corporate SIM and number not found at any list, block call "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "iccID":Ljava/lang/String;
    .end local v4    # "isCorporate":Z
    .end local v7    # "patternFound":Z
    .end local v11    # "simRef":I
    .end local v12    # "x":I
    :cond_185
    move/from16 v10, p3

    .line 384
    .end local p3    # "simId":I
    .restart local v10    # "simId":I
    goto :goto_14d
.end method

.method public clearWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "status":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 496
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 497
    .local v1, "uid":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 498
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->clearWhiteList(ILjava/lang/String;)Z

    move-result v0

    .line 501
    :cond_13
    return v0
.end method

.method public forceDataSim(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "success":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 196
    const-string v5, "DualSimPolicyService"

    const-string v6, "forceDataSim - Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 198
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 199
    .local v4, "uid":I
    const/4 v2, 0x0

    .local v2, "simcard":Ljava/lang/String;
    const/4 v0, 0x0

    .line 200
    .local v0, "simForced":Ljava/lang/String;
    const/4 v1, 0x0

    .line 202
    .local v1, "simSlot":I
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getForcedDataSimcard()Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz p3, :cond_67

    .line 206
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    :cond_2f
    if-eqz v0, :cond_35

    .line 208
    const/4 v5, 0x0

    .line 235
    .end local v0    # "simForced":Ljava/lang/String;
    .end local v1    # "simSlot":I
    .end local v2    # "simcard":Ljava/lang/String;
    .end local v4    # "uid":I
    :goto_32
    return v5

    .line 221
    .restart local v0    # "simForced":Ljava/lang/String;
    .restart local v1    # "simSlot":I
    .restart local v2    # "simcard":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    .line 210
    :cond_35
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v5

    if-ge v1, v5, :cond_5c

    .line 211
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 214
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    .line 216
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    .line 218
    const/4 v3, 0x1

    .line 223
    :cond_5c
    const/4 v5, 0x1

    if-ne v3, v5, :cond_65

    .line 224
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->forceDataThroughSimcard(Ljava/lang/String;)Z

    move-result v3

    .end local v0    # "simForced":Ljava/lang/String;
    .end local v1    # "simSlot":I
    .end local v2    # "simcard":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_65
    :goto_65
    move v5, v3

    .line 235
    goto :goto_32

    .line 229
    .restart local v0    # "simForced":Ljava/lang/String;
    .restart local v1    # "simSlot":I
    .restart local v2    # "simcard":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_67
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_71

    if-nez v0, :cond_65

    .line 230
    :cond_71
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->disableForceData()Z

    move-result v3

    goto :goto_65
.end method

.method public getActiveSimForCall(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x1

    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, "status":Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v0

    .line 436
    .local v0, "defaultForCall":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 437
    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSimForCall() >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_40

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v5, :cond_40

    .line 440
    if-nez v0, :cond_40

    const/4 v0, 0x1

    .line 442
    :cond_40
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    :cond_46
    return-object v1
.end method

.method public getActiveSimForData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "activeSimForData":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 311
    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveDataSim - Begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getActiveSimForData()I

    move-result v1

    .line 313
    .local v1, "slotForData":I
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .end local v1    # "slotForData":I
    :cond_1a
    return-object v0
.end method

.method public getActiveSimForMessage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, "status":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 455
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 456
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 457
    .local v1, "uid":I
    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveSimForMessage() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getActiveSimcardForMessaging()Ljava/lang/String;

    move-result-object v0

    .line 460
    .end local v1    # "uid":I
    :cond_19
    return-object v0
.end method

.method public getForcedDataSim(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "status":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 283
    const-string v1, "DualSimPolicyService"

    const-string v2, "getForcedDataSim - Begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getActiveSimForData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_1b
    return-object v0
.end method

.method public getIccId(Landroid/app/enterprise/ContextInfo;I)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "slot"    # I

    .prologue
    .line 510
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListForSimcard(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "lString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 519
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 521
    .local v1, "uid":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 522
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_16

    .line 523
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 526
    :cond_16
    return-object v0
.end method

.method public isDataForced(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "forced":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 298
    const-string v1, "DualSimPolicyService"

    const-string v2, "isDataForced()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isDataForced()Z

    move-result v0

    .line 301
    :cond_14
    return v0
.end method

.method public isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 530
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isSimCardCorporate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 180
    const-string v0, "DualSimPolicyService"

    const-string v1, "isSimCardCorporate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    .line 183
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onAdminAdded(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 117
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 129
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 123
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onPreAdminRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public removePhoneFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "status":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 483
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 484
    .local v1, "uid":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 485
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removePhoneFromSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 487
    :cond_13
    return v0
.end method

.method public setActiveSimForCall(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "status":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 394
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 395
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 396
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 397
    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "slot":I
    const/16 v3, 0xff

    if-eq v0, v3, :cond_3e

    .line 399
    const-string v3, "DualSimPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setActiveSimForCall() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setDefaultSimForVoiceCalls(I)Z

    move-result v1

    .line 404
    .end local v0    # "slot":I
    .end local v2    # "uid":I
    :cond_3e
    return v1
.end method

.method public setActiveSimForData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "success":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 249
    const-string v4, "DualSimPolicyService"

    const-string/jumbo v5, "setDataSim - Begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 251
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 253
    .local v3, "uid":I
    const/4 v1, 0x0

    .line 254
    .local v1, "simcard":Ljava/lang/String;
    const/4 v0, 0x0

    .line 256
    .local v0, "simSlot":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 257
    :cond_25
    const/4 v4, 0x0

    .line 272
    .end local v0    # "simSlot":I
    .end local v1    # "simcard":Ljava/lang/String;
    .end local v3    # "uid":I
    :goto_26
    return v4

    .line 268
    .restart local v0    # "simSlot":I
    .restart local v1    # "simcard":Ljava/lang/String;
    .restart local v3    # "uid":I
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 260
    :cond_29
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v4

    if-ge v0, v4, :cond_50

    .line 261
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 263
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    .line 264
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    .line 265
    const/4 v2, 0x1

    .end local v0    # "simSlot":I
    .end local v1    # "simcard":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_50
    move v4, v2

    .line 272
    goto :goto_26
.end method

.method public setActiveSimForMessage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "status":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 414
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 415
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 416
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 418
    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActiveSimForMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_54

    .line 421
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->setActiveSimcardForMessaging(Ljava/lang/String;)Z

    move-result v0

    .line 422
    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDualSimDBProxy.setActiveSimcardForMessaging() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v1    # "uid":I
    :cond_54
    return v0
.end method

.method public setCorporateSimCard(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 141
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCorporateSimCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 143
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 146
    .local v3, "uid":I
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_4b

    .line 147
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 169
    .end local v1    # "result":Z
    .end local v3    # "uid":I
    .local v2, "result":I
    :goto_4a
    return v2

    .line 152
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    .restart local v3    # "uid":I
    :cond_4b
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    .line 154
    .local v0, "isCorporate":Z
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isCorporate? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-ne p3, v0, :cond_86

    .line 157
    move v1, p3

    .line 167
    :goto_6c
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "isCorporate":Z
    .end local v3    # "uid":I
    :cond_84
    move v2, v1

    .line 169
    .restart local v2    # "result":I
    goto :goto_4a

    .line 159
    .end local v2    # "result":I
    .restart local v0    # "isCorporate":Z
    .restart local v3    # "uid":I
    :cond_86
    if-eqz p3, :cond_8f

    .line 161
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_6c

    .line 164
    :cond_8f
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removeCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_6c
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 111
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
