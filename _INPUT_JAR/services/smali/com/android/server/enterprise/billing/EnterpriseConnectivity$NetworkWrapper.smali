.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkWrapper"
.end annotation


# instance fields
.field mLink:Landroid/net/LinkProperties;

.field mNetId:I

.field mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .registers 7
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;
    .param p4, "link"    # Landroid/net/LinkProperties;
    .param p5, "netId"    # I

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 524
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 525
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mLink:Landroid/net/LinkProperties;

    .line 526
    iput p5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetId:I

    .line 527
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p2, "x1"    # Landroid/net/NetworkInfo;
    .param p3, "x2"    # Landroid/net/NetworkCapabilities;
    .param p4, "x3"    # Landroid/net/LinkProperties;
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    .line 516
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    return-void
.end method


# virtual methods
.method getLink()Landroid/net/LinkProperties;
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mLink:Landroid/net/LinkProperties;

    return-object v0
.end method

.method getNetworkId()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetId:I

    return v0
.end method

.method getState()Landroid/net/NetworkInfo$State;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method isCellular()Z
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method isEnterprise()Z
    .registers 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method isInternet()Z
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method isWifi()Z
    .registers 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
