.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
.super Landroid/view/View;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 1835
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .line 1836
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1783
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1785
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1787
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1805
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1808
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1812
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    .line 1821
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    .line 1824
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    .line 1830
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    .line 1833
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    .line 1839
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->initilaizePaints()V

    .line 1840
    return-void
.end method

.method static synthetic access$100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .prologue
    .line 1781
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .prologue
    .line 1781
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .prologue
    .line 1781
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 2012
    iget-boolean v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v2, :cond_6

    .line 2039
    :goto_5
    return-void

    .line 2015
    :cond_6
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2017
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2018
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2020
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 2022
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_60

    .line 2023
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 2024
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2029
    :goto_33
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2031
    if-eqz v0, :cond_7d

    .line 2032
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2033
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    :goto_56
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 2038
    :goto_58
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 2026
    :cond_60
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_6f
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 2027
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_33

    .line 2033
    :cond_7a
    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    goto :goto_56

    .line 2035
    :cond_7d
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2036
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_58
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2123
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_5

    .line 2138
    :goto_4
    return-void

    .line 2126
    :cond_5
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2131
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2132
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2137
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 2047
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 2048
    .local v3, "textHeight":F
    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    sub-int v5, v6, v7

    .line 2049
    .local v5, "y":I
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    .line 2050
    .local v2, "nDays":I
    mul-int/lit8 v0, v2, 0x2

    .line 2052
    .local v0, "divisor":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2053
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2055
    const/4 v1, 0x0

    .line 2057
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_92

    .line 2058
    :goto_35
    if-ge v1, v2, :cond_6c

    .line 2059
    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    add-int/lit8 v8, v2, -0x1

    sub-int/2addr v8, v1

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_65

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    :goto_48
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2061
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    .line 2062
    .local v4, "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v1

    aget-object v6, v6, v7

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2058
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 2059
    .end local v4    # "x":I
    :cond_65
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    goto :goto_48

    .line 2064
    :cond_6c
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 2065
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2066
    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    div-int/2addr v7, v0

    sub-int v4, v6, v7

    .line 2067
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2083
    .end local v4    # "x":I
    :cond_91
    return-void

    .line 2070
    :cond_92
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 2071
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2072
    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    div-int v4, v6, v0

    .line 2073
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2074
    add-int/lit8 v1, v1, 0x1

    .line 2076
    .end local v4    # "x":I
    :cond_b6
    :goto_b6
    if-ge v1, v2, :cond_91

    .line 2077
    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_e0

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    :goto_c6
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2079
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    .line 2080
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v1

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2076
    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    .line 2077
    .end local v4    # "x":I
    :cond_e0
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    goto :goto_c6
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 2092
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 2093
    .local v6, "firstFullyVisiblePosition":I
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1e

    .line 2094
    add-int/lit8 v6, v6, 0x1

    .line 2096
    :cond_1e
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    if-ne v6, v0, :cond_2b

    .line 2098
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2115
    :goto_2a
    return-void

    .line 2103
    :cond_2b
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2104
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2107
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2108
    const/4 v1, 0x0

    .line 2109
    .local v1, "startX":F
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    int-to-float v3, v0

    .line 2114
    .local v3, "stopX":F
    :goto_5a
    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2a

    .line 2109
    .end local v3    # "stopX":F
    :cond_62
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    int-to-float v3, v0

    goto :goto_5a

    .line 2111
    .end local v1    # "startX":F
    :cond_66
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v0, v4

    int-to-float v1, v0

    .line 2112
    .restart local v1    # "startX":F
    :goto_74
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    int-to-float v3, v0

    .restart local v3    # "stopX":F
    goto :goto_5a

    .end local v1    # "startX":F
    .end local v3    # "stopX":F
    :cond_78
    move v1, v2

    .line 2111
    goto :goto_74
.end method

.method private initilaizePaints()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1914
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1915
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1916
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1918
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1919
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1920
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1921
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1922
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1925
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1926
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1927
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1930
    :cond_56
    return-void
.end method

