.class public Landroid/sec/enterprise/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "LocationPolicy"

    sput-object v0, Landroid/sec/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "SProvider"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 46
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 47
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isLocationProviderBlocked(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 52
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 49
    :catch_b
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isLocationProviderBlocked returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method
