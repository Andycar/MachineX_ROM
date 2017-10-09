.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 109
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$002(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    .line 110
    const-string v0, "NetworkBoosterTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirplaneObserver() - mIsAirpalneOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    .line 124
    :goto_1
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
