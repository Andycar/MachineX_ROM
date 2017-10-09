.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;
.super Landroid/database/ContentObserver;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V
    .locals 1

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->onChange(Z)V

    .line 221
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x2

    .line 224
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1202(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    .line 226
    const-string v1, "NetworkBoosterTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfcObserver() onChange - mIsWfcRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0
.end method
