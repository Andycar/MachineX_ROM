.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$TwTextWatcher;,
        Landroid/widget/TimePickerClockDelegate$TwKeyListener;,
        Landroid/widget/TimePickerClockDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final PICKER_HOUR:I

.field private final PICKER_MINUTE:I

.field private TW_DEBUG:Z

.field private final mAmPmButton:Landroid/widget/Button;

.field private mAmPmDecrementButton:Landroid/widget/ImageButton;

.field private mAmPmIncrementButton:Landroid/widget/ImageButton;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourDecrementButton:Landroid/widget/ImageButton;

.field private mHourFormat:C

.field private mHourIncrementButton:Landroid/widget/ImageButton;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteDecrementButton:Landroid/widget/ImageButton;

.field private mMinuteIncrementButton:Landroid/widget/ImageButton;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 24
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 112
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 96
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 913
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TimePickerClockDelegate;->TW_DEBUG:Z

    .line 915
    const/4 v14, 0x3

    new-array v14, v14, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    .line 917
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TimePickerClockDelegate;->PICKER_HOUR:I

    .line 918
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TimePickerClockDelegate;->PICKER_MINUTE:I

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 117
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v14, 0xa

    const v15, 0x10900fb

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 119
    .local v10, "layoutResourceId":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 122
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v15, 0x1

    invoke-virtual {v9, v10, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    const v14, 0x1020477

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerClockDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v15, 0x10203f7

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const v15, 0x2000005

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v15, 0x102047a

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDivider:Landroid/widget/TextView;

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v14, :cond_ab

    .line 152
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->setDividerText()V

    .line 156
    :cond_ab
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v15, 0x1020478

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v15, 0x3b

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerClockDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v15, 0x10203f7

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v15, 0x2000006

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 199
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerClockDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v15, 0x1020479

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 203
    .local v7, "amPmView":Landroid/view/View;
    instance-of v14, v7, Landroid/widget/Button;

    if-eqz v14, :cond_2cc

    .line 204
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 205
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v14, v7

    .line 206
    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance v15, Landroid/widget/TimePickerClockDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :goto_151
    new-instance v4, Landroid/widget/TimePickerClockDelegate$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TimePickerClockDelegate$5;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    .line 255
    .local v4, "TouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourIncrementButton:Landroid/widget/ImageButton;

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourDecrementButton:Landroid/widget/ImageButton;

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_195

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    :cond_195
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1a2

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1af

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mHourDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    :cond_1af
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1bc

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    :cond_1bc
    instance-of v14, v7, Landroid/widget/Button;

    if-nez v14, :cond_210

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_210

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_210

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    :cond_210
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->isAmPmAtStart()Z

    move-result v14

    if-eqz v14, :cond_23e

    .line 289
    const v14, 0x1020476

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 290
    .local v6, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 291
    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 294
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 296
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    .line 297
    .local v12, "startMargin":I
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    .line 298
    .local v8, "endMargin":I
    if-eq v12, v8, :cond_23e

    .line 299
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 300
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 304
    .end local v6    # "amPmParent":Landroid/view/ViewGroup;
    .end local v8    # "endMargin":I
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "startMargin":I
    :cond_23e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->getHourFormatData()V

    .line 307
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateHourControl()V

    .line 308
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateMinuteControl()V

    .line 309
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateAmPmControl()V

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v15, 0xb

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TimePickerClockDelegate;->setCurrentHour(Ljava/lang/Integer;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TimePickerClockDelegate;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_27c

    .line 316
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TimePickerClockDelegate;->setEnabled(Z)V

    .line 320
    :cond_27c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->setContentDescriptions()V

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v14}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_291

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 328
    :cond_291
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->setTextWatcher()V

    .line 331
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_2cb

    .line 332
    new-instance v13, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 333
    .local v13, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v14

    if-eqz v14, :cond_334

    .line 334
    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 342
    :goto_2ac
    new-instance v14, Landroid/widget/TimePickerClockDelegate$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerClockDelegate$6;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 379
    new-instance v14, Landroid/widget/TimePickerClockDelegate$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerClockDelegate$7;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->setWritingBuddyEnabled(Z)V

    .line 450
    .end local v13    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_2cb
    return-void

    .line 216
    .end local v4    # "TouchListener":Landroid/view/View$OnTouchListener;
    :cond_2cc
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    move-object v14, v7

    .line 217
    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerClockDelegate$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerClockDelegate$4;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v15, 0x10203f7

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_151

    .line 336
    .restart local v4    # "TouchListener":Landroid/view/View$OnTouchListener;
    .restart local v13    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_334
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    if-eqz v14, :cond_341

    .line 337
    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_2ac

    .line 339
    :cond_341
    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_2ac
.end method

.method static synthetic access$000(Landroid/widget/TimePickerClockDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePickerClockDelegate;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/TimePickerClockDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->TW_DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TimePickerClockDelegate;)[Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/TimePickerClockDelegate;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 900
    new-array v1, v5, [Ljava/lang/String;

    .line 901
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 902
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_30

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    :goto_1f
    aput-object v2, v1, v3

    .line 903
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_35

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    :goto_2d
    aput-object v2, v1, v4

    .line 904
    return-object v1

    .line 902
    :cond_30
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_1f

    .line 903
    :cond_35
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto :goto_2d
.end method

.method private getHourFormatData()V
    .registers 8

    .prologue
    .line 453
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_3d

    const-string v5, "Hm"

    :goto_8
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 456
    .local v4, "lengthPattern":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourWithTwoDigit:Z

    .line 457
    const/4 v2, 0x0

    .line 460
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v4, :cond_3c

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 462
    .local v1, "c":C
    const/16 v5, 0x48

    if-eq v1, v5, :cond_2b

    const/16 v5, 0x68

    if-eq v1, v5, :cond_2b

    const/16 v5, 0x4b

    if-eq v1, v5, :cond_2b

    const/16 v5, 0x6b

    if-ne v1, v5, :cond_40

    .line 463
    :cond_2b
    iput-char v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormat:C

    .line 464
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_3c

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_3c

    .line 465
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourWithTwoDigit:Z

    .line 470
    .end local v1    # "c":C
    :cond_3c
    return-void

    .line 453
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourFormat":C
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    :cond_3d
    const-string v5, "hm"

    goto :goto_8

    .line 460
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "hourFormat":C
    .restart local v3    # "i":I
    .restart local v4    # "lengthPattern":I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method private isAmPmAtStart()Z
    .registers 4

    .prologue
    .line 473
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isWritingBuddyFeatureEnabled()Z
    .registers 2

    .prologue
    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method private onTimeChanged()V
    .registers 5

    .prologue
    .line 778
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 779
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_21

    .line 780
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 783
    :cond_21
    return-void
.end method

.method private setContentDescriptions()V
    .registers 5

    .prologue
    const v3, 0x10203f8

    const v2, 0x10203f6

    .line 828
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040583

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerClockDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 830
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040584

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerClockDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 833
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040585

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerClockDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 835
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040586

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerClockDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 838
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_3a

    .line 839
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040587

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerClockDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 841
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040588

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerClockDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 844
    :cond_3a
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .registers 5
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 517
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 539
    :cond_a
    :goto_a
    return-void

    .line 520
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 522
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_3c

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    .line 524
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2a

    .line 525
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 533
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateAmPmControl()V

    .line 535
    :cond_2d
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 536
    if-eqz p2, :cond_a

    .line 537
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    goto :goto_a

    .line 528
    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    .line 529
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2a

    .line 530
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2a
.end method

.method private setDividerText()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 488
    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_25

    const-string v4, "Hm"

    .line 489
    .local v4, "skeleton":Ljava/lang/String;
    :goto_7
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 493
    .local v1, "hourIndex":I
    if-ne v1, v7, :cond_1b

    .line 494
    const/16 v5, 0x68

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 496
    :cond_1b
    if-ne v1, v7, :cond_28

    .line 498
    const-string v3, ":"

    .line 507
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1f
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    return-void

    .line 488
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hourIndex":I
    .end local v3    # "separatorText":Ljava/lang/String;
    .end local v4    # "skeleton":Ljava/lang/String;
    :cond_25
    const-string v4, "hm"

    goto :goto_7

    .line 500
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hourIndex":I
    .restart local v4    # "skeleton":Ljava/lang/String;
    :cond_28
    const/16 v5, 0x6d

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 501
    .local v2, "minuteIndex":I
    if-ne v2, v7, :cond_3d

    .line 502
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1f

    .line 504
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1f
.end method

.method private setTextWatcher()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 928
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 929
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 931
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;-><init>(Landroid/widget/TimePickerClockDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 932
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;-><init>(Landroid/widget/TimePickerClockDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 934
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePickerClockDelegate$TwKeyListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/TimePickerClockDelegate$TwKeyListener;-><init>(Landroid/widget/TimePickerClockDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 935
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePickerClockDelegate$TwKeyListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/TimePickerClockDelegate$TwKeyListener;-><init>(Landroid/widget/TimePickerClockDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 936
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 847
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 849
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 851
    :cond_f
    return-void
.end method

.method private updateAmPmControl()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 747
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 748
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_19

    .line 749
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 763
    :goto_12
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 764
    return-void

    .line 751
    :cond_19
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12

    .line 754
    :cond_1f
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    if-eqz v2, :cond_33

    move v0, v1

    .line 755
    .local v0, "index":I
    :goto_24
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_35

    .line 756
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 757
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_12

    .line 754
    .end local v0    # "index":I
    :cond_33
    const/4 v0, 0x1

    goto :goto_24

    .line 759
    .restart local v0    # "index":I
    :cond_35
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12
.end method

.method private updateHourControl()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 786
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 788
    iget-char v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_28

    .line 789
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 790
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 805
    :goto_1a
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_55

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 806
    return-void

    .line 792
    :cond_28
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 793
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1a

    .line 797
    :cond_35
    iget-char v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_48

    .line 798
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 799
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1a

    .line 801
    :cond_48
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 802
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1a

    .line 805
    :cond_55
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private updateInputState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 717
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_21

    .line 718
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 721
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 722
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_21

    .line 723
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 744
    :cond_21
    :goto_21
    return-void

    .line 726
    :cond_22
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 729
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 730
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_21

    .line 731
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_21

    .line 734
    :cond_3d
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 737
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 738
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_21

    .line 739
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_21
.end method

.method private updateMinuteControl()V
    .registers 3

    .prologue
    const v1, 0x2000006

    .line 809
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 812
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 824
    :goto_e
    return-void

    .line 817
    :cond_f
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1c

    .line 818
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v1, 0x2000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_e

    .line 820
    :cond_1c
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_e
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 681
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 682
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 543
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 544
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 549
    :goto_10
    return-object v1

    .line 546
    :cond_11
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    if-eqz v1, :cond_1c

    .line 547
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    .line 549
    :cond_1c
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTimePickerText()[Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 640
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 650
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/TimePickerClockDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 651
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 702
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 703
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 707
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 708
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 687
    const/4 v0, 0x1

    .line 688
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_39

    .line 689
    or-int/lit16 v0, v0, 0x80

    .line 693
    :goto_7
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 694
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 695
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    return-void

    .line 691
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_39
    or-int/lit8 v0, v0, 0x40

    goto :goto_7
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 674
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    .line 675
    .local v0, "ss":Landroid/widget/TimePickerClockDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentHour(Ljava/lang/Integer;)V

    .line 676
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 677
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 6
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 656
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateInputState()V

    .line 658
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    .line 659
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 661
    :cond_c
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_15

    .line 662
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 664
    :cond_15
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    .line 665
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 669
    :cond_1e
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerClockDelegate$1;)V

    return-object v0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 513
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 773
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 774
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 775
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 556
    if-nez p1, :cond_3

    .line 566
    :cond_2
    :goto_2
    return-void

    .line 561
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 564
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 565
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 619
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 621
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 623
    :cond_e
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2a

    .line 625
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 629
    :goto_1c
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 632
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 633
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setWritingBuddyEnabled(Z)V

    .line 636
    :cond_29
    return-void

    .line 627
    :cond_2a
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1c
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 575
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_a

    .line 605
    :cond_9
    :goto_9
    return-void

    .line 579
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 581
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    .line 582
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getHourFormatData()V

    .line 583
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHourControl()V

    .line 585
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Landroid/widget/TimePickerClockDelegate;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 586
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateMinuteControl()V

    .line 587
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateAmPmControl()V

    .line 590
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 591
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v2, v4}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    .line 592
    .local v1, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    if-eqz v1, :cond_9

    .line 593
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_43

    .line 594
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_9

    .line 596
    :cond_43
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIsAm:Z

    if-eqz v2, :cond_4d

    .line 597
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_9

    .line 599
    :cond_4d
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_9
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 614
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 615
    return-void
.end method
