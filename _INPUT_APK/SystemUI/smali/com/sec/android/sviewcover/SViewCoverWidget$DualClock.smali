.class public Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualClock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$HomeCityChangeObserver;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;
    }
.end annotation


# static fields
.field static final DATE_FORMAT_CHANGED:Ljava/lang/String; = "clock.date_format_changed"

.field static final HOME_CITY_CHANGED:Ljava/lang/String; = "dualclock.homecity_timezone"

.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDateFormatObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mHomeAmPm:Landroid/widget/TextView;

.field mHomeCalendar:Ljava/util/Calendar;

.field private mHomeCityChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$HomeCityChangeObserver;

.field private mHomeClock:Landroid/widget/LinearLayout;

.field private mHomeClockRoot:Landroid/widget/LinearLayout;

.field private mHomeClockView:Landroid/widget/LinearLayout;

.field private mHomeMonthandDay:Landroid/widget/TextView;

.field private mHomeRegionText:Landroid/widget/TextView;

.field private mHomeTime:Landroid/widget/TextView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mIsDualClock:Z

.field private mRoamingAmPm:Landroid/widget/TextView;

.field mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingClock:Landroid/widget/LinearLayout;

.field private mRoamingClockRoot:Landroid/widget/LinearLayout;

.field private mRoamingClockView:Landroid/widget/LinearLayout;

.field private mRoamingMonthandDay:Landroid/widget/TextView;

.field private mRoamingRegionText:Landroid/widget/TextView;

.field private mRoamingTime:Landroid/widget/TextView;

.field private mTimeFormatChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 640
    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 712
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 638
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIs24HTime:Z

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 670
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsDualClock:Z

    .line 678
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->MSG_CLOCK_UPDATE:I

    .line 679
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mClockHandler:Landroid/os/Handler;

    .line 689
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 713
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    .line 714
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->initClock(Landroid/content/Context;)V

    .line 715
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualClock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
    .param p1, "x1"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->onTimeChanged()V

    return-void
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1009
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 1011
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 1012
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 1013
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 1015
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 1016
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 1017
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 1018
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 1021
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 1024
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 1027
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 719
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormatChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;

    .line 720
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homecity_timezone"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsDualClock:Z

    .line 726
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 12

    .prologue
    .line 863
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    .line 864
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initClock() : TimeZone ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 867
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, "locale":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 869
    const-string v9, "ja_JP"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 870
    const-string v9, "K:mm"

    sput-object v9, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormat:Ljava/lang/String;

    .line 876
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "homecity_timezone"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 878
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 879
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    .line 880
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 881
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsDualClock:Z

    .line 884
    :cond_1
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIs24HTime:Z

    if-eqz v9, :cond_e

    .line 885
    const-string v9, "kk:mm"

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 886
    .local v7, "tmp":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 887
    .local v6, "times":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsCover2:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_2

    .line 890
    const-string v9, "1"

    const-string v10, "Pc"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 892
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 899
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    :cond_3
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 903
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 923
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 924
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    const-string v10, "AA"

    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 928
    :cond_5
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsDualClock:Z

    if-eqz v9, :cond_8

    .line 929
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIs24HTime:Z

    if-eqz v9, :cond_10

    .line 930
    const-string v9, "kk:mm"

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 931
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 932
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsCover2:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_6

    .line 935
    const-string v9, "1"

    const-string v10, "Pc"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 937
    :try_start_1
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 943
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 946
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 966
    :cond_7
    :goto_4
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    const-string v10, "AA"

    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 971
    :cond_8
    const-string v0, ""

    .line 972
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 973
    .local v8, "value":Ljava/lang/String;
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 974
    .local v3, "resId_MM_dd":I
    sget v4, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    .line 976
    .local v4, "resId_dd_MM":I
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v9, :cond_12

    .line 977
    sget v3, Lcom/sec/android/sviewcover/R$string;->clear_cover_month_day_no_year:I

    .line 978
    sget v4, Lcom/sec/android/sviewcover/R$string;->clear_cover_day_month_no_year:I

    .line 989
    :goto_5
    const-string v9, "yyyy-MM-dd"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "MM-dd-yyyy"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 990
    :cond_9
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 994
    :cond_a
    :goto_6
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    .line 995
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mDayofWeek:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    :cond_b
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1001
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsDualClock:Z

    if-eqz v9, :cond_c

    .line 1002
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1005
    :cond_c
    return-void

    .line 872
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "resId_MM_dd":I
    .end local v4    # "resId_dd_MM":I
    .end local v6    # "times":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/CharSequence;
    .end local v8    # "value":Ljava/lang/String;
    :cond_d
    const-string v9, "h:mm"

    sput-object v9, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 893
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "times":Ljava/lang/String;
    .restart local v7    # "tmp":Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    .line 894
    .local v5, "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 895
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 905
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v6    # "times":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/CharSequence;
    :cond_e
    sget-object v9, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormat:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 906
    .restart local v7    # "tmp":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 907
    .restart local v6    # "times":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsCover2:Z

    if-eqz v9, :cond_f

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_f

    .line 910
    const-string v9, "1"

    const-string v10, "Pc"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 912
    :try_start_2
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 918
    :cond_f
    :goto_7
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 921
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 913
    :catch_1
    move-exception v5

    .line 914
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 915
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 938
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v5

    .line 939
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 940
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 948
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_10
    sget-object v9, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormat:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 949
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 950
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsCover2:Z

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_11

    .line 953
    const-string v9, "1"

    const-string v10, "Pc"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 955
    :try_start_3
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 961
    :cond_11
    :goto_8
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 964
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 956
    :catch_3
    move-exception v5

    .line 957
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 958
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 980
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v3    # "resId_MM_dd":I
    .restart local v4    # "resId_dd_MM":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_12
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsDualClock:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 981
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_dual_wday_month_day_no_year:I

    .line 982
    sget v4, Lcom/sec/android/sviewcover/R$string;->sview_cover_dual_wday_day_month_no_year:I

    goto/16 :goto_5

    .line 984
    :cond_13
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 985
    sget v4, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    goto/16 :goto_5

    .line 991
    :cond_14
    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 992
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method


