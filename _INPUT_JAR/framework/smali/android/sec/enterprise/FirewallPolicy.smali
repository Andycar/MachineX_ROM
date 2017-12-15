.class public Landroid/sec/enterprise/FirewallPolicy;
.super Ljava/lang/Object;
.source "FirewallPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "FirewallPolicy"

    sput-object v0, Landroid/sec/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUrlBlocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 44
    .local v2, "ret":Z
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 45
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_b

    .line 46
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isUrlBlocked(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v2

    .line 51
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    :goto_b
    return v2

    .line 48
    :catch_c
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/sec/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Exception..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
