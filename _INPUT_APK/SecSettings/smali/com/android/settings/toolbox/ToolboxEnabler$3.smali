.class Lcom/android/settings/toolbox/ToolboxEnabler$3;
.super Ljava/lang/Object;
.source "ToolboxEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/toolbox/ToolboxEnabler;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/toolbox/ToolboxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/toolbox/ToolboxEnabler;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxEnabler$3;->this$0:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler$3;->this$0:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-static {v1}, Lcom/android/settings/toolbox/ToolboxEnabler;->access$000(Lcom/android/settings/toolbox/ToolboxEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 126
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/toolbox/ToolboxEnabler$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/toolbox/ToolboxEnabler$3$1;-><init>(Lcom/android/settings/toolbox/ToolboxEnabler$3;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method
