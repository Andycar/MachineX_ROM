.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyCalendarViewDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;,
        Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;,
        Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsDeviceDefault:Z

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 853
    invoke-direct/range {p0 .. p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 720
    const/4 v11, 0x2

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    .line 725
    const/16 v11, 0xc

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekMinVisibleHeight:I

    .line 730
    const/16 v11, 0x14

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mBottomBuffer:I

    .line 745
    const/4 v11, 0x7

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    .line 750
    const v11, 0x3d4ccccd    # 0.05f

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFriction:F

    .line 755
    const v11, 0x3eaa7efa    # 0.333f

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mVelocityScale:F

    .line 790
    const/4 v11, -0x1

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    .line 800
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    .line 805
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    .line 810
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentScrollState:I

    .line 820
    new-instance v11, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/widget/CalendarView$1;)V

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

    .line 845
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "MM/dd/yyyy"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 848
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z

    .line 856
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 859
    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 860
    .local v10, "twAttributesArray":Landroid/content/res/TypedArray;
    const/16 v11, 0x144

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z

    .line 861
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 864
    sget-object v11, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 866
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    .line 868
    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v12

    iget-object v12, v12, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    .line 870
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 871
    .local v9, "minDate":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_94

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v9, v11}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_9b

    .line 872
    :cond_94
    const-string v11, "01/01/1900"

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v11, v12}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 874
    :cond_9b
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, "maxDate":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_ae

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v8, v11}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_b5

    .line 876
    :cond_ae
    const-string v11, "01/01/2100"

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v11, v12}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 878
    :cond_b5
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 879
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Max date cannot be before min date."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 881
    :cond_c7
    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    .line 883
    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    .line 885
    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    .line 887
    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    .line 889
    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    .line 891
    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    .line 892
    const/16 v11, 0xa

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 895
    const/16 v11, 0xc

    const v12, 0x1030046

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    .line 897
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->updateDateTextSize()V

    .line 899
    const/16 v11, 0xb

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    .line 902
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 904
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 905
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekMinVisibleHeight:I

    .line 907
    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    .line 909
    const/4 v11, 0x1

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mBottomBuffer:I

    .line 911
    const/4 v11, 0x1

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I

    .line 913
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I

    .line 916
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 918
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v11, 0x109003a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 919
    .local v5, "content":Landroid/view/View;
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11, v5}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 921
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    .line 922
    const v11, 0x102035b

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 923
    const v11, 0x102035a

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMonthName:Landroid/widget/TextView;

    .line 925
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    .line 926
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpListView()V

    .line 927
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpAdapter()V

    .line 930
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 931
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1bc

    .line 932
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 939
    :goto_1b6
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->invalidate()V

    .line 940
    return-void

    .line 933
    :cond_1bc
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1cf

    .line 934
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_1b6

    .line 936
    :cond_1cf
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_1b6
.end method

.method static synthetic access$1102(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 621
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 621
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 621
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 621
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/widget/AbsListView;I)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/widget/AbsListView;III)V
    .registers 5
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 621
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 5
    .param p0, "oldCalendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1271
    if-nez p0, :cond_7

    .line 1272
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1277
    :goto_6
    return-object v2

    .line 1274
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1275
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1276
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_6
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .registers 16
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const-wide/32 v12, 0x240c8400

    .line 1558
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1559
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1562
    :cond_38
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 1564
    .local v2, "endTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 1566
    .local v4, "startTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 1568
    .local v0, "dayOffsetMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_7b

    .line 1569
    add-long/2addr v0, v12

    .line 1571
    :cond_7b
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    div-long/2addr v6, v12

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .registers 14
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1391
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1392
    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1396
    :cond_40
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1397
    .local v1, "firstFullyVisiblePosition":I
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1398
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_56

    .line 1399
    add-int/lit8 v1, v1, 0x1

    .line 1401
    :cond_56
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 1402
    .local v2, "lastFullyVisiblePosition":I
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mBottomBuffer:I

    if-le v4, v5, :cond_67

    .line 1403
    add-int/lit8 v2, v2, -0x1

    .line 1405
    :cond_67
    if-eqz p3, :cond_6e

    .line 1406
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1409
    :cond_6e
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .line 1413
    .local v3, "position":I
    if-lt v3, v1, :cond_78

    if-gt v3, v2, :cond_78

    if-eqz p4, :cond_bb

    .line 1415
    :cond_78
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1416
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1418
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1421
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 1422
    const/4 v3, 0x0

    .line 1427
    :goto_98
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    .line 1428
    if-eqz p2, :cond_ae

    .line 1429
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 1440
    :cond_a6
    :goto_a6
    return-void

    .line 1424
    :cond_a7
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_98

    .line 1432
    :cond_ae
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1434
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v8}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_a6

    .line 1436
    :cond_bb
    if-eqz p3, :cond_a6

    .line 1438
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_a6
.end method

