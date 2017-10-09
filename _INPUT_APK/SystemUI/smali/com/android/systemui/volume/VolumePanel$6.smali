.class Lcom/android/systemui/volume/VolumePanel$6;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
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
    .line 847
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 849
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 850
    const/4 v0, 0x1

    .line 851
    .local v0, "isCoverOpen":Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    const-string v1, "VolumePanel"

    const-string v2, "onCoverStateChanged : isCoverOpen = true, cover is opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VolumePanel"

    const-string v2, "onCoverStateChanged: remove warning popup on the s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->access$1400(Lcom/android/systemui/volume/VolumePanel;Z)V

    .line 858
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 859
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 860
    const-string v1, "VolumePanel"

    const-string v2, "onCoverStateChanged : Call mDialog.dismiss() #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 880
    :cond_4
    :goto_0
    return-void

    .line 864
    .end local v0    # "isCoverOpen":Z
    :cond_5
    const/4 v0, 0x0

    .line 865
    .restart local v0    # "isCoverOpen":Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 866
    const-string v1, "VolumePanel"

    const-string v2, "onCoverStateChanged : isCoverOpen = false, cover is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_6
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 869
    const-string v1, "VolumePanel"

    const-string v2, "onCoverStateChanged :  call sSafetyWarning.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 872
    :cond_7
    const-string v1, "VolumePanel"

    const-string v2, "onCoverStateChanged : call onDismissSafeVolumeWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 874
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 875
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 876
    const-string v1, "VolumePanel"

    const-string v2, "onCoverStateChanged : Call mDialog.dismiss() #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
