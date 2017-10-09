.class Lcom/android/systemui/qs/tiles/AirViewTile$3;
.super Lcom/android/systemui/qs/SystemSetting;
.source "AirViewTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirViewTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirViewTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 141
    const-string v1, "AirViewTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAirViewMagnificationSetting.handleValueChanged - ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$500(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$500(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$602(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
