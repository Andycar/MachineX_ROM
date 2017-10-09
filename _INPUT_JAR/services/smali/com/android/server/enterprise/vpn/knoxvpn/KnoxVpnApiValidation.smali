.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mPersonaManager:Landroid/os/IPersonaManager;


# instance fields
.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 69
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 71
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 73
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 79
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 80
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 82
    return-void
.end method

.method private static getEnterpriseDeviceManager()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 100
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 102
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v0, :cond_e

    .line 86
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 88
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_11

    .line 93
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 95
    :cond_11
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)I
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 395
    const/16 v4, 0x64

    .line 398
    .local v4, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 399
    :cond_8
    const/16 v4, 0x68

    move v5, v4

    .line 439
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_b
    return v5

    .line 403
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_c
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 404
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_18

    .line 405
    const/16 v4, 0x6c

    move v5, v4

    .line 406
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 408
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_24

    .line 409
    const/16 v4, 0x70

    move v5, v4

    .line 410
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 414
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_24
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 415
    .local v3, "routeType":I
    if-nez v3, :cond_2e

    .line 416
    const/16 v4, 0x6d

    move v5, v4

    .line 417
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 420
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2e
    if-eqz p3, :cond_3b

    .line 421
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 422
    .local v0, "currentStateOfProfile":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_64

    .line 423
    const/16 v4, 0x73

    move v5, v4

    .line 424
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 427
    .end local v0    # "currentStateOfProfile":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_45

    move-result v0

    .line 428
    .restart local v0    # "currentStateOfProfile":I
    if-nez v0, :cond_64

    .line 429
    const/16 v4, 0x74

    move v5, v4

    .line 430
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 434
    .end local v0    # "currentStateOfProfile":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_45
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v4, 0x65

    .line 438
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_64
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 439
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 662
    const/16 v5, 0x64

    .line 666
    .local v5, "validationResult":I
    if-eqz p3, :cond_8

    :try_start_4
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 667
    :cond_8
    const/16 v5, 0x68

    move v6, v5

    .line 722
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_b
    return v6

    .line 671
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_c
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 672
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_18

    .line 673
    const/16 v5, 0x6c

    move v6, v5

    .line 674
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 676
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_24

    .line 677
    const/16 v5, 0x70

    move v6, v5

    .line 678
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 682
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 683
    .local v4, "routeType":I
    if-nez v4, :cond_2e

    .line 684
    const/16 v5, 0x6d

    move v6, v5

    .line 685
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 688
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 689
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_3c

    .line 690
    const/16 v5, 0x71

    move v6, v5

    .line 691
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 694
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3c
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 695
    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_4a

    .line 696
    const/16 v5, 0x72

    move v6, v5

    .line 697
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 700
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4a
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 701
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_60

    .line 702
    const/16 v5, 0x7b

    move v6, v5

    .line 703
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 707
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_60
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 708
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_70} :catch_7a

    if-ne v7, v8, :cond_76

    .line 709
    const/16 v5, 0x75

    move v6, v5

    .line 710
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 712
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_76
    const/16 v5, 0x76

    move v6, v5

    .line 713
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 717
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_7a
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/16 v5, 0x65

    .line 721
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_99
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 722
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_b
.end method

.method public addAllPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 781
    const/16 v3, 0x64

    .line 785
    .local v3, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 786
    :cond_8
    const/16 v3, 0x68

    move v4, v3

    .line 829
    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_b
    return v4

    .line 790
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_c
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 791
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 792
    const/16 v3, 0x6c

    move v4, v3

    .line 793
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 795
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_24

    .line 796
    const/16 v3, 0x70

    move v4, v3

    .line 797
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 801
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 802
    .local v2, "routeType":I
    if-nez v2, :cond_2e

    .line 803
    const/16 v3, 0x6d

    move v4, v3

    .line 804
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 807
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2e
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 808
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_46

    .line 809
    const/16 v3, 0x7b

    move v4, v3

    .line 810
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 814
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_46
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 815
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5a} :catch_64

    if-ne v5, v6, :cond_60

    .line 816
    const/16 v3, 0x75

    move v4, v3

    .line 817
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 819
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_60
    const/16 v3, 0x76

    move v4, v3

    .line 820
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 824
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_64
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/16 v3, 0x65

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_83
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 829
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto/16 :goto_b
.end method

