.class final Lcom/absolute/android/persistservice/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 3551
    iput-object p1, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V
    .registers 3

    .prologue
    .line 3551
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/k;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 3554
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3555
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3556
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3558
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3559
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/k;)V
    .registers 3

    .prologue
    .line 3551
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 3568
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 3569
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 3571
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/n;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v1

    .line 3572
    if-eqz v1, :cond_89

    .line 3573
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    .line 3574
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v1

    .line 3575
    if-eqz v2, :cond_89

    .line 3581
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v3, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v4

    if-eq v3, v4, :cond_89

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_89

    .line 3590
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/y;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 3594
    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v3

    if-ne v3, v6, :cond_6e

    .line 3595
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/o;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;)V

    .line 3600
    :cond_6e
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/aa;->a()I

    move-result v3

    if-ne v3, v6, :cond_8a

    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v3

    if-ne v3, v6, :cond_8a

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8a

    .line 3603
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)Z

    .line 3618
    :cond_89
    :goto_89
    return-void

    .line 3607
    :cond_8a
    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v1

    if-nez v1, :cond_89

    .line 3609
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/y;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cleaning up to remove AppProfile of non-persisted package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 3612
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V

    goto :goto_89
.end method
