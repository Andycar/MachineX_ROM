.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

.field final synthetic val$cm:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V
    .registers 3

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iput-object p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;->val$cm:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction()V
    .registers 6

    .prologue
    .line 2146
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2147
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;->val$cm:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2148
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;Z)V
    invoke-static {v2, v1, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 2152
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_10
    return-void

    .line 2149
    :catch_11
    move-exception v0

    .line 2150
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "toolbox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sfinder Runtime error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
