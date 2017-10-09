.class Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1186
    :cond_0
    const-string v3, "pkg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1187
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "com.android.phone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.mms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1190
    :cond_1
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1191
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "received MISSED_EVENT intent !! "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_2
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->access$1400(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12c2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1193
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->access$1400(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1196
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method
