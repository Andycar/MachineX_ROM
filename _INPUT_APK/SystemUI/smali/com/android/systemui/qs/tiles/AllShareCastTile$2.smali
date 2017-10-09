.class Lcom/android/systemui/qs/tiles/AllShareCastTile$2;
.super Landroid/content/BroadcastReceiver;
.source "AllShareCastTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AllShareCastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x2

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    const-string v2, "AllShareCastTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$200(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/DisplayManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$002(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    .line 136
    const-string v2, "AllShareCastTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi display status changed! scanstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ActiveDisplayState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$300(Lcom/android/systemui/qs/tiles/AllShareCastTile;Ljava/lang/Object;)V

    .line 142
    :cond_1
    return-void
.end method
