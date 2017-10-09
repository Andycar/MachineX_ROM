.class Lcom/android/systemui/qs/tiles/TorchLightTile$1;
.super Landroid/database/ContentObserver;
.source "TorchLightTile.java"


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
.method constructor <init>(Lcom/android/systemui/qs/tiles/TorchLightTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 211
    .local v0, "torchState":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$102(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)Z

    .line 214
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$200(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    .line 216
    :cond_0
    return-void

    .end local v0    # "torchState":Z
    :cond_1
    move v0, v1

    .line 209
    goto :goto_0
.end method
