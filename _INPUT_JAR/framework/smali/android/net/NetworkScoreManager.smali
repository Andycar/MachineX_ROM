.class public Landroid/net/NetworkScoreManager;
.super Ljava/lang/Object;
.source "NetworkScoreManager.java"


# static fields
.field public static final ACTION_CHANGE_ACTIVE:Ljava/lang/String; = "android.net.scoring.CHANGE_ACTIVE"

.field public static final ACTION_CUSTOM_ENABLE:Ljava/lang/String; = "android.net.scoring.CUSTOM_ENABLE"

.field public static final ACTION_SCORER_CHANGED:Ljava/lang/String; = "android.net.scoring.SCORER_CHANGED"

.field public static final ACTION_SCORE_NETWORKS:Ljava/lang/String; = "android.net.scoring.SCORE_NETWORKS"

.field public static final EXTRA_NETWORKS_TO_SCORE:Ljava/lang/String; = "networksToScore"

.field public static final EXTRA_NEW_SCORER:Ljava/lang/String; = "newScorer"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/INetworkScoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    .line 131
    const-string/jumbo v1, "network_score"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 132
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/INetworkScoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    .line 133
    return-void
.end method


# virtual methods
.method public clearScores()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1}, Landroid/net/INetworkScoreService;->clearScores()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 188
    :goto_6
    return v1

    .line 187
    :catch_7
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableScoring()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0}, Landroid/net/INetworkScoreService;->disableScoring()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 221
    :goto_5
    return-void

    .line 219
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v0

    .line 147
    .local v0, "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_a

    .line 148
    const/4 v1, 0x0

    .line 150
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    goto :goto_9
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkScoreService;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 264
    :goto_5
    return-void

    .line 262
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .registers 7
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "activeScorer":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 237
    const/4 v2, 0x0

    .line 246
    :goto_7
    return v2

    .line 239
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.scoring.SCORE_NETWORKS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const-string/jumbo v2, "networksToScore"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1, p1}, Landroid/net/INetworkScoreService;->setActiveScorer(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 205
    :goto_6
    return v1

    .line 204
    :catch_7
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .registers 4
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1, p1}, Landroid/net/INetworkScoreService;->updateScores([Landroid/net/ScoredNetwork;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 168
    :goto_6
    return v1

    .line 167
    :catch_7
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
