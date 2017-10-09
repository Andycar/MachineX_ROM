.class Lcom/android/systemui/qs/tiles/DrivingModeTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "DrivingModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DrivingModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 90
    const-string v3, "DrivingModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleValueChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$100(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$200(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "drivingModeIntent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$300(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .end local v0    # "drivingModeIntent":Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 96
    goto :goto_1
.end method