.method public addContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 475
    const/16 v11, 0x64

    .line 479
    .local v11, "validationResult":I
    if-eqz p4, :cond_12

    if-eqz p3, :cond_12

    :try_start_6
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-lt v13, v14, :cond_12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v13, :cond_16

    .line 480
    :cond_12
    const/16 v11, 0x68

    move v12, v11

    .line 547
    .end local v11    # "validationResult":I
    .local v12, "validationResult":I
    :goto_15
    return v12

    .line 484
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 485
    .local v7, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v7, :cond_26

    .line 486
    const/16 v11, 0x6c

    move v12, v11

    .line 487
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 489
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_26
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v13, v14, :cond_34

    .line 490
    const/16 v11, 0x70

    move v12, v11

    .line 491
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 495
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_34
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v9

    .line 496
    .local v9, "routeType":I
    if-nez v9, :cond_3e

    .line 497
    const/16 v11, 0x6d

    move v12, v11

    .line 498
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 501
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_3e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v5

    .line 502
    .local v5, "isPersonaIdIsValid":Z
    if-nez v5, :cond_4e

    .line 503
    const/16 v11, 0x71

    move v12, v11

    .line 504
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 507
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_4e
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 508
    .local v2, "containerOwner":I
    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v2, v13, :cond_60

    .line 509
    const/16 v11, 0x72

    move v12, v11

    .line 510
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 513
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_60
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_64
    if-ge v4, v6, :cond_81

    aget-object v10, v1, v4

    .line 514
    .local v10, "tempPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v14, "ADD_ALL_PACKAGES"

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7e

    .line 515
    const/16 v11, 0x89

    move v12, v11

    .line 516
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 513
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 520
    .end local v10    # "tempPackage":Ljava/lang/String;
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v13, v14, :cond_ce

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v15, "ADD_ALL_PACKAGES"

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "profileOwningPackage":Ljava/lang/String;
    if-eqz v8, :cond_f2

    .line 526
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f2

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c2} :catch_d3

    move-result v13

    packed-switch v13, :pswitch_data_10e

    .line 531
    const/16 v11, 0x77

    move v12, v11

    .line 532
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :pswitch_cb
    move v12, v11

    .line 529
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .line 537
    .end local v8    # "profileOwningPackage":Ljava/lang/String;
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_ce
    const/16 v11, 0x78

    move v12, v11

    .line 538
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .line 542
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "containerOwner":I
    .end local v4    # "i$":I
    .end local v5    # "isPersonaIdIsValid":Z
    .end local v6    # "len$":I
    .end local v7    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "routeType":I
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :catch_d3
    move-exception v3

    .line 543
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "KnoxVpnApiValidation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v11, 0x65

    .line 546
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f2
    const-string v13, "KnoxVpnApiValidation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 547
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .line 527
    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_cb
    .end packed-switch
.end method

.method public addPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 19
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 277
    const/16 v9, 0x64

    .line 280
    .local v9, "validationResult":I
    if-eqz p3, :cond_12

    if-eqz p2, :cond_12

    :try_start_6
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v12, 0x1

    if-lt v11, v12, :cond_12

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v11, :cond_16

    .line 281
    :cond_12
    const/16 v9, 0x68

    move v10, v9

    .line 335
    .end local v9    # "validationResult":I
    .local v10, "validationResult":I
    :goto_15
    return v10

    .line 285
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_16
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 286
    .local v5, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_24

    .line 287
    const/16 v9, 0x6c

    move v10, v9

    .line 288
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 290
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_24
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v11, v12, :cond_32

    .line 291
    const/16 v9, 0x70

    move v10, v9

    .line 292
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 296
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    .line 297
    .local v7, "routeType":I
    if-nez v7, :cond_3c

    .line 298
    const/16 v9, 0x6d

    move v10, v9

    .line 299
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 302
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_3c
    move-object/from16 v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_40
    if-ge v3, v4, :cond_5d

    aget-object v8, v1, v3

    .line 303
    .local v8, "tempPackage":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v13, "ADD_ALL_PACKAGES"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 304
    const/16 v9, 0x89

    move v10, v9

    .line 305
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 302
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 309
    .end local v8    # "tempPackage":Ljava/lang/String;
    :cond_5d
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v11

    if-eqz v11, :cond_ca

    .line 310
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v11, v12, :cond_a6

    .line 312
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v12, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v14, "ADD_ALL_PACKAGES"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "profileOwningPackage":Ljava/lang/String;
    if-eqz v6, :cond_ca

    .line 314
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_ca

    .line 315
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9a} :catch_ab

    move-result v11

    packed-switch v11, :pswitch_data_e6

    .line 319
    const/16 v9, 0x77

    move v10, v9

    .line 320
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :pswitch_a3
    move v10, v9

    .line 317
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .line 325
    .end local v6    # "profileOwningPackage":Ljava/lang/String;
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_a6
    const/16 v9, 0x78

    move v10, v9

    .line 326
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .line 330
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "routeType":I
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :catch_ab
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "KnoxVpnApiValidation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v9, 0x65

    .line 334
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_ca
    const-string v11, "KnoxVpnApiValidation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 335
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .line 315
    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_a3
    .end packed-switch