.method private updateSelectionPositions()V
    .registers 6

    .prologue
    .line 2150
    iget-boolean v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_3f

    .line 2151
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 2152
    .local v0, "isLayoutRtl":Z
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    .line 2153
    .local v1, "selectedPosition":I
    if-gez v1, :cond_16

    .line 2154
    add-int/lit8 v1, v1, 0x7

    .line 2156
    :cond_16
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-nez v0, :cond_22

    .line 2157
    add-int/lit8 v1, v1, 0x1

    .line 2159
    :cond_22
    if-eqz v0, :cond_40

    .line 2160
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    .line 2165
    :goto_35
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    .line 2167
    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "selectedPosition":I
    :cond_3f
    return-void

    .line 2163
    .restart local v0    # "isLayoutRtl":Z
    .restart local v1    # "selectedPosition":I
    :cond_40
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    goto :goto_35
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .registers 11
    .param p1, "x"    # F
    .param p2, "outCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    .line 1967
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v2

    .line 1972
    .local v2, "isLayoutRtl":Z
    if-eqz v2, :cond_2a

    .line 1973
    const/4 v3, 0x0

    .line 1974
    .local v3, "start":I
    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v5

    if-eqz v5, :cond_27

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 1980
    .local v1, "end":I
    :goto_19
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_23

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3d

    .line 1981
    :cond_23
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1995
    :goto_26
    return v4

    .line 1974
    .end local v1    # "end":I
    :cond_27
    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    goto :goto_19

    .line 1976
    .end local v3    # "start":I
    :cond_2a
    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int v3, v5, v6

    .line 1977
    .restart local v3    # "start":I
    :goto_38
    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    .restart local v1    # "end":I
    goto :goto_19

    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_3b
    move v3, v4

    .line 1976
    goto :goto_38

    .line 1986
    .restart local v1    # "end":I
    .restart local v3    # "start":I
    :cond_3d
    int-to-float v4, v3

    sub-float v4, p1, v4

    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v5}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 1988
    .local v0, "dayPosition":I
    if-eqz v2, :cond_59

    .line 1989
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v0, v4, v0

    .line 1992
    :cond_59
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1993
    const/4 v4, 0x5

    invoke-virtual {p2, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1995
    const/4 v4, 0x1

    goto :goto_26
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 1956
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .registers 2

    .prologue
    .line 1938
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .registers 2

    .prologue
    .line 1947
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .registers 15
    .param p1, "weekNumber"    # I
    .param p2, "selectedWeekDay"    # I
    .param p3, "focusedMonth"    # I

    .prologue
    .line 1854
    iput p2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    .line 1855
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11f

    const/4 v3, 0x1

    :goto_8
    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    .line 1856
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v3

    if-eqz v3, :cond_122

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1a
    iput v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    .line 1857
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    .line 1858
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1860
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1861
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1864
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1865
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    new-array v3, v3, [Z

    iput-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    .line 1868
    const/4 v1, 0x0

    .line 1869
    .local v1, "i":I
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1870
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1872
    add-int/lit8 v1, v1, 0x1

    .line 1876
    :cond_87
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 1877
    .local v0, "diff":I
    if-gez v0, :cond_12a

    .line 1878
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1882
    :goto_a6
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    iput-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 1883
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1885
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1886
    :goto_c4
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    if-ge v1, v3, :cond_160

    .line 1887
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_138

    const/4 v2, 0x1

    .line 1888
    .local v2, "isFocusedDay":Z
    :goto_d6
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    aput-boolean v2, v3, v1

    .line 1889
    iget-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z

    or-int/2addr v3, v2

    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z

    .line 1890
    iget-boolean v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    if-nez v2, :cond_13a

    const/4 v3, 0x1

    :goto_e4
    and-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1892
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10b

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 1893
    :cond_10b
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    .line 1898
    :goto_111
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1886
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 1855
    .end local v0    # "diff":I
    .end local v1    # "i":I
    .end local v2    # "isFocusedDay":Z
    :cond_11f
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 1856
    :cond_122
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    goto/16 :goto_1a

    .line 1880
    .restart local v0    # "diff":I
    .restart local v1    # "i":I
    :cond_12a
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    add-int/lit8 v5, v0, -0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_a6

    .line 1887
    :cond_138
    const/4 v2, 0x0

    goto :goto_d6

    .line 1890
    .restart local v2    # "isFocusedDay":Z
    :cond_13a
    const/4 v3, 0x0

    goto :goto_e4

    .line 1895
    :cond_13c
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_111

    .line 1902
    .end local v2    # "isFocusedDay":Z
    :cond_160
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_179

    .line 1903
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1905
    :cond_179
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1907
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->updateSelectionPositions()V

    .line 1908
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2000
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 2001
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 2002
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 2003
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    .line 2004
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2171
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    .line 2173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->setMeasuredDimension(II)V

    .line 2174
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2142
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    .line 2143
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->updateSelectionPositions()V

    .line 2144
    return-void
.end method
