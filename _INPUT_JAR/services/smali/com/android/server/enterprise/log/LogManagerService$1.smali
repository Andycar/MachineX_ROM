.class Lcom/android/server/enterprise/log/LogManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/LogManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/LogManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/LogManagerService;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 145
    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/log/LogManagerService;->disableLogging(I)I

    .line 151
    :cond_12
    :goto_12
    return-void

    .line 146
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 147
    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    # invokes: Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;
    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/LogManagerService;->access$000(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 148
    .local v0, "logger":Lcom/android/server/enterprise/log/Logger;
    if-eqz v0, :cond_12

    .line 149
    invoke-virtual {v0}, Lcom/android/server/enterprise/log/Logger;->flush()V

    goto :goto_12
.end method