.end method

.method public createVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 32
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .prologue
    .line 106
    const/16 v23, 0x64

    .line 109
    .local v23, "validationResult":I
    if-eqz p2, :cond_c

    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_11

    .line 110
    :cond_c
    const/16 v23, 0x68

    move/from16 v24, v23

    .line 213
    .end local v23    # "validationResult":I
    .local v24, "validationResult":I
    :goto_10
    return v24

    .line 114
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_11
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v18, "profileObj":Lorg/json/JSONObject;
    const-string v26, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 116
    .local v12, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v26, "profile_attribute"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 117
    .local v14, "profileAttrObj":Lorg/json/JSONObject;
    const-string v26, "knox"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 119
    .local v10, "knoxAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v26, "profileName"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 120
    .local v17, "profileName":Ljava/lang/String;
    const-string/jumbo v26, "vpn_type"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 121
    .local v19, "protocolType":Ljava/lang/String;
    const-string/jumbo v26, "vpn_route_type"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 123
    .local v20, "routeType":I
    const-string v26, "chaining_enabled"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 124
    .local v3, "chainingEnabled":I
    const-string/jumbo v26, "uidpid_search_enabled"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    .line 125
    .local v21, "uidPidSearchEnabled":I
    const-string v26, "connectionType"

    const-string v27, "keepon"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "connectionType":Ljava/lang/String;
    if-eqz v17, :cond_7f

    if-eqz v19, :cond_7f

    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_84

    if-eqz v20, :cond_84

    .line 129
    :cond_7f
    const/16 v23, 0x69

    move/from16 v24, v23

    .line 130
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto :goto_10

    .line 133
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_84
    if-nez v20, :cond_a5

    .line 134
    if-eqz v3, :cond_8e

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v3, v0, :cond_94

    .line 135
    :cond_8e
    const/16 v23, 0x1f9

    move/from16 v24, v23

    .line 136
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 138
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_94
    const-string/jumbo v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a5

    .line 139
    const/16 v23, 0x2be

    move/from16 v24, v23

    .line 140
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 144
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_a5
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_b9

    if-eqz v3, :cond_b9

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_b9

    .line 145
    const/16 v23, 0x1f5

    move/from16 v24, v23

    .line 146
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 149
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_b9
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_c9

    if-eqz v21, :cond_c9

    .line 150
    const/16 v23, 0x259

    move/from16 v24, v23

    .line 151
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 154
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_c9
    const-string v26, "keepon"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e4

    const-string/jumbo v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e4

    .line 155
    const/16 v23, 0x2bd

    move/from16 v24, v23

    .line 156
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 159
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_e4
    const-string/jumbo v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f7

    if-nez v3, :cond_f7

    .line 160
    const/16 v23, 0x2be

    move/from16 v24, v23

    .line 161
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 164
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_f7
    const-string v26, "\\s"

    invoke-static/range {v26 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 165
    .local v13, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 166
    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .line 167
    .local v7, "found":Z
    if-eqz v7, :cond_10f

    .line 168
    const/16 v23, 0x6a

    move/from16 v24, v23

    .line 169
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 172
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_10f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    .line 173
    .local v16, "profileLength":I
    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_123

    const/16 v26, 0x80

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_129

    .line 174
    :cond_123
    const/16 v23, 0x6b

    move/from16 v24, v23

    .line 175
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 178
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15

    .line 179
    .local v15, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v15, :cond_155

    .line 180
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14f

    .line 181
    const/16 v23, 0x6f

    move/from16 v24, v23

    .line 182
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 184
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_14f
    const/16 v23, 0x70

    move/from16 v24, v23

    .line 185
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 189
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_155
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 190
    .local v25, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v22, v0

    .line 192
    .local v22, "userId":I
    const-string v26, "chaining_enabled"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 193
    .local v4, "chainingValue":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v4, v0, :cond_1b9

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v27

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I
    :try_end_18e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_18e} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18e} :catch_1fe

    move-result v8

    .line 195
    .local v8, "isChainingEnabled":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_197

    if-nez v8, :cond_199

    .line 196
    :cond_197
    const/16 v23, 0x1f7

    .line 212
    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "found":Z
    .end local v8    # "isChainingEnabled":I
    .end local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileLength":I
    .end local v17    # "profileName":Ljava/lang/String;
    .end local v18    # "profileObj":Lorg/json/JSONObject;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v21    # "uidPidSearchEnabled":I
    .end local v22    # "userId":I
    .end local v25    # "vendorName":Ljava/lang/String;
    :cond_199
    :goto_199
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "createVpnProfileValidation : validationResult value is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v23

    .line 213
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 199
    .end local v24    # "validationResult":I
    .restart local v3    # "chainingEnabled":I
    .restart local v4    # "chainingValue":I
    .restart local v5    # "connectionType":Ljava/lang/String;
    .restart local v7    # "found":Z
    .restart local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v11    # "matcher":Ljava/util/regex/Matcher;
    .restart local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .restart local v13    # "pattern":Ljava/util/regex/Pattern;
    .restart local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileLength":I
    .restart local v17    # "profileName":Ljava/lang/String;
    .restart local v18    # "profileObj":Lorg/json/JSONObject;
    .restart local v19    # "protocolType":Ljava/lang/String;
    .restart local v20    # "routeType":I
    .restart local v21    # "uidPidSearchEnabled":I
    .restart local v22    # "userId":I
    .restart local v23    # "validationResult":I
    .restart local v25    # "vendorName":Ljava/lang/String;
    :cond_1b9
    :try_start_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I
    :try_end_1d4
    .catch Lorg/json/JSONException; {:try_start_1b9 .. :try_end_1d4} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1d4} :catch_1fe

    move-result v9

    .line 200
    .local v9, "isVpnEnabled":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_199

    .line 201
    const/16 v23, 0x1f8

    goto :goto_199

    .line 205
    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "found":Z
    .end local v9    # "isVpnEnabled":I
    .end local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileLength":I
    .end local v17    # "profileName":Ljava/lang/String;
    .end local v18    # "profileObj":Lorg/json/JSONObject;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v21    # "uidPidSearchEnabled":I
    .end local v22    # "userId":I
    .end local v25    # "vendorName":Ljava/lang/String;
    :catch_1de
    move-exception v6

    .line 206
    .local v6, "e":Lorg/json/JSONException;
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "JSONException at createVpnProfileValidation API "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v23, 0x67

    .line 211
    goto :goto_199

    .line 208
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_1fe
    move-exception v6

    .line 209
    .local v6, "e":Ljava/lang/Exception;
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception at createVpnProfileValidation API "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v23, 0x65

    goto/16 :goto_199
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 620
    if-eqz p3, :cond_7

    :try_start_3
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_10

    .line 621
    :cond_7
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 658
    .end local p3    # "profileName":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p3

    .line 625
    .restart local p3    # "profileName":Ljava/lang/String;
    :cond_10
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 626
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_21

    .line 627
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 628
    goto :goto_f

    .line 630
    :cond_21
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_32

    .line 631
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 632
    goto :goto_f

    .line 636
    :cond_32
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 637
    .local v4, "routeType":I
    if-nez v4, :cond_41

    .line 638
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 639
    goto :goto_f

    .line 642
    :cond_41
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 643
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_54

    .line 644
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 645
    goto :goto_f

    .line 648
    :cond_54
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 649
    .local v0, "containerOwner":I
    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v6, :cond_f

    .line 650
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_67

    move-object p3, v5

    .line 651
    goto :goto_f

    .line 654
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    :catch_67
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 656
    goto :goto_f
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 445
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 446
    :cond_7
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 471
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p2

    .line 450
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_10
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 451
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_21

    .line 452
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 453
    goto :goto_f

    .line 455
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v4, v5, :cond_32

    .line 456
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 457
    goto :goto_f

    .line 461
    :cond_32
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 462
    .local v2, "routeType":I
    if-nez v2, :cond_f

    .line 463
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3f} :catch_41

    move-object p2, v3

    .line 464
    goto :goto_f

    .line 467
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    :catch_41
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getAllPackagesInVpnProfileValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 469
    goto :goto_f
