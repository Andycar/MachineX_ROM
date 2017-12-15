.class Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V
    .registers 4
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 584
    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    .line 585
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 581
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 582
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 586
    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "day"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 657
    iget-object v9, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mPadding:I
    invoke-static {v9}, Landroid/widget/SimpleMonthView;->access$400(Landroid/widget/SimpleMonthView;)I

    move-result v4

    .line 658
    .local v4, "offsetX":I
    iget-object v9, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I
    invoke-static {v9}, Landroid/widget/SimpleMonthView;->access$500(Landroid/widget/SimpleMonthView;)I

    move-result v5

    .line 659
    .local v5, "offsetY":I
    iget-object v9, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mRowHeight:I
    invoke-static {v9}, Landroid/widget/SimpleMonthView;->access$600(Landroid/widget/SimpleMonthView;)I

    move-result v0

    .line 660
    .local v0, "cellHeight":I
    iget-object v9, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mWidth:I
    invoke-static {v9}, Landroid/widget/SimpleMonthView;->access$700(Landroid/widget/SimpleMonthView;)I

    move-result v9

    iget-object v10, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mPadding:I
    invoke-static {v10}, Landroid/widget/SimpleMonthView;->access$400(Landroid/widget/SimpleMonthView;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mNumDays:I
    invoke-static {v10}, Landroid/widget/SimpleMonthView;->access$800(Landroid/widget/SimpleMonthView;)I

    move-result v10

    div-int v1, v9, v10

    .line 661
    .local v1, "cellWidth":I
    add-int/lit8 v9, p1, -0x1

    iget-object v10, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # invokes: Landroid/widget/SimpleMonthView;->findDayOffset()I
    invoke-static {v10}, Landroid/widget/SimpleMonthView;->access$900(Landroid/widget/SimpleMonthView;)I

    move-result v10

    add-int v3, v9, v10

    .line 662
    .local v3, "index":I
    iget-object v9, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mNumDays:I
    invoke-static {v9}, Landroid/widget/SimpleMonthView;->access$800(Landroid/widget/SimpleMonthView;)I

    move-result v9

    div-int v6, v3, v9

    .line 663
    .local v6, "row":I
    iget-object v9, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mNumDays:I
    invoke-static {v9}, Landroid/widget/SimpleMonthView;->access$800(Landroid/widget/SimpleMonthView;)I

    move-result v9

    rem-int v2, v3, v9

    .line 664
    .local v2, "column":I
    mul-int v9, v2, v1

    add-int v7, v4, v9

    .line 665
    .local v7, "x":I
    mul-int v9, v6, v0

    add-int v8, v5, v9

    .line 667
    .local v8, "y":I
    add-int v9, v7, v1

    add-int v10, v8, v0

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 668
    return-void
.end method

.method private getItemDescription(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "day"    # I

    .prologue
    .line 679
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mYear:I
    invoke-static {v2}, Landroid/widget/SimpleMonthView;->access$1000(Landroid/widget/SimpleMonthView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mMonth:I
    invoke-static {v3}, Landroid/widget/SimpleMonthView;->access$1100(Landroid/widget/SimpleMonthView;)I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/Calendar;->set(III)V

    .line 680
    const-string v1, "dd MMMM yyyy"

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 683
    .local v0, "date":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mSelectedDay:I
    invoke-static {v1}, Landroid/widget/SimpleMonthView;->access$200(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-ne p1, v1, :cond_38

    .line 684
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-virtual {v1}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040680

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .end local v0    # "date":Ljava/lang/CharSequence;
    :cond_38
    return-object v0
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .registers 5

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 595
    .local v0, "focusedVirtualView":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_14

    .line 596
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 601
    :cond_14
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 605
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # invokes: Landroid/widget/SimpleMonthView;->getDayFromLocation(FF)I
    invoke-static {v1, p1, p2}, Landroid/widget/SimpleMonthView;->access$000(Landroid/widget/SimpleMonthView;FF)I

    move-result v0

    .line 606
    .local v0, "day":I
    if-ltz v0, :cond_9

    .line 609
    .end local v0    # "day":I
    :goto_8
    return v0

    .restart local v0    # "day":I
    :cond_9
    const/high16 v0, -0x80000000

    goto :goto_8
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_1
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mNumCells:I
    invoke-static {v1}, Landroid/widget/SimpleMonthView;->access$100(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_13

    .line 615
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    :cond_13
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 641
    packed-switch p2, :pswitch_data_c

    .line 647
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 643
    :pswitch_5
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # invokes: Landroid/widget/SimpleMonthView;->onDayClick(I)V
    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->access$300(Landroid/widget/SimpleMonthView;I)V

    .line 644
    const/4 v0, 0x1

    goto :goto_4

    .line 641
    :pswitch_data_c
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 621
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 626
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 628
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 630
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 632
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mSelectedDay:I
    invoke-static {v0}, Landroid/widget/SimpleMonthView;->access$200(Landroid/widget/SimpleMonthView;)I

    move-result v0

    if-ne p1, v0, :cond_22

    .line 633
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 636
    :cond_22
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .registers 5
    .param p1, "virtualViewId"    # I

    .prologue
    .line 589
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-virtual {p0, v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 591
    return-void
.end method
