.class Lcom/android/server/job/controllers/TimeController$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    const-string v0, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 264
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    # invokes: Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V
    invoke-static {v0}, Lcom/android/server/job/controllers/TimeController;->access$000(Lcom/android/server/job/controllers/TimeController;)V

    .line 268
    :cond_11
    :goto_11
    return-void

    .line 265
    :cond_12
    const-string v0, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    # invokes: Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V
    invoke-static {v0}, Lcom/android/server/job/controllers/TimeController;->access$100(Lcom/android/server/job/controllers/TimeController;)V

    goto :goto_11
.end method
