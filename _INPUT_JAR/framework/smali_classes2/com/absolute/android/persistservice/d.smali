.class final Lcom/absolute/android/persistservice/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 3625
    iput-object p1, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V
    .registers 3

    .prologue
    .line 3625
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/d;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 3631
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    if-nez v0, :cond_1a

    .line 3633
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3634
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3636
    iget-object v1, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    .line 3639
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/d;)V
    .registers 3

    .prologue
    .line 3625
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    if-nez v0, :cond_1a

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    :cond_1a
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 3642
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    if-eqz v0, :cond_10

    .line 3643
    iget-object v0, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    .line 3646
    :cond_10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 3655
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3656
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3658
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3659
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3660
    iget-object v0, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 3661
    :try_start_27
    iget-object v0, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3662
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3663
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3669
    iget-object v3, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v3, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_43

    goto :goto_31

    .line 3673
    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3671
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3672
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    .line 3673
    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_43

    .line 3676
    :cond_60
    return-void
.end method
