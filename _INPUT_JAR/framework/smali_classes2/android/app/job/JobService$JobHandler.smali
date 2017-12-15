.class Landroid/app/job/JobService$JobHandler;
.super Landroid/os/Handler;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    return-void
.end method

.method private ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "workOngoing"    # Z

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 164
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    .line 165
    .local v2, "jobId":I
    if-eqz v0, :cond_17

    .line 167
    :try_start_a
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 176
    :cond_d
    :goto_d
    return-void

    .line 168
    :catch_e
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "JobService"

    const-string v4, "System unreachable for starting job."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    const-string v3, "JobService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 173
    const-string v3, "JobService"

    const-string v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "reschedule"    # Z

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 180
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    .line 181
    .local v2, "jobId":I
    if-eqz v0, :cond_17

    .line 183
    :try_start_a
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 192
    :cond_d
    :goto_d
    return-void

    .line 184
    :catch_e
    move-exception v1

    .line 185
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "JobService"

    const-string v4, "System unreachable for stopping job."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 188
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    const-string v3, "JobService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 189
    const-string v3, "JobService"

    const-string v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 122
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/job/JobParameters;

    .line 123
    .local v3, "params":Landroid/app/job/JobParameters;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_7c

    .line 157
    const-string v6, "JobService"

    const-string v7, "Unrecognised message received."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_11
    return-void

    .line 126
    :pswitch_12
    :try_start_12
    iget-object v6, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v6, v3}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v5

    .line 127
    .local v5, "workOngoing":Z
    invoke-direct {p0, v3, v5}, Landroid/app/job/JobService$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 128
    .end local v5    # "workOngoing":Z
    :catch_1c
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "JobService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while executing job: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3f
    :try_start_3f
    iget-object v6, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v6, v3}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v4

    .line 136
    .local v4, "ret":Z
    invoke-direct {p0, v3, v4}, Landroid/app/job/JobService$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_49

    goto :goto_11

    .line 137
    .end local v4    # "ret":Z
    :catch_49
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "JobService"

    const-string v7, "Application unable to handle onStopJob."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_57
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_72

    .line 144
    .local v2, "needsReschedule":Z
    :goto_5b
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 145
    .local v0, "callback":Landroid/app/job/IJobCallback;
    if-eqz v0, :cond_74

    .line 147
    :try_start_61
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v6

    invoke-interface {v0, v6, v2}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_68} :catch_69

    goto :goto_11

    .line 148
    :catch_69
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "JobService"

    const-string v7, "Error reporting job finish to system: binder has goneaway."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 143
    .end local v0    # "callback":Landroid/app/job/IJobCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "needsReschedule":Z
    :cond_72
    const/4 v2, 0x0

    goto :goto_5b

    .line 153
    .restart local v0    # "callback":Landroid/app/job/IJobCallback;
    .restart local v2    # "needsReschedule":Z
    :cond_74
    const-string v6, "JobService"

    const-string v7, "finishJob() called for a nonexistent job id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 123
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_3f
        :pswitch_57
    .end packed-switch
.end method
