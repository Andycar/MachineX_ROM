.class public Landroid/sec/enterprise/general/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "MiscPolicy"

    iput-object v0, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isNFCStateChangeAllowed()Z
    .registers 5

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 78
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 79
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCStateChangeAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 84
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 81
    :catch_b
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to Talking to MiscPolicyService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method
