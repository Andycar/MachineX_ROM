.class public Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;
.super Landroid/widget/LinearLayout;
.source "SeckeyguardClockSingleImageView.java"


# static fields
.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field private static final MSG_SINGLE_CLOCK_SETTINGS_CHANGED:I = 0x66

.field public static TAG:Ljava/lang/String;


# instance fields
.field private DAY:[I

.field private DIGITS:[I

.field private MONTH:[I

.field private mAMPM:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field mContext:Landroid/content/Context;

.field private mDateAndTimeContainerVisible:Z

.field private mDateContainerVisible:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHour10th:Landroid/widget/ImageView;

.field private mHour1th:Landroid/widget/ImageView;

.field private mHourMinSplit:Landroid/widget/ImageView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMin10th:Landroid/widget/ImageView;

.field private mMin1th:Landroid/widget/ImageView;

.field private mSingleClockContainer:Landroid/widget/LinearLayout;

.field private mSingleClockSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "SeckeyguardClockSingleImageView"

    sput-object v0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mDateContainerVisible:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mDateAndTimeContainerVisible:Z

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_3:I

    aput v1, v0, v6

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_4:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DIGITS:[I

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->day7:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->day1:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->day2:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->day3:I

    aput v1, v0, v6

    sget v1, Lcom/android/keyguard/R$drawable;->day4:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->day5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->day6:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DAY:[I

    .line 88
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->month1:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->month2:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->month3:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->month4:I

    aput v1, v0, v6

    sget v1, Lcom/android/keyguard/R$drawable;->month5:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->month6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->month7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->month8:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->month9:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->month10:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/keyguard/R$drawable;->month11:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/keyguard/R$drawable;->month12:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->MONTH:[I

    .line 104
    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$1;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->updateClockTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 3

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->isShowDateOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mDateContainerVisible:Z

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "showBackColor":Z
    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const-string v2, "#FF00FF00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setBackgroundColor(I)V

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 210
    :cond_2
    return-void
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mDateAndTimeContainerVisible:Z

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->isShowDateOn()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 239
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 230
    goto :goto_0

    :cond_3
    move v1, v2

    .line 236
    goto :goto_1
.end method

.method private isShowDateOn()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHour(I)V
    .locals 5
    .param p1, "hour"    # I

    .prologue
    const/4 v4, 0x0

    .line 500
    if-nez p1, :cond_0

    .line 502
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour1th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    :goto_0
    return-void

    .line 510
    :cond_0
    rem-int/lit8 v1, p1, 0xa

    .line 512
    .local v1, "hour_zero":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour1th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    div-int/lit8 v0, p1, 0xa

    .line 516
    .local v0, "hour_tenth":I
    if-eqz v0, :cond_1

    .line 518
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(I)V
    .locals 4
    .param p1, "min"    # I

    .prologue
    .line 532
    rem-int/lit8 v1, p1, 0xa

    .line 534
    .local v1, "min_zero":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mMin1th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 536
    div-int/lit8 v0, p1, 0xa

    .line 538
    .local v0, "min_tenth":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mMin10th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    return-void
.end method

.method private updateClockTime()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x4

    .line 377
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 379
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 381
    .local v3, "minutes":I
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 383
    .local v1, "hour":I
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 385
    .local v2, "hour_day":I
    sget-object v4, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "hour : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "hour_day : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-boolean v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mDateAndTimeContainerVisible:Z

    if-eqz v4, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->is24HourModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 395
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->setHour(I)V

    .line 409
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->setMin(I)V

    .line 411
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->is24HourModeEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 413
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mAMPM:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 415
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mAMPM:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    .line 431
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v4, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->isShowDateOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 435
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 449
    :cond_0
    :goto_2
    return-void

    .line 399
    :cond_1
    if-nez v1, :cond_2

    .line 401
    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->setHour(I)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->setHour(I)V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mAMPM:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_1

    .line 425
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 443
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 7

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 571
    .local v0, "locale":Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 575
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 577
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 579
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 583
    const-string v4, "24"

    .line 597
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 601
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :goto_1
    return v5

    .line 587
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "12"

    goto :goto_0

    .line 593
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 601
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 246
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    new-instance v1, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$2;

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$2;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    .line 302
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 314
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 318
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mDateAndTimeContainerVisible:Z

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->is24HourModeEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mAMPM:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 344
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->isShowDateOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 348
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mDateContainerVisible:Z

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->updateClockTime()V

    .line 354
    return-void

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mAMPM:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 363
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 373
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 168
    sget-object v0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->TAG:Ljava/lang/String;

    const-string v1, "On finish inflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget v0, Lcom/android/keyguard/R$id;->single_clock_time_image_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleClockContainer:Landroid/widget/LinearLayout;

    .line 172
    sget v0, Lcom/android/keyguard/R$id;->hour_10th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    .line 174
    sget v0, Lcom/android/keyguard/R$id;->hour_1th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHour1th:Landroid/widget/ImageView;

    .line 176
    sget v0, Lcom/android/keyguard/R$id;->split_hour_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mHourMinSplit:Landroid/widget/ImageView;

    .line 178
    sget v0, Lcom/android/keyguard/R$id;->minute_10th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mMin10th:Landroid/widget/ImageView;

    .line 180
    sget v0, Lcom/android/keyguard/R$id;->minute_1th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mMin1th:Landroid/widget/ImageView;

    .line 182
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_ampm_image:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mAMPM:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 185
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_date_image:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 188
    return-void
.end method
