.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V
    .registers 3

    .prologue
    .line 5665
    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 5667
    iget-object v5, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-boolean v5, v5, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    if-nez v5, :cond_7

    .line 5683
    :cond_6
    :goto_6
    return-void

    .line 5670
    :cond_7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 5671
    .local v4, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 5672
    .local v0, "dalvikMax":J
    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 5673
    .local v2, "dalvikUsed":J
    const-wide/16 v6, 0x3

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    cmp-long v5, v2, v6

    if-lez v5, :cond_6

    .line 5677
    iget-object v5, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5679
    :try_start_28
    iget-object v5, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    iget-object v6, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_6

    .line 5680
    :catch_32
    move-exception v5

    goto :goto_6
.end method
