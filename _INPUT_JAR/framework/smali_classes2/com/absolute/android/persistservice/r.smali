.class final Lcom/absolute/android/persistservice/r;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/q;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/q;)V
    .registers 2

    .prologue
    .line 713
    iput-object p1, p0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/persistservice/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/q;B)V
    .registers 3

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/r;-><init>(Lcom/absolute/android/persistservice/q;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 718
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_36

    .line 719
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 721
    iget-object v1, p0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/persistservice/q;

    invoke-static {v1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 722
    if-nez v1, :cond_37

    .line 724
    iget-object v1, p0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/persistservice/q;

    iget-object v1, v1, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/o;

    iget-object v1, v1, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is no longer being monitored via running services check."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 764
    :cond_36
    :goto_36
    return-void

    .line 729
    :cond_37
    iget-object v2, p0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/persistservice/q;

    iget-object v2, v2, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/o;

    invoke-static {v2}, Lcom/absolute/android/persistservice/o;->a(Lcom/absolute/android/persistservice/o;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 732
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 734
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 735
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 736
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 737
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 738
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_6f
    move-object v3, v2

    .line 740
    goto :goto_57

    .line 741
    :cond_71
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_91

    .line 745
    iget-object v2, p0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/persistservice/q;

    iget-object v2, v2, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v2, v0, v6}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Z)V

    .line 761
    :goto_7e
    invoke-virtual {p0, v5, v0}, Lcom/absolute/android/persistservice/r;->removeMessages(ILjava/lang/Object;)V

    .line 762
    invoke-virtual {p0, v5, v0}, Lcom/absolute/android/persistservice/r;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/absolute/android/persistservice/r;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_36

    .line 751
    :cond_91
    iget-object v2, p0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/persistservice/q;

    iget-object v2, v2, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/o;->c(Ljava/lang/String;)V

    goto :goto_7e

    :cond_99
    move-object v2, v3

    goto :goto_6f
.end method
