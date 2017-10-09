.class Lcom/android/systemui/settings/ToggleSlider$TouchListener;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field mFocusInside:Z

.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 1

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->mFocusInside:Z

    .line 651
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 655
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 656
    .local v0, "action":I
    const-string v3, "soo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "soo onTouch : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v2, v5

    .line 660
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v6}, Lcom/android/systemui/settings/ToggleSlider;->access$000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v3, v6, v7, v8, v2}, Lcom/android/systemui/settings/ToggleSlider;->access$100(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 662
    .local v1, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_0

    .line 663
    const-string v3, "toggleSlider"

    const-string v5, "onTouch(): Change brightness was not allowed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_0
    return v4

    .line 667
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 691
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 692
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3, v5}, Lcom/android/systemui/settings/ToggleSlider;->access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    goto :goto_0

    .line 669
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 670
    iput-boolean v4, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->mFocusInside:Z

    .line 671
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3, v4}, Lcom/android/systemui/settings/ToggleSlider;->access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    goto :goto_0

    .line 674
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    .line 675
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 678
    iput-boolean v5, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->mFocusInside:Z

    goto :goto_0

    .line 682
    :pswitch_2
    const-string v3, "soo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "soo ACTION_UP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->mFocusInside:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-boolean v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->mFocusInside:Z

    if-eqz v3, :cond_1

    .line 684
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v3}, Lcom/android/systemui/settings/ToggleSlider;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 685
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 686
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3, v5}, Lcom/android/systemui/settings/ToggleSlider;->access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 684
    goto :goto_2

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
