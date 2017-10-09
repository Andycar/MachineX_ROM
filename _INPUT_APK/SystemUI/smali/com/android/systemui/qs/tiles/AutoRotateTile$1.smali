.class Lcom/android/systemui/qs/tiles/AutoRotateTile$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRotateTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AutoRotateTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$000(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$102(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)Z

    .line 72
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$300(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V

    .line 73
    const-string v0, "STATUSBAR-AutoRotateQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_CONFIGURATION_CHANGED :: mAutoRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFolderOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$400(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
