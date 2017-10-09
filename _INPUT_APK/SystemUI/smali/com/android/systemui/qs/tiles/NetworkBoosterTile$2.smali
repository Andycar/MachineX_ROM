.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;
.super Lcom/android/systemui/qs/SystemSetting;
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
    .line 127
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 130
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$502(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    .line 131
    const-string v0, "NetworkBoosterTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkBoosterObserver handleValueChanged() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1102(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method