.method private invalidateAllWeekViews()V
    .registers 5

    .prologue
    .line 1257
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1258
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1259
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1260
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1262
    .end local v2    # "view":Landroid/view/View;
    :cond_15
    return-void
.end method

.method private static isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 5
    .param p0, "firstDate"    # Ljava/util/Calendar;
    .param p1, "secondDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 1286
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_17

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .registers 15
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1472
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 1473
    .local v0, "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    if-nez v0, :cond_a

    .line 1534
    :cond_9
    :goto_9
    return-void

    .line 1478
    :cond_a
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v2, v7

    .line 1482
    .local v2, "currScroll":J
    iget-wide v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_6d

    .line 1483
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    .line 1494
    :goto_22
    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_77

    const/4 v6, 0x1

    .line 1495
    .local v6, "offset":I
    :goto_2b
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_79

    .line 1496
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 1501
    .restart local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_37
    :goto_37
    if-eqz v0, :cond_66

    .line 1504
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_82

    .line 1505
    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .line 1512
    .local v4, "month":I
    :goto_41
    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_87

    if-nez v4, :cond_87

    .line 1513
    const/4 v5, 0x1

    .line 1522
    .local v5, "monthDiff":I
    :goto_4a
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-nez v7, :cond_50

    if-gtz v5, :cond_56

    :cond_50
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_66

    if-gez v5, :cond_66

    .line 1523
    :cond_56
    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v1

    .line 1524
    .local v1, "firstDay":Ljava/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_96

    .line 1525
    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1529
    :goto_63
    invoke-direct {p0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1532
    .end local v1    # "firstDay":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    :cond_66
    iput-wide v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollPosition:J

    .line 1533
    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    goto :goto_9

    .line 1484
    .end local v6    # "offset":I
    :cond_6d
    iget-wide v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-lez v7, :cond_9

    .line 1485
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    goto :goto_22

    .line 1494
    :cond_77
    const/4 v6, 0x0

    goto :goto_2b

    .line 1497
    .restart local v6    # "offset":I
    :cond_79
    if-eqz v6, :cond_37

    .line 1498
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .restart local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    goto :goto_37

    .line 1507
    :cond_82
    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4    # "month":I
    goto :goto_41

    .line 1514
    :cond_87
    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_91

    const/16 v7, 0xb

    if-ne v4, v7, :cond_91

    .line 1515
    const/4 v5, -0x1

    .restart local v5    # "monthDiff":I
    goto :goto_4a

    .line 1517
    .end local v5    # "monthDiff":I
    :cond_91
    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5    # "monthDiff":I
    goto :goto_4a

    .line 1527
    .restart local v1    # "firstDay":Ljava/util/Calendar;
    :cond_96
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_63
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 1464
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .registers 7
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 1450
    :try_start_0
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1451
    const/4 v1, 0x1

    .line 1454
    :goto_a
    return v1

    .line 1452
    :catch_b
    move-exception v0

    .line 1453
    .local v0, "e":Ljava/text/ParseException;
    # getter for: Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/CalendarView;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .registers 10
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1543
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    .line 1544
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->setFocusMonth(I)V

    .line 1545
    const/16 v0, 0x34

    .line 1547
    .local v0, "flags":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1548
    .local v2, "millis":J
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .line 1549
    .local v7, "newMonthName":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 1551
    return-void
.end method

.method private setUpAdapter()V
    .registers 3

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    if-nez v0, :cond_1e

    .line 1295
    new-instance v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    .line 1296
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1308
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1312
    :cond_1e
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 1313
    return-void
.end method

.method private setUpHeader()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1319
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayLabels:[Ljava/lang/String;

    .line 1320
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    .local v2, "i":I
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    add-int v1, v4, v5

    .local v1, "count":I
    :goto_11
    if-ge v2, v1, :cond_2b

    .line 1321
    const/4 v4, 0x7

    if-le v2, v4, :cond_29

    add-int/lit8 v0, v2, -0x7

    .line 1322
    .local v0, "calendarDay":I
    :goto_18
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayLabels:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1320
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .end local v0    # "calendarDay":I
    :cond_29
    move v0, v2

    .line 1321
    goto :goto_18

    .line 1326
    :cond_2b
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1327
    .local v3, "label":Landroid/widget/TextView;
    iget-boolean v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    if-eqz v4, :cond_6c

    .line 1328
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1332
    :goto_3a
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_41
    if-ge v2, v1, :cond_74

    .line 1333
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "label":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1334
    .restart local v3    # "label":Landroid/widget/TextView;
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_57

    .line 1335
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1337
    :cond_57
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_70

    .line 1338
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1332
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 1330
    :cond_6c
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a

    .line 1341
    :cond_70
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_69

    .line 1344
    :cond_74
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 1345
    return-void
.end method

.method private setUpListView()V
    .registers 3

    .prologue
    .line 1352
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1353
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1354
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 1355
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$2;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1368
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 1369
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 1370
    return-void
.end method

.method private updateDateTextSize()V
    .registers 5

    .prologue
    .line 1246
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1248
    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I

    .line 1250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1251
    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .registers 2

    .prologue
    .line 1089
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 1189
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .registers 2

    .prologue
    .line 990
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .registers 2

    .prologue
    .line 971
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .registers 2

    .prologue
    .line 1173
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .registers 2

    .prologue
    .line 952
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .registers 2

    .prologue
    .line 1009
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .registers 2

    .prologue
    .line 1075
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .registers 2

    .prologue
    .line 1024
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .registers 2

    .prologue
    .line 1037
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1218
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 1219
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1223
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1228
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1229
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1238
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 1240
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    .line 1241
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 1242
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    .line 1243
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 1244
    return-void
.end method

.method public setDate(J)V
    .registers 4
    .param p1, "date"    # J

    .prologue
    const/4 v0, 0x0

    .line 1194
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setDate(JZZ)V

    .line 1195
    return-void
.end method

.method public setDate(JZZ)V
    .registers 8
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    .line 1199
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1200
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1204
    :goto_13
    return-void

    .line 1203
    :cond_14
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_13
.end method

.method public setDateTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 1080
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_c

    .line 1081
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    .line 1082
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->updateDateTextSize()V

    .line 1083
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->invalidateAllWeekViews()V

    .line 1085
    :cond_c
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1095
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1178
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_5

    .line 1185
    :goto_4
    return-void

    .line 1181
    :cond_5
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    .line 1182
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V

    .line 1183
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 1184
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    goto :goto_4
.end method

.method public setFocusedMonthDateColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 976
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_23

    .line 977
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    .line 978
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 979
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 980
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 981
    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 982
    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    .line 979
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 986
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setMaxDate(J)V
    .registers 8
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 1137
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1138
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1154
    :goto_10
    return-void

    .line 1141
    :cond_11
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1143
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V

    .line 1144
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 1145
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1146
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setDate(J)V

    goto :goto_10

    .line 1152
    :cond_33
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_10
.end method

.method public setMinDate(J)V
    .registers 8
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 1104
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1105
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1128
    :goto_10
    return-void

    .line 1108
    :cond_11
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1113
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 1114
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1115
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1118
    :cond_2b
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V

    .line 1119
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1120
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setDate(J)V

    goto :goto_10

    .line 1126
    :cond_42
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_10
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .prologue
    .line 1213
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 1214
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .registers 4
    .param p1, "resourceId"    # I

    .prologue
    .line 1042
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1043
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1048
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_23

    .line 1049
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 1050
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1051
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 1052
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 1053
    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1054
    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    .line 1051
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1058
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 957
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_23

    .line 958
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    .line 959
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 960
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 961
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 962
    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 963
    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    .line 960
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 967
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .registers 3
    .param p1, "showWeekNumber"    # Z

    .prologue
    .line 1163
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_5

    .line 1169
    :goto_4
    return-void

    .line 1166
    :cond_5
    iput-boolean p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    .line 1167
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 1168
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    goto :goto_4
.end method

.method public setShownWeekCount(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 944
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_b

    .line 945
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    .line 946
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    .line 948
    :cond_b
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 995
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_23

    .line 996
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    .line 997
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 998
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 999
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .line 1000
    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1001
    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    .line 998
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1005
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 1067
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_9

    .line 1068
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    .line 1069
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    .line 1071
    :cond_9
    return-void
.end method

.method public setWeekNumberColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 1014
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_d

    .line 1015
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    .line 1016
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    if-eqz v0, :cond_d

    .line 1017
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->invalidateAllWeekViews()V

    .line 1020
    :cond_d
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 1029
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_9

    .line 1030
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    .line 1031
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->invalidateAllWeekViews()V

    .line 1033
    :cond_9
    return-void
.end method
