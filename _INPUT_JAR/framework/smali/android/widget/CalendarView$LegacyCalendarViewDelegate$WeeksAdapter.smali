.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private mFocusedMonth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Ljava/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field final synthetic this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/content/Context;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1640
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1636
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    .line 1641
    iput-object p2, p1, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    .line 1642
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p1, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v2, p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter$CalendarGestureListener;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1643
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V

    .line 1644
    return-void
.end method

.method static synthetic access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    .prologue
    .line 1628
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    .prologue
    .line 1628
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x7

    .line 1650
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedWeek:I

    .line 1651
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v1

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mTotalWeekCount:I

    .line 1652
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 1654
    :cond_3d
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mTotalWeekCount:I

    .line 1656
    :cond_43
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 1657
    return-void
.end method

.method private onDateTapped(Ljava/util/Calendar;)V
    .registers 3
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 1757
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1758
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V
    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)V

    .line 1759
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1684
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1689
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1694
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    .line 1699
    const/4 v2, 0x0

    .line 1700
    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    if-eqz p2, :cond_18

    move-object v2, p2

    .line 1701
    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 1712
    :goto_7
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedWeek:I

    if-ne v3, p1, :cond_33

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1714
    .local v1, "selectedWeekDay":I
    :goto_12
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {v2, p1, v1, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->init(III)V

    .line 1716
    return-object v2

    .line 1703
    .end local v1    # "selectedWeekDay":I
    :cond_18
    new-instance v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v4, v4, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/content/Context;)V

    .line 1704
    .restart local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1707
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1708
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->setClickable(Z)V

    .line 1709
    invoke-virtual {v2, p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_7

    .line 1712
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_33
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1734
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_57

    move-object v0, p1

    .line 1735
    check-cast v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 1737
    .local v0, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getDayFromLocation(FLjava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1748
    .end local v0    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_28
    :goto_28
    return v1

    .line 1742
    .restart local v0    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_29
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1745
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->onDateTapped(Ljava/util/Calendar;)V

    goto :goto_28

    .line 1748
    .end local v0    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_57
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public setFocusMonth(I)V
    .registers 3
    .param p1, "month"    # I

    .prologue
    .line 1725
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_5

    .line 1730
    :goto_4
    return-void

    .line 1728
    :cond_5
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mFocusedMonth:I

    .line 1729
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .registers 6
    .param p1, "selectedDay"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 1665
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 1673
    :goto_1a
    return-void

    .line 1669
    :cond_1b
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1670
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedWeek:I

    .line 1671
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mFocusedMonth:I

    .line 1672
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    goto :goto_1a
.end method
