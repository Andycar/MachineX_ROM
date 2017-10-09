.class Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 2

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 1591
    const-string/jumbo v4, "package"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1592
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1593
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "theme.installer.action"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1595
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-object v3, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    .line 1596
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput v1, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    .line 1600
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string/jumbo v5, "notifyuser"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string/jumbo v5, "notifyuser"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 1602
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->showEventBubble()V
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1500(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    .line 1622
    :cond_88
    :goto_88
    return-void

    .line 1604
    :cond_89
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_88

    .line 1608
    :cond_93
    sget-boolean v4, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    if-eqz v4, :cond_a7

    .line 1609
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_88

    .line 1611
    :cond_a7
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1612
    .local v2, "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 1613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1614
    .local v0, "bdl":Landroid/os/Bundle;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const-string v4, "index"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1616
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1617
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_88
.end method
