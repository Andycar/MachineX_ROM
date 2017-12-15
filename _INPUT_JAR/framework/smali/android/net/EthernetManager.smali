.class public Landroid/net/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/IEthernetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IEthernetManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/net/EthernetManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 46
    return-void
.end method


# virtual methods
.method public getConfiguration()Landroid/net/IpConfiguration;
    .registers 3

    .prologue
    .line 53
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    if-nez v1, :cond_a

    .line 54
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    .line 59
    :goto_9
    return-object v1

    .line 57
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getConfiguration()Landroid/net/IpConfiguration;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    goto :goto_9

    .line 58
    :catch_11
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    goto :goto_9
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .registers 3
    .param p1, "config"    # Landroid/net/IpConfiguration;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    if-nez v0, :cond_5

    .line 74
    :goto_4
    return-void

    .line 71
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->setConfiguration(Landroid/net/IpConfiguration;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 72
    :catch_b
    move-exception v0

    goto :goto_4
.end method