# virtual methods
.method public getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1034
    const-string v0, ""

    .line 1036
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 1037
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1039
    :cond_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1043
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1046
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1047
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIs24HTime:Z

    if-eqz v5, :cond_3

    .line 1048
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1053
    .local v3, "mTTSTime":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    return-object v0

    .line 1040
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_2
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1041
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1050
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_3
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1051
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1060
    const-string v0, ""

    .line 1062
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 1063
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1064
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1065
    :cond_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1072
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1073
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 1074
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, "mTTSTime":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    return-object v0

    .line 1066
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1067
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1076
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_4
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 1078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 819
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 820
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIs24HTime:Z

    .line 821
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->onTimeChanged()V

    .line 823
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 825
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v1, "clock.date_format_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    const-string v1, "dualclock.homecity_timezone"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mTimeFormatChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 839
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mDateFormatObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://settings/system/date_format"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mDateFormatObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 844
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$HomeCityChangeObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$HomeCityChangeObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCityChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$HomeCityChangeObserver;

    .line 845
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "homecity_timezone"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeCityChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$HomeCityChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 847
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 851
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 854
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 778
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 779
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 780
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsCover2:Z

    .line 781
    const/4 v1, 0x0

    .line 782
    .local v1, "clockTypeface":Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .line 784
    .local v0, "ampmTypeface":Landroid/graphics/Typeface;
    iget-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mIsCover2:Z

    if-eqz v3, :cond_0

    .line 785
    const-string v3, "system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 793
    :goto_0
    sget v3, Lcom/sec/android/sviewcover/R$id;->roaming_clock_root:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    .line 794
    sget v3, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_time:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    .line 795
    sget v3, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_ampm:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    .line 796
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mDayofWeek:Landroid/widget/TextView;

    .line 797
    sget v3, Lcom/sec/android/sviewcover/R$id;->roaming_digital_month_day:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingMonthandDay:Landroid/widget/TextView;

    .line 798
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 799
    sget v3, Lcom/sec/android/sviewcover/R$id;->roaming_clock:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingClock:Landroid/widget/LinearLayout;

    .line 800
    sget v3, Lcom/sec/android/sviewcover/R$id;->region_roaming:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingRegionText:Landroid/widget/TextView;

    .line 804
    sget v3, Lcom/sec/android/sviewcover/R$id;->home_clock_root:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeClockRoot:Landroid/widget/LinearLayout;

    .line 805
    sget v3, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_time:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    .line 806
    sget v3, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_ampm:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    .line 809
    sget v3, Lcom/sec/android/sviewcover/R$id;->home_digital_month_day:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeMonthandDay:Landroid/widget/TextView;

    .line 810
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 811
    sget v3, Lcom/sec/android/sviewcover/R$id;->home_clock:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeClock:Landroid/widget/LinearLayout;

    .line 812
    sget v3, Lcom/sec/android/sviewcover/R$id;->region_home:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeRegionText:Landroid/widget/TextView;

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->refreshClock()V

    .line 815
    return-void

    .line 787
    :cond_0
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/SAMSUNG_CLOCK_NUMERALS.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 858
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 859
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 860
    return-void
.end method

.method public refreshClock()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 729
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "locale":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-eqz v0, :cond_3

    .line 733
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 734
    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 735
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 736
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 737
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 749
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 750
    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 751
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 752
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 753
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 755
    :cond_2
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 765
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    return-void

    .line 741
    :cond_4
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 742
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_5

    .line 743
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 745
    :cond_5
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 757
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 758
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_7

    .line 759
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 761
    :cond_7
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public replaceText()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingRegionText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mRoamingRegionText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_screen_roaming:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeRegionText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mHomeRegionText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_screen_home:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 774
    :cond_1
    return-void
.end method
