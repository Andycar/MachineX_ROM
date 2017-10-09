.class Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitIccIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityModel;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/KeyguardSecurityModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardSecurityModel;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$1;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;)V

    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 373
    monitor-enter p0

    const/4 v2, 0x0

    .line 374
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->access$100(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "iccId":Ljava/lang/String;
    const/16 v1, 0xa

    .line 378
    .local v1, "numRetries":I
    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 379
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    :try_start_1
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    add-int/lit8 v1, v1, -0x1

    .line 387
    :try_start_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->access$100(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 373
    .end local v0    # "iccId":Ljava/lang/String;
    .end local v1    # "numRetries":I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 390
    .restart local v0    # "iccId":Ljava/lang/String;
    .restart local v1    # "numRetries":I
    :cond_0
    if-eqz v0, :cond_1

    .line 391
    :try_start_6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->access$200(Lcom/android/keyguard/KeyguardSecurityModel;Ljava/lang/String;)Z

    move-result v2

    .line 394
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 382
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 368
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 400
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$300()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 401
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->access$402(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 402
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "verify_sim_pin"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->access$500(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    monitor-exit v2

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 368
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
