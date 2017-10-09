.class Lcom/android/systemui/volume/VolumePanel$13;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 2835
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$13;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectsSupressorChanged()V
    .locals 3

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$13;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$13;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$2300(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2844
    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2838
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$13;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v3, 0xd

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2839
    return-void

    :cond_0
    move v0, v1

    .line 2838
    goto :goto_0
.end method
