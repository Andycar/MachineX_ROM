.class Lcom/android/settings/motion2013/SMotionGuideHub$3;
.super Landroid/database/ContentObserver;
.source "SMotionGuideHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$400(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 217
    .local v0, "MotionState":Z
    :cond_0
    const-string v1, "tilt"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tilt_to_scroll_list"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pan"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pan_to_browse_image"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pick_up"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$500(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, v1, Lcom/android/settings/motion2013/SMotionGuideHub;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, v1, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    :cond_2
    return-void
.end method
