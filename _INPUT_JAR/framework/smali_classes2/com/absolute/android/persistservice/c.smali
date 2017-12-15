.class final Lcom/absolute/android/persistservice/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 3445
    iput-object p1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V
    .registers 3

    .prologue
    .line 3445
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/c;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 3448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3449
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3450
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3451
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/c;)V
    .registers 3

    .prologue
    .line 3445
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 3460
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 3471
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3473
    :cond_28
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/y;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not mounted or not accessible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3487
    :cond_4b
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    .line 3490
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    iget-boolean v1, v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Z

    if-eqz v1, :cond_5b

    .line 3491
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    .line 3495
    :cond_5b
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/n;->b()I

    move-result v1

    if-nez v1, :cond_ca

    .line 3499
    const/16 v1, 0x258

    .line 3501
    :try_start_69
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 3503
    new-instance v3, Lcom/absolute/android/persistservice/b;

    iget-object v4, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v3, v4}, Lcom/absolute/android/persistservice/b;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 3504
    if-eqz v2, :cond_ab

    array-length v3, v2

    if-lez v3, :cond_ab

    .line 3506
    array-length v3, v2

    :goto_89
    if-ge v0, v3, :cond_a8

    aget-object v4, v2, v0

    .line 3507
    iget-object v5, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/y;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Absolute pre-install App: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_a5} :catch_cb

    .line 3506
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 3514
    :cond_a8
    const v0, 0x15180

    .line 3526
    :cond_ab
    :goto_ab
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/y;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total duration for sending PS_READY set to : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 3528
    if-lez v0, :cond_ca

    .line 3529
    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    .line 3533
    :cond_ca
    return-void

    .line 3522
    :catch_cb
    move-exception v0

    .line 3523
    iget-object v2, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/y;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception checking for pre-install apps: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    :cond_e8
    move v0, v1

    goto :goto_ab
.end method
