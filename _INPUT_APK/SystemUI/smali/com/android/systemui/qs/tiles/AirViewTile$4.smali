.class Lcom/android/systemui/qs/tiles/AirViewTile$4;
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
    .line 148
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 151
    const-string v0, "AirViewTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAirViewModeSetting.handleValueChanged - AirViewModeObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$700(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$700(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$802(Lcom/android/systemui/qs/tiles/AirViewTile;I)I

    .line 153
    return-void
.end method
