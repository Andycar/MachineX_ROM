.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Ljava/util/HashSet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Ljava/util/HashSet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, v2, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 75
    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V

    .line 82
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_29
    return-void

    .line 78
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_2a
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_6

    .line 81
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_32
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_29
.end method
