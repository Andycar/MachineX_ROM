.class Lcom/android/systemui/qs/tiles/AirViewTile$2;
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
    .line 129
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$100(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$200(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$100(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$302(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$402(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z

    .line 135
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 133
    goto :goto_1
.end method
