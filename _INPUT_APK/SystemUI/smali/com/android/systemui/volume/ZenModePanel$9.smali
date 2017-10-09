.class Lcom/android/systemui/volume/ZenModePanel$9;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/SegmentedButtons$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 2

    .prologue
    .line 1104
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "fireInteraction.. call onInteraction #2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2600(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 1106
    return-void
.end method

.method public onSelected(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1095
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2300(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZenButtonsCallback selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2400(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->access$2500(Lcom/android/systemui/volume/ZenModePanel;I)V

    .line 1100
    :cond_1
    return-void
.end method