.end method

.method public getErrorStringValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 900
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 901
    :cond_7
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getErrorStringValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 917
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p2

    .line 904
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 905
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_21

    .line 906
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getErrorStringValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 907
    goto :goto_f

    .line 909
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_f

    .line 910
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getErrorStringValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_32

    move-object p2, v2

    .line 911
    goto :goto_f

    .line 914
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_32
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getErrorStringValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getStateValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 874
    const/16 v2, 0x64

    .line 876
    .local v2, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 877
    :cond_8
    const/16 v2, 0x68

    move v3, v2

    .line 895
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_b
    return v3

    .line 880
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_c
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 881
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 882
    const/16 v2, 0x6c

    move v3, v2

    .line 883
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 885
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_24

    if-eq v4, v5, :cond_43

    .line 886
    const/16 v2, 0x70

    move v3, v2

    .line 887
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 890
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_24
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getStateValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/16 v2, 0x65

    .line 894
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStateValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 895
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b
.end method

.method public getVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 950
    const/16 v2, 0x64

    .line 952
    .local v2, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 953
    :cond_8
    const/16 v2, 0x68

    move v3, v2

    .line 971
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_b
    return v3

    .line 956
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_c
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 957
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 958
    const/16 v2, 0x6c

    move v3, v2

    .line 959
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 961
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_24

    if-eq v4, v5, :cond_43

    .line 962
    const/16 v2, 0x70

    move v3, v2

    .line 963
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 966
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_24
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getVpnModeOfOperationValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/16 v2, 0x65

    .line 970
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 971
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b
.end method

