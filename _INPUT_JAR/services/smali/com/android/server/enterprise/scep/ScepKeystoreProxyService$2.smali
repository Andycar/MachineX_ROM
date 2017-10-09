.class final Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .registers 3

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 517
    iget-boolean v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;->mConnectedAtLeastOnce:Z

    if-nez v1, :cond_19

    .line 518
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;->mConnectedAtLeastOnce:Z

    .line 519
    const-string v1, "SCEPKeystoreProxyService"

    const-string v2, "Bind to keychain service happened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz p2, :cond_19

    .line 523
    :try_start_10
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_19} :catch_1a

    .line 530
    :cond_19
    :goto_19
    return-void

    .line 524
    :catch_1a
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 534
    return-void
.end method
