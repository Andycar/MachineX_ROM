.class Lcom/android/settings/MasterClear$5;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 597
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$500(Lcom/android/settings/MasterClear;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 623
    :cond_0
    :goto_0
    return v3

    .line 600
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/settings/MasterClear$5;->x:F

    .line 601
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/settings/MasterClear$5;->y:F

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 605
    .local v0, "threshold":F
    iget v1, p0, Lcom/android/settings/MasterClear$5;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/settings/MasterClear$5;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1, v3}, Lcom/android/settings/MasterClear;->access$502(Lcom/android/settings/MasterClear;Z)Z

    goto :goto_0

    .line 613
    .end local v0    # "threshold":F
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 614
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 615
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 617
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1, v3}, Lcom/android/settings/MasterClear;->access$502(Lcom/android/settings/MasterClear;Z)Z

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