.method public getVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 219
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 220
    :cond_7
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 238
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p2

    .line 224
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 225
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_21

    .line 226
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 227
    goto :goto_f

    .line 229
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_f

    .line 230
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_32

    move-object p2, v2

    .line 231
    goto :goto_f

    .line 234
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_32
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 727
    const/16 v5, 0x64

    .line 731
    .local v5, "validationResult":I
    if-eqz p3, :cond_8

    :try_start_4
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 732
    :cond_8
    const/16 v5, 0x68

    move v6, v5

    .line 777
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_b
    return v6

    .line 736
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_c
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 737
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_18

    .line 738
    const/16 v5, 0x6c

    move v6, v5

    .line 739
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 741
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_24

    .line 742
    const/16 v5, 0x70

    move v6, v5

    .line 743
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 747
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 748
    .local v4, "routeType":I
    if-nez v4, :cond_2e

    .line 749
    const/16 v5, 0x6d

    move v6, v5

    .line 750
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 753
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 754
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_3c

    .line 755
    const/16 v5, 0x71

    move v6, v5

    .line 756
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 759
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3c
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 760
    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_4a

    .line 761
    const/16 v5, 0x72

    move v6, v5

    .line 762
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 765
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4a
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 766
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_59} :catch_60

    move-result v7

    if-nez v7, :cond_7f

    .line 767
    const/16 v5, 0x7c

    move v6, v5

    .line 768
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 772
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_60
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/16 v5, 0x65

    .line 776
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7f
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 777
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_b
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 833
    const/16 v3, 0x64

    .line 836
    .local v3, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 837
    :cond_8
    const/16 v3, 0x68

    move v4, v3

    .line 870
    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_b
    return v4

    .line 841
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_c
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 842
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 843
    const/16 v3, 0x6c

    move v4, v3

    .line 844
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 846
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_24

    .line 847
    const/16 v3, 0x70

    move v4, v3

    .line 848
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 852
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 853
    .local v2, "routeType":I
    if-nez v2, :cond_2e

    .line 854
    const/16 v3, 0x6d

    move v4, v3

    .line 855
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 858
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2e
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 859
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3f} :catch_46

    move-result v5

    if-nez v5, :cond_65

    .line 860
    const/16 v3, 0x7c

    move v4, v3

    .line 861
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 865
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_46
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v3, 0x65

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 870
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 551
    const/16 v6, 0x64

    .line 554
    .local v6, "validationResult":I
    if-eqz p4, :cond_e

    if-eqz p3, :cond_e

    :try_start_6
    array-length v8, p3

    const/4 v9, 0x1

    if-lt v8, v9, :cond_e

    iget-object v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v8, :cond_12

    .line 555
    :cond_e
    const/16 v6, 0x68

    move v7, v6

    .line 615
    .end local v6    # "validationResult":I
    .local v7, "validationResult":I
    :goto_11
    return v7

    .line 559
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_12
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 560
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_1e

    .line 561
    const/16 v6, 0x6c

    move v7, v6

    .line 562
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 564
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_1e
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_2a

    .line 565
    const/16 v6, 0x70

    move v7, v6

    .line 566
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 570
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    .line 571
    .local v5, "routeType":I
    if-nez v5, :cond_34

    .line 572
    const/16 v6, 0x6d

    move v7, v6

    .line 573
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 576
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_34
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 577
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_42

    .line 578
    const/16 v6, 0x71

    move v7, v6

    .line 579
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 582
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_42
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 583
    .local v0, "containerOwner":I
    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v8, :cond_50

    .line 584
    const/16 v6, 0x72

    move v7, v6

    .line 585
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 588
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_50
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 589
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_87

    .line 592
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, p2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "profileOwningPackage":Ljava/lang/String;
    if-eqz v4, :cond_aa

    .line 594
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_aa

    .line 595
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7d} :catch_8b

    move-result v8

    packed-switch v8, :pswitch_data_c6

    .line 599
    const/16 v6, 0x79

    move v7, v6

    .line 600
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :pswitch_85
    move v7, v6

    .line 597
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 605
    .end local v4    # "profileOwningPackage":Ljava/lang/String;
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_87
    const/16 v6, 0x7a

    move v7, v6

    .line 606
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 610
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "routeType":I
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :catch_8b
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v6, 0x65

    .line 614
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_aa
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 615
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_11

    .line 595
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_85
    .end packed-switch
