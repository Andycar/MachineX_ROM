.class Lcom/android/keyguard/KeyguardActivityLauncher$3;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$onStarted:Ljava/lang/Runnable;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$options:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$user:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$onStarted:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 255
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$options:Landroid/os/Bundle;

    iget-object v11, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v13

    .line 267
    .local v13, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-static {}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waitResult[%s,%s,%s,%s] at %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v13, Landroid/app/IActivityManager$WaitResult;->result:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, v13, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, v13, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v13, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActivityLauncher$3;->val$onStarted:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    .end local v13    # "result":Landroid/app/IActivityManager$WaitResult;
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v12

    .line 271
    .local v12, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error starting activity"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 276
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v13    # "result":Landroid/app/IActivityManager$WaitResult;
    :catch_1
    move-exception v14

    .line 277
    .local v14, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error running onStarted callback"

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
