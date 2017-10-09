.class Lcom/android/systemui/doze/DozeService$3;
.super Landroid/content/BroadcastReceiver;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 371
    const-string v2, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received pulse intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;)V

    .line 375
    :cond_1
    const-string v2, "com.android.systemui.doze.notification_pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    const-string v2, "instance"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 377
    .local v0, "instance":J
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received notification pulse intent instance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2
    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(J)V

    .line 379
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;)V

    .line 380
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->access$1000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeService;->access$1100(Lcom/android/systemui/doze/DozeService;Z)V

    .line 382
    .end local v0    # "instance":J
    :cond_3
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeService;->access$1202(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 384
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$1200(Lcom/android/systemui/doze/DozeService;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$1300(Lcom/android/systemui/doze/DozeService;)V

    .line 388
    :cond_4
    return-void
.end method
