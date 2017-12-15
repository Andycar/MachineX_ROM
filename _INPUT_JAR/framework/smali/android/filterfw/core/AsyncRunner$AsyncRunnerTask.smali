.class Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
.super Landroid/os/AsyncTask;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/filterfw/core/SyncRunner;",
        "Ljava/lang/Void;",
        "Landroid/filterfw/core/AsyncRunner$RunnerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunnerTask"


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/filterfw/core/AsyncRunner;
    .param p2, "x1"    # Landroid/filterfw/core/AsyncRunner$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;
    .registers 8
    .param p1, "runner"    # [Landroid/filterfw/core/SyncRunner;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 49
    new-instance v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    .line 51
    .local v1, "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    :try_start_a
    array-length v2, p1

    if-le v2, v4, :cond_2f

    .line 52
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "More than one runner received!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_15

    .line 82
    :catch_15
    move-exception v0

    .line 83
    .local v0, "exception":Ljava/lang/Exception;
    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 84
    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 89
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->deactivateGlContext()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_a6

    .line 95
    :goto_1f
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Done with background graph processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2e
    return-object v1

    .line 55
    :cond_2f
    const/4 v2, 0x0

    :try_start_30
    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    .line 58
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Starting background graph processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_44
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->activateGlContext()Z

    .line 61
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Preparing filter graph for processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_58
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    .line 64
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Running graph."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_6d
    const/4 v2, 0x1

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 68
    :cond_70
    :goto_70
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_9b

    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v2, v4, :cond_9b

    .line 69
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v2

    if-nez v2, :cond_70

    .line 70
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v2

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 71
    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_70

    .line 72
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->waitUntilWake()V

    .line 73
    const/4 v2, 0x1

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto :goto_70

    .line 79
    :cond_9b
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 80
    const/4 v2, 0x5

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_a4} :catch_15

    goto/16 :goto_1a

    .line 90
    :catch_a6
    move-exception v0

    .line 91
    .restart local v0    # "exception":Ljava/lang/Exception;
    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 92
    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto/16 :goto_1f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, [Landroid/filterfw/core/SyncRunner;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .registers 2
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    .line 102
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method protected onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .registers 7
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 106
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Starting post-execute."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_11
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    # invokes: Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V
    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->access$200(Landroid/filterfw/core/AsyncRunner;Z)V

    .line 108
    if-nez p1, :cond_23

    .line 110
    new-instance p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .end local p1    # "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    .line 111
    .restart local p1    # "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    iput v3, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 113
    :cond_23
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    iget-object v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    # invokes: Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V
    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 114
    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-eq v1, v3, :cond_32

    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v1, v4, :cond_4a

    .line 115
    :cond_32
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Closing filters."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_41
    :try_start_41
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$400(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_7c

    .line 123
    :cond_4a
    :goto_4a
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 124
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Calling graph done callback."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_61
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v1

    iget v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    invoke-interface {v1, v2}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    .line 127
    :cond_6c
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Completed post-execute."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7b
    return-void

    .line 118
    :catch_7c
    move-exception v0

    .line 119
    .local v0, "exception":Ljava/lang/Exception;
    iput v4, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 120
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # invokes: Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    goto :goto_4a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method