.end method

.method public removePackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 339
    const/16 v4, 0x64

    .line 342
    .local v4, "validationResult":I
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    :try_start_6
    array-length v6, p2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_e

    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_12

    .line 343
    :cond_e
    const/16 v4, 0x68

    move v5, v4

    .line 391
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_11
    return v5

    .line 347
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_12
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 348
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_1e

    .line 349
    const/16 v4, 0x6c

    move v5, v4

    .line 350
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 352
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_2a

    .line 353
    const/16 v4, 0x70

    move v5, v4

    .line 354
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 358
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 359
    .local v3, "routeType":I
    if-nez v3, :cond_34

    .line 360
    const/16 v4, 0x6d

    move v5, v4

    .line 361
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 364
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_34
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 365
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v6, v7, :cond_71

    .line 368
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "profileOwningPackage":Ljava/lang/String;
    if-eqz v2, :cond_94

    .line 370
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 371
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_75

    move-result v6

    packed-switch v6, :pswitch_data_b0

    .line 375
    const/16 v4, 0x79

    move v5, v4

    .line 376
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :pswitch_6f
    move v5, v4

    .line 373
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 381
    .end local v2    # "profileOwningPackage":Ljava/lang/String;
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_71
    const/16 v4, 0x7a

    move v5, v4

    .line 382
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 386
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_75
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v4, 0x65

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_94
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 391
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto/16 :goto_11

    .line 371
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_6f
    .end packed-switch
.end method

.method public removeVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 243
    const/16 v4, 0x64

    .line 246
    .local v4, "validationResult":I
    if-eqz p2, :cond_9

    :try_start_5
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_d

    .line 247
    :cond_9
    const/16 v4, 0x68

    move v5, v4

    .line 273
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_c
    return v5

    .line 251
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_d
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 252
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_19

    .line 253
    const/16 v4, 0x6c

    move v5, v4

    .line 254
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 256
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_25

    .line 257
    const/16 v4, 0x70

    move v5, v4

    .line 258
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 262
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 263
    .local v3, "routeType":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_4e

    move-result v2

    .line 264
    .local v2, "profileState":I
    if-ne v3, v8, :cond_33

    if-ne v2, v8, :cond_33

    .line 265
    const/16 v4, 0x7d

    .line 272
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "profileState":I
    .end local v3    # "routeType":I
    :cond_33
    :goto_33
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 273
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 268
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_4e
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v4, 0x65

    goto :goto_33
.end method

.method public setVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I

    .prologue
    .line 921
    const/16 v2, 0x64

    .line 923
    .local v2, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 924
    :cond_8
    const/16 v2, 0x68

    move v3, v2

    .line 946
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_b
    return v3

    .line 927
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_c
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 928
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 929
    const/16 v2, 0x6c

    move v3, v2

    .line 930
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 932
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_2d

    if-eq v4, v5, :cond_24

    .line 933
    const/16 v2, 0x70

    move v3, v2

    .line 934
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 937
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_24
    if-eqz p3, :cond_4c

    const/4 v4, 0x1

    if-eq p3, v4, :cond_4c

    .line 938
    const/16 v2, 0x8a

    move v3, v2

    .line 939
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 941
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_2d
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at setVpnModeOfOperationValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v2, 0x65

    .line 945
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4c
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 946
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b
.end method
