.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatePickerSpinnerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;,
        Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final TW_DEBUG:Z

.field static final productName:Ljava/lang/String;


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private isMonthJan:Z

.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayDecrementButton:Landroid/widget/ImageButton;

.field private mDayIncrementButton:Landroid/widget/ImageButton;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mIsEnabled:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthDecrementButton:Landroid/widget/ImageButton;

.field mMonthEdit:Landroid/widget/EditText;

.field private mMonthIncrementButton:Landroid/widget/ImageButton;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mWBOriginSpninnerHeight:I

.field private mYearDecrementButton:Landroid/widget/ImageButton;

.field private mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mYearIncrementButton:Landroid/widget/ImageButton;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 608
    const-string/jumbo v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->productName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 30
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 617
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 580
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "MM/dd/yyyy"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 592
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 611
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    .line 612
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    .line 1501
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    .line 1503
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isMonthJan:Z

    .line 1504
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->PICKER_DAY:I

    .line 1505
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->PICKER_MONTH:I

    .line 1506
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->PICKER_YEAR:I

    .line 1508
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->FORMAT_MMDDYYYY:I

    .line 1509
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->FORMAT_DDMMYYYY:I

    .line 1510
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->FORMAT_YYYYMMDD:I

    .line 1516
    new-instance v20, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1526
    new-instance v20, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 619
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 620
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 623
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 625
    sget-object v20, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 627
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v20, 0x6

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 629
    .local v17, "spinnersShown":Z
    const/16 v20, 0x7

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 631
    .local v8, "calendarViewShown":Z
    const/16 v20, 0x1

    const/16 v21, 0x76c

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 633
    .local v18, "startYear":I
    const/16 v20, 0x2

    const/16 v21, 0x834

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 634
    .local v9, "endYear":I
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 635
    .local v14, "minDate":Ljava/lang/String;
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 636
    .local v13, "maxDate":Ljava/lang/String;
    const/16 v20, 0x13

    const v21, 0x1090043

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 638
    .local v11, "layoutResourceId":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 640
    new-instance v16, Landroid/util/TypedValue;

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    .line 641
    .local v16, "outValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    const v21, 0x10105a2

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 642
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v20, v0

    if-eqz v20, :cond_132

    .line 643
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    .line 646
    :cond_132
    const-string v20, "layout_inflater"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 648
    .local v10, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 650
    new-instance v15, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 703
    .local v15, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    const v21, 0x1020361

    invoke-virtual/range {v20 .. v21}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    const v21, 0x1020365

    invoke-virtual/range {v20 .. v21}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CalendarView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    move-object/from16 v20, v0

    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    const v21, 0x1020363

    invoke-virtual/range {v20 .. v21}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/NumberPicker;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const v21, 0x10203f7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    const v21, 0x1020362

    invoke-virtual/range {v20 .. v21}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/NumberPicker;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const v21, 0x10203f7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 730
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v20

    if-eqz v20, :cond_507

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 744
    :goto_25c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const-wide/16 v22, 0xc8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    const v21, 0x1020364

    invoke-virtual/range {v20 .. v21}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/NumberPicker;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const v21, 0x10203f7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 757
    new-instance v6, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$3;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 768
    .local v6, "TouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayIncrementButton:Landroid/widget/ImageButton;

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthIncrementButton:Landroid/widget/ImageButton;

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearIncrementButton:Landroid/widget/ImageButton;

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayDecrementButton:Landroid/widget/ImageButton;

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthDecrementButton:Landroid/widget/ImageButton;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearDecrementButton:Landroid/widget/ImageButton;

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_348

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 777
    :cond_348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_35b

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 779
    :cond_35b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_36e

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 781
    :cond_36e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_381

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 783
    :cond_381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_394

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 785
    :cond_394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3a7

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 791
    :cond_3a7
    if-nez v17, :cond_548

    if-nez v8, :cond_548

    .line 792
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 799
    :goto_3b4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->clear()V

    .line 800
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_556

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v20

    if-nez v20, :cond_3e8

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 807
    :cond_3e8
    :goto_3e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setMinDate(J)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->clear()V

    .line 811
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_56d

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v20

    if-nez v20, :cond_42b

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    const/16 v22, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 818
    :cond_42b
    :goto_42b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 826
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->reorderSpinners()V

    .line 829
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setContentDescriptions()V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v20

    if-nez v20, :cond_49d

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 837
    :cond_49d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v20, v0

    # invokes: Landroid/widget/DatePicker;->isWritingBuddyFeatureEnabled()Z
    invoke-static/range {v20 .. v20}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)Z

    move-result v20

    if-eqz v20, :cond_506

    .line 838
    new-instance v19, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 839
    .local v19, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 840
    new-instance v20, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 869
    new-instance v20, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setWritingBuddyEnabled(Z)V

    .line 911
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_506

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 914
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_506

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    move/from16 v20, v0

    if-nez v20, :cond_506

    .line 915
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    .line 920
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_506
    return-void

    .line 737
    .end local v6    # "TouchListener":Landroid/view/View$OnTouchListener;
    :cond_507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setInputType(I)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    goto/16 :goto_25c

    .line 794
    .restart local v6    # "TouchListener":Landroid/view/View$OnTouchListener;
    :cond_548
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 795
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    goto/16 :goto_3b4

    .line 805
    :cond_556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_3e8

    .line 816
    :cond_56d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    const/16 v22, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_42b
