.class Lcom/android/systemui/qs/tiles/CarModeTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "CarModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/CarModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CarModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CarModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 74
    const-string v1, "CarModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleValueChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$000(Lcom/android/systemui/qs/tiles/CarModeTile;Ljava/lang/Object;)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAR_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "carModeIntent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CarModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$100(Lcom/android/systemui/qs/tiles/CarModeTile;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 83
    .end local v0    # "carModeIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method
