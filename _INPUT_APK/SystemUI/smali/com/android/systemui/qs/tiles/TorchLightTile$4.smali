.class Lcom/android/systemui/qs/tiles/TorchLightTile$4;
.super Ljava/lang/Object;
.source "TorchLightTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/TorchLightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/TorchLightTile;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$4;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$4;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$4;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$402(Lcom/android/systemui/qs/tiles/TorchLightTile;J)J

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$4;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$300(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)V

    .line 312
    :cond_0
    return-void
.end method
