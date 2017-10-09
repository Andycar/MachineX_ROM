.class Lcom/android/systemui/qs/tiles/ToolboxTile$1;
.super Landroid/content/BroadcastReceiver;
.source "ToolboxTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ToolboxTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ToolboxTile;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x0

    .line 42
    const-string v1, "ToolboxTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v1, "com.android.settings.action.talkback_off"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$000(Lcom/android/systemui/qs/tiles/ToolboxTile;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$100(Lcom/android/systemui/qs/tiles/ToolboxTile;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    invoke-static {v0, v4}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$202(Lcom/android/systemui/qs/tiles/ToolboxTile;Z)Z

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    const-string v1, "com.android.settings.action.talkback_on"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$300(Lcom/android/systemui/qs/tiles/ToolboxTile;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    invoke-static {v0, v4}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$202(Lcom/android/systemui/qs/tiles/ToolboxTile;Z)Z

    goto :goto_0
.end method
