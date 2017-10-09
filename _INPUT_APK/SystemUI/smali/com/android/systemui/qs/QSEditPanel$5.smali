.class Lcom/android/systemui/qs/QSEditPanel$5;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 438
    const/4 v4, 0x1

    .line 439
    .local v4, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 441
    .local v0, "dragEvent":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 442
    .local v1, "idx":I
    const-string v5, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "idx_prev: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / dragEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v3, 0x0

    .line 445
    .local v3, "panelView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$600(Lcom/android/systemui/qs/QSEditPanel;)I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 446
    const-string v5, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "idx_next: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$700(Lcom/android/systemui/qs/QSEditPanel;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    move v4, v6

    .line 499
    .end local v4    # "retVal":Z
    :goto_0
    return v4

    .line 450
    .restart local v4    # "retVal":Z
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$700(Lcom/android/systemui/qs/QSEditPanel;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "panelView":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 466
    .restart local v3    # "panelView":Landroid/view/View;
    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    move v4, v6

    .line 467
    goto :goto_0

    .line 469
    :cond_3
    const v5, 0x7f0e01ec

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 471
    .local v2, "panelBorder":Landroid/widget/LinearLayout;
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 483
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 473
    :pswitch_2
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 474
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v5, p1}, Lcom/android/systemui/qs/QSEditPanel;->access$800(Lcom/android/systemui/qs/QSEditPanel;Landroid/view/View;)V

    .line 475
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$400(Lcom/android/systemui/qs/QSEditPanel;)V

    goto :goto_0

    .line 479
    :pswitch_3
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 487
    :pswitch_4
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 491
    :pswitch_5
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 492
    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
