.class Lcom/android/settings/motion2013/SMotionGuideHub$6;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$6;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 518
    const-string v2, "SMotionGuideHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 521
    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$6;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$600(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 523
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$6;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$600(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 524
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$6;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$600(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 535
    :goto_0
    return v0

    .line 528
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 530
    const/16 v2, 0x13

    if-ne p2, v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$6;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$600(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 535
    goto :goto_0
.end method
