.class Lcom/sec/android/sviewcover/SViewCoverView$5;
.super Landroid/database/ContentObserver;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 700
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 702
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_shortcuts_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 706
    .local v0, "cameraShortcut":Z
    :goto_0
    const-string v3, "SViewCoverView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraShortcutObserver onChange() cameraShortcut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-ne v0, v1, :cond_3

    .line 709
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 719
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v1

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    .line 723
    :cond_1
    return-void

    .end local v0    # "cameraShortcut":Z
    :cond_2
    move v0, v2

    .line 702
    goto :goto_0

    .line 714
    .restart local v0    # "cameraShortcut":Z
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 720
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method