.end method

.method static synthetic access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # C
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-direct {p0, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2402(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 548
    iput-boolean p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isMonthJan:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/CalendarView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 548
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 6
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1167
    if-nez p1, :cond_7

    .line 1168
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1173
    :goto_6
    return-object v2

    .line 1170
    :cond_7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1171
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1172
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_6
.end method

.method private getValueFromWBResult(CLjava/lang/String;)I
    .registers 11
    .param p1, "type"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1458
    const/4 v3, -0x1

    .line 1459
    .local v3, "result":I
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    move v4, v3

    .line 1491
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_e
    return v4

    .line 1462
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1463
    .local v5, "valueString":Ljava/lang/String;
    const/16 v6, 0x64

    if-ne p1, v6, :cond_20

    .line 1465
    :try_start_17
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1a} :catch_1d

    move-result v3

    :cond_1b
    :goto_1b
    move v4, v3

    .line 1491
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_e

    .line 1466
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_1d
    move-exception v2

    .line 1467
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1468
    goto :goto_1b

    .line 1469
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_20
    const/16 v6, 0x4d

    if-ne p1, v6, :cond_53

    .line 1470
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    if-nez v6, :cond_36

    .line 1472
    :cond_2e
    :try_start_2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_31} :catch_33

    move-result v3

    goto :goto_1b

    .line 1473
    :catch_33
    move-exception v2

    .line 1474
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1475
    goto :goto_1b

    .line 1477
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_36
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    array-length v0, v6

    .line 1478
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    if-ge v1, v0, :cond_1b

    .line 1479
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1480
    add-int/lit8 v3, v1, 0x1

    .line 1478
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1484
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_53
    const/16 v6, 0x79

    if-ne p1, v6, :cond_1b

    .line 1486
    :try_start_57
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5a} :catch_5c

    move-result v3

    goto :goto_1b

    .line 1487
    :catch_5c
    move-exception v2

    .line 1488
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1b
.end method

