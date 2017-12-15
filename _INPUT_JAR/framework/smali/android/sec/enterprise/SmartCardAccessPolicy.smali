.class public Landroid/sec/enterprise/SmartCardAccessPolicy;
.super Ljava/lang/Object;
.source "SmartCardAccessPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "SmartCardAccessPolicy"

    sput-object v0, Landroid/sec/enterprise/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z
    .registers 6
    .param p1, "package_name"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 59
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 60
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 65
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 62
    :catch_b
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v3, "isPackageWhitelistedFromBTSecureAccess returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isPackageWhitelistedFromBTSecureAccessUid(I)Z
    .registers 6
    .param p1, "calling_Uid"    # I

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 71
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 72
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPackageWhitelistedFromBTSecureAccessUid(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 77
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 74
    :catch_b
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v3, "isPackageWhitelistedFromBTSecureAccessUid returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method
