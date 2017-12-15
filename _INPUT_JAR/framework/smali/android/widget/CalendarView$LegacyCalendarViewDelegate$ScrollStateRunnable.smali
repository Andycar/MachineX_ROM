.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)V
    .registers 2

    .prologue
    .line 1577
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/widget/CalendarView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p2, "x1"    # Landroid/widget/CalendarView$1;

    .prologue
    .line 1577
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1590
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 1591
    iput p2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mNewState:I

    .line 1592
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v0, v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1593
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v0, v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1594
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x1f4

    .line 1597
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1102(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;I)I

    .line 1599
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mNewState:I

    if-nez v2, :cond_46

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    if-eqz v2, :cond_46

    .line 1601
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1602
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1f

    .line 1617
    .end local v0    # "child":Landroid/view/View;
    :goto_1e
    return-void

    .line 1606
    .restart local v0    # "child":Landroid/view/View;
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1607
    .local v1, "dist":I
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    if-le v1, v2, :cond_46

    .line 1608
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1609
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1616
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "dist":I
    :cond_46
    :goto_46
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1202(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;I)I

    goto :goto_1e

    .line 1612
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "dist":I
    :cond_4e
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_46
.end method
