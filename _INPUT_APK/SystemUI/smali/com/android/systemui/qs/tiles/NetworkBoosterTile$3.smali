.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "intentAction":Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 250
    :cond_0
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const/4 v1, 0x5

    .line 258
    .local v1, "simNetWorkBoosterState":I
    const-string v3, "NetworkBoosterTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simNetWorkBoosterState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    .line 265
    .end local v1    # "simNetWorkBoosterState":I
    :cond_1
    :goto_0
    return-void

    .line 260
    .restart local v1    # "simNetWorkBoosterState":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0
.end method
