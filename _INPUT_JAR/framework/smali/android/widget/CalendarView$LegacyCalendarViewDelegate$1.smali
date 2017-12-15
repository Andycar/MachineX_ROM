.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;
.super Landroid/database/DataSetObserver;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)V
    .registers 2

    .prologue
    .line 1296
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 7

    .prologue
    .line 1299
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1300
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    .line 1301
    .local v0, "selectedDay":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    iget-object v2, v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    .line 1306
    .end local v0    # "selectedDay":Ljava/util/Calendar;
    :cond_2e
    return-void
.end method