.method private isNewDate(III)Z
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 1239
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_1b

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private notifyDateChanged()V
    .registers 6

    .prologue
    .line 1367
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 1368
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1d

    .line 1369
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 1372
    :cond_1d
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .registers 7
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 1230
    :try_start_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1231
    const/4 v1, 0x1

    .line 1234
    :goto_a
    return v1

    .line 1232
    :catch_b
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/text/ParseException;
    # getter for: Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/DatePicker;->access$2200()Ljava/lang/String;

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

    .line 1234
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private reorderSpinners()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1183
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "yyyyMMMdd"

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1187
    .local v3, "pattern":Ljava/lang/String;
    invoke-static {v3}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v2

    .line 1188
    .local v2, "order":[C
    array-length v4, v2

    .line 1189
    .local v4, "spinnerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v4, :cond_51

    .line 1190
    aget-char v5, v2, v1

    sparse-switch v5, :sswitch_data_6e

    .line 1204
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1192
    :sswitch_28
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1193
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v5, v4, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 1189
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1196
    :sswitch_37
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1197
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v5, v4, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_34

    .line 1200
    :sswitch_44
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1201
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v5, v4, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_34

    .line 1212
    :cond_51
    aget-char v0, v2, v7

    .line 1213
    .local v0, "c":C
    const/16 v5, 0x4d

    if-ne v0, v5, :cond_5b

    .line 1214
    invoke-direct {p0, v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setTextWatcher(I)V

    .line 1220
    :cond_5a
    :goto_5a
    return-void

    .line 1215
    :cond_5b
    const/16 v5, 0x64

    if-ne v0, v5, :cond_64

    .line 1216
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setTextWatcher(I)V

    goto :goto_5a

    .line 1217
    :cond_64
    const/16 v5, 0x79

    if-ne v0, v5, :cond_5a

    .line 1218
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setTextWatcher(I)V

    goto :goto_5a

    .line 1190
    nop

    :sswitch_data_6e
    .sparse-switch
        0x4d -> :sswitch_37
        0x64 -> :sswitch_28
        0x79 -> :sswitch_44
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .registers 5

    .prologue
    const v3, 0x10203f8

    const v2, 0x10203f6

    .line 1403
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x104058b

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1405
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x104058c

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1408
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040589

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1410
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104058a

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1413
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104058d

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1415
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104058e

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1417
    return-void
.end method

.method private setDate(III)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1246
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1247
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1251
    :cond_1a
    :goto_1a
    return-void

    .line 1248
    :cond_1b
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1249
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1a
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .registers 8
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    const/high16 v3, 0x2000000

    .line 1386
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_15

    .line 1387
    const/4 v0, 0x5

    .line 1389
    .local v0, "imeOptions":I
    or-int/2addr v0, v3

    .line 1397
    :goto_8
    const v2, 0x10203f7

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1398
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1399
    return-void

    .line 1392
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_15
    const/4 v0, 0x6

    .line 1394
    .restart local v0    # "imeOptions":I
    or-int/2addr v0, v3

    goto :goto_8
.end method

.method private setTextWatcher(I)V
    .registers 9
    .param p1, "format"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V

    .line 1544
    packed-switch p1, :pswitch_data_18c

    .line 1588
    :goto_2d
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1589
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1590
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1591
    return-void

    .line 1546
    :pswitch_52
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1547
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1548
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1549
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1550
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1551
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1555
    :goto_8b
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1556
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1557
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_2d

    .line 1553
    :cond_ad
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_8b

    .line 1560
    :pswitch_ba
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1561
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1562
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1563
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1564
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 1565
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1566
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1570
    :goto_ff
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1571
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_2d

    .line 1568
    :cond_116
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_ff

    .line 1574
    :pswitch_123
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1576
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1577
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1578
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 1579
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1580
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1584
    :goto_168
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v4, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1585
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_2d

    .line 1582
    :cond_17f
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_168

    .line 1544
    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_ba
        :pswitch_123
    .end packed-switch
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 1420
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1421
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 1422
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1424
    :cond_f
    return-void
.end method

.method private twLog(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1621
    return-void
.end method

.method private updateCalendarView()V
    .registers 6

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 1360
    return-void
.end method

.method private updateInputState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1432
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1433
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    .line 1434
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1437
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1438
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1454
    :cond_1d
    :goto_1d
    return-void

    .line 1440
    :cond_1e
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1443
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1444
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1d

    .line 1446
    :cond_35
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1449
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1450
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1d
.end method

.method private updateSpinners()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1257
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_122

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_122

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_122

    .line 1262
    :cond_39
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1263
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1264
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1265
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1268
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1269
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1275
    :goto_79
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1316
    :goto_7e
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1319
    .local v0, "displayedValues":[Ljava/lang/String;
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 1320
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1327
    :goto_9f
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1328
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1329
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1332
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1334
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 1335
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1338
    :cond_e0
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 1339
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1345
    :goto_f3
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1347
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1348
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1350
    :cond_109
    return-void

    .line 1271
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_10a
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1272
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto/16 :goto_79

    .line 1278
    :cond_122
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1b4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1b4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1b4

    .line 1283
    :cond_156
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1284
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1285
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1286
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1288
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 1289
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1290
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1296
    :goto_196
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_7e

    .line 1292
    :cond_19d
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1293
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_196

    .line 1298
    :cond_1b4
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1299
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1300
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1301
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1e7

    .line 1304
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1305
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1311
    :goto_1e0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_7e

    .line 1307
    :cond_1e7
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1308
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1e0

    .line 1322
    .restart local v0    # "displayedValues":[Ljava/lang/String;
    :cond_1f4
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 1341
    :cond_1fb
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto/16 :goto_f3
.end method

.method private usingNumericMonths()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1153
    sget-object v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->productName:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->productName:Ljava/lang/String;

    const-string v1, "ks02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1154
    const/4 v0, 0x1

    .line 1157
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    goto :goto_10
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1099
    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .registers 2

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .registers 2

    .prologue
    .line 1064
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getDayOfMonth()I
    .registers 3

    .prologue
    .line 954
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 964
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .registers 5

    .prologue
    .line 1008
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1009
    .local v0, "maxDate":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1010
    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .registers 5

    .prologue
    .line 985
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 986
    .local v0, "minDate":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 987
    return-object v0
.end method

.method public getMonth()I
    .registers 3

    .prologue
    .line 949
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 3

    .prologue
    .line 944
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 925
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    .line 926
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    .line 927
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 928
    iput-object p4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 929
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1030
    iget-boolean v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1079
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 1080
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1112
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1113
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1117
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1118
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1104
    const/16 v0, 0x14

    .line 1105
    .local v0, "flags":I
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1090
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    .line 1091
    .local v0, "ss":Landroid/widget/DatePicker$SavedState;
    # getter for: Landroid/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1900(Landroid/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Landroid/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$2000(Landroid/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Landroid/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$2100(Landroid/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    .line 1092
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    .line 1093
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 1094
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 8
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1084
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V

    .line 1085
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .registers 6
    .param p1, "shown"    # Z

    .prologue
    .line 1040
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_3f

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 1043
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->isWritingBuddyFeatureEnabled()Z
    invoke-static {v2}, Landroid/widget/DatePicker;->access$1700(Landroid/widget/DatePicker;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-boolean v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_3e

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1045
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1046
    .local v1, "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1047
    .local v0, "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_42

    .line 1048
    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_3e

    .line 1050
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    .line 1051
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1060
    .end local v0    # "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_3e
    :goto_3e
    return-void

    .line 1040
    :cond_3f
    const/16 v2, 0x8

    goto :goto_5

    .line 1054
    .restart local v0    # "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_42
    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_3e

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    if-eq v2, v3, :cond_3e

    .line 1055
    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3e
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1127
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 1129
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 1130
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 1131
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 1132
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 1134
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 1135
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 1137
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1140
    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 1141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge v0, v1, :cond_63

    .line 1142
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1145
    .end local v0    # "i":I
    :cond_63
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1016
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1017
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1018
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 1019
    iput-boolean p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 1022
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->isWritingBuddyFeatureEnabled()Z
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1023
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setWritingBuddyEnabled(Z)V

    .line 1026
    :cond_23
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 959
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 960
    return-void
.end method

.method public setMaxDate(J)V
    .registers 8
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 992
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 993
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 1004
    :goto_23
    return-void

    .line 997
    :cond_24
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 998
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 999
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1000
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1001
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 1003
    :cond_46
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    goto :goto_23
.end method

.method public setMinDate(J)V
    .registers 8
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 969
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 970
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 981
    :goto_23
    return-void

    .line 974
    :cond_24
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 975
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 976
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 977
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 978
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 980
    :cond_46
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    goto :goto_23
.end method

.method public setSpinnersShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 1069
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1070
    return-void

    .line 1069
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 933
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 940
    :goto_6
    return-void

    .line 936
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    .line 937
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    .line 938
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 939
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V

    goto :goto_6
.end method
