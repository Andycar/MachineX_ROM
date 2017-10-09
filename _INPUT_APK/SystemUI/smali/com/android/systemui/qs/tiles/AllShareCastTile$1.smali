.class Lcom/android/systemui/qs/tiles/AllShareCastTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "AllShareCastTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AllShareCastTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 66
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$100(Lcom/android/systemui/qs/tiles/AllShareCastTile;Ljava/lang/Object;)V

    .line 68
    return-void
.end method
