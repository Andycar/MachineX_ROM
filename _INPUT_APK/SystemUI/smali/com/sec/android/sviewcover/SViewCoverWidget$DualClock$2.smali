.class Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x12c2

    .line 692
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock.date_format_changed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    :cond_1
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "tz":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : ACTION_TIMEZONE_CHANGED : time-zone ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v0    # "tz":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$900(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    .line 702
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$1000(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 704
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$1000(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$1000(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$1000(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 708
    :cond_4
    return-void
.end method
