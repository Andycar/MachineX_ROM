.class Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "AdaptiveDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$000(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$100(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$000(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$202(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Z)Z

    .line 78
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
