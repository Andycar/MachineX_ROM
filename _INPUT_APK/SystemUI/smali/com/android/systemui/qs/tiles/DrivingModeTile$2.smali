.class Lcom/android/systemui/qs/tiles/DrivingModeTile$2;
.super Landroid/database/ContentObserver;
.source "DrivingModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DrivingModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 168
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$400(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 170
    .local v1, "zenmode":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v4, v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$002(Lcom/android/systemui/qs/tiles/DrivingModeTile;I)I

    .line 172
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$500(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V

    .line 180
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DRIVING_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "zenModeUpdateIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$800(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 182
    return-void

    .line 177
    .end local v0    # "zenModeUpdateIntent":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$600(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$700(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method
