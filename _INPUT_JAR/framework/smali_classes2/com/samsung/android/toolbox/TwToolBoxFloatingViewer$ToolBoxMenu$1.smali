.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 720
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iput-object p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->val$this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iput-object p3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 722
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->val$packageName:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "data":[Ljava/lang/String;
    if-nez v2, :cond_c

    .line 747
    :cond_b
    :goto_b
    return-void

    .line 724
    :cond_c
    array-length v5, v2

    if-lez v5, :cond_3d

    const/4 v5, 0x0

    aget-object v4, v2, v5

    .line 725
    .local v4, "pkgName":Ljava/lang/String;
    :goto_12
    array-length v5, v2

    if-le v5, v7, :cond_40

    aget-object v0, v2, v7

    .line 726
    .local v0, "activityName":Ljava/lang/String;
    :goto_17
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 729
    if-eqz v3, :cond_b

    .line 730
    const-string v5, "00"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 731
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    :goto_35
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V
    invoke-static {v5, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;)V

    goto :goto_b

    .line 724
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_3d
    const-string v4, "00"

    goto :goto_12

    .line 725
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_40
    const-string v0, "00"

    goto :goto_17

    .line 734
    .restart local v0    # "activityName":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_43
    :try_start_43
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .local v1, "cm":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_35

    .line 736
    .end local v1    # "cm":Landroid/content/ComponentName;
    :catch_4c
    move-exception v5

    goto :goto_35
.end method
