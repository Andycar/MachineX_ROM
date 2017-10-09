.class Lcom/android/settings/toolbox/ToolboxMenu$1;
.super Landroid/database/ContentObserver;
.source "ToolboxMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/toolbox/ToolboxMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/toolbox/ToolboxMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/toolbox/ToolboxMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxMenu$1;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 130
    const-string v0, "ToolboxMenu"

    const-string v1, "onChange() Toolbox Switch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu$1;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu$1;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-static {v1}, Lcom/android/settings/toolbox/ToolboxMenu;->access$000(Lcom/android/settings/toolbox/ToolboxMenu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/toolbox/ToolboxMenu;->refreshUI(I)V

    .line 132
    return-void
.end method
