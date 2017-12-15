.class final Lcom/absolute/android/persistservice/t;
.super Lcom/absolute/android/persistservice/ag;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final h:Ljava/lang/String; = "abt-persistence-watchdog"


# instance fields
.field final synthetic b:Lcom/absolute/android/persistservice/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 455
    const-class v0, Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/absolute/android/persistservice/t;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/absolute/android/persistservice/o;Landroid/content/Context;Lcom/absolute/android/persistservice/y;)V
    .registers 5

    .prologue
    .line 465
    iput-object p1, p0, Lcom/absolute/android/persistservice/t;->b:Lcom/absolute/android/persistservice/o;

    .line 466
    const-string v0, "abt-persistence-watchdog"

    invoke-direct {p0, p2, p3, v0}, Lcom/absolute/android/persistservice/ag;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/t;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 492
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    .line 493
    return-object v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/t;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .registers 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .registers 4

    .prologue
    .line 477
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    .line 479
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/t;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    if-eqz v1, :cond_30

    :cond_22
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->e()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    :cond_30
    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/t;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 516
    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 517
    :cond_14
    if-eqz v0, :cond_27

    .line 518
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_27

    .line 519
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 520
    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    .line 524
    :cond_27
    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/t;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->c()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->f()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    :cond_24
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 534
    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_14
    if-eqz v0, :cond_30

    .line 536
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    if-eqz v1, :cond_30

    .line 537
    :cond_22
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 538
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->e()V

    .line 539
    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    .line 543
    :cond_30
    return-void
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/t;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    :cond_27
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 553
    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 554
    :cond_14
    if-eqz v0, :cond_24

    .line 555
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->c()V

    .line 556
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->f()V

    .line 557
    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    .line 560
    :cond_24
    return-void
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/t;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->h()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    :cond_21
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 569
    sget-boolean v1, Lcom/absolute/android/persistservice/t;->a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 570
    :cond_14
    if-eqz v0, :cond_21

    .line 571
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->h()V

    .line 572
    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/t;->e()Z

    .line 575
    :cond_21
    return-void
.end method


# virtual methods
.method protected final c()V
    .registers 1

    .prologue
    .line 583
    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 589
    new-instance v1, Lcom/absolute/android/persistservice/t;

    iget-object v2, p0, Lcom/absolute/android/persistservice/t;->b:Lcom/absolute/android/persistservice/o;

    iget-object v3, p0, Lcom/absolute/android/persistservice/t;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/absolute/android/persistservice/t;->e:Lcom/absolute/android/persistservice/y;

    invoke-direct {v1, v2, v3, v4}, Lcom/absolute/android/persistservice/t;-><init>(Lcom/absolute/android/persistservice/o;Landroid/content/Context;Lcom/absolute/android/persistservice/y;)V

    .line 591
    :try_start_c
    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/t;->i(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistservice/t;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_12} :catch_18

    move-result v1

    if-nez v1, :cond_16

    .line 594
    :goto_15
    return v0

    .line 592
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 594
    :catch_18
    move-exception v1

    goto :goto_15
.end method
