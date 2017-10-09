.class Lcom/android/systemui/qs/tiles/MultiWindowTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "MultiWindowTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MultiWindowTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$1;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 65
    const-string v1, "MultiWindowTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MW:handleValueChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$1;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->access$000(Lcom/android/systemui/qs/tiles/MultiWindowTile;Ljava/lang/Object;)V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 71
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/qs/tiles/MultiWindowTile$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile$1$1;-><init>(Lcom/android/systemui/qs/tiles/MultiWindowTile$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method
