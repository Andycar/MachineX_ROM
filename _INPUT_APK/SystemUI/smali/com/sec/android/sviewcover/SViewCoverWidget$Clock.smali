.class public Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$DateFormatObserver;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;
    }
.end annotation


# static fields
.field static final DATE_FORMAT_CHANGED:Ljava/lang/String; = "clock.date_format_changed"

.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmPm:Landroid/widget/TextView;

.field mCalendar:Ljava/util/Calendar;

.field private mClockHandler:Landroid/os/Handler;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDateFormatObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$DateFormatObserver;

.field private mDayMonthView:Landroid/widget/LinearLayout;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mFestivalEnabled:Z

.field private mFestivalIcon:Landroid/widget/ImageView;

.field private mFestivalLockscreenObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

.field private mFestivalObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormatChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 132
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->MSG_CLOCK_UPDATE:I

    .line 133
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    .line 190
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->initClock(Landroid/content/Context;)V

    .line 191
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalEnabled:Z

    return p1
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 545
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 546
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 547
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 549
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 550
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 551
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 552
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 555
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 558
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 561
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "festivalday"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_festival_effect_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "themePackageName":Ljava/lang/String;
    const-string v3, "festivalrespreload2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 249
    .local v1, "themeType":I
    :goto_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFestivalIcon() : festivalday="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v3, "birthday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    if-nez v1, :cond_2

    .line 253
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_birthday:I

    .line 298
    :cond_0
    :goto_1
    return v2

    .line 248
    .end local v1    # "themeType":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 255
    .restart local v1    # "themeType":I
    :cond_2
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_birthday:I

    goto :goto_1

    .line 256
    :cond_3
    const-string v3, "chinese_new_year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    if-nez v1, :cond_4

    .line 258
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_cnew_year:I

    goto :goto_1

    .line 260
    :cond_4
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_cnew_year:I

    goto :goto_1

    .line 261
    :cond_5
    const-string v3, "new_year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 262
    if-nez v1, :cond_6

    .line 263
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_new_year:I

    goto :goto_1

    .line 265
    :cond_6
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_new_year:I

    goto :goto_1

    .line 266
    :cond_7
    const-string v3, "lantern"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 267
    if-nez v1, :cond_8

    .line 268
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_lantern:I

    goto :goto_1

    .line 270
    :cond_8
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_lantern:I

    goto :goto_1

    .line 271
    :cond_9
    const-string v3, "chinese_valentine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 272
    if-nez v1, :cond_a

    .line 273
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_cvalentine:I

    goto :goto_1

    .line 275
    :cond_a
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_cvalentine:I

    goto :goto_1

    .line 276
    :cond_b
    const-string v3, "valentine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 277
    if-nez v1, :cond_c

    .line 278
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_valentine:I

    goto :goto_1

    .line 280
    :cond_c
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_valentine:I

    goto :goto_1

    .line 281
    :cond_d
    const-string v3, "dragon_boat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 282
    if-nez v1, :cond_e

    .line 283
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_dragonboat:I

    goto :goto_1

    .line 285
    :cond_e
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_dragonboat:I

    goto :goto_1

    .line 286
    :cond_f
    const-string v3, "mid_autumn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 287
    if-nez v1, :cond_10

    .line 288
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_mid_autumn:I

    goto :goto_1

    .line 290
    :cond_10
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_mid_autumn:I

    goto :goto_1

    .line 291
    :cond_11
    const-string v3, "christmas"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    if-nez v1, :cond_12

    .line 293
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_christmas:I

    goto/16 :goto_1

    .line 295
    :cond_12
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_christmas:I

    goto/16 :goto_1
.end method

.method private getSViewCoverSystemFeatureLevel()V
    .locals 4

    .prologue
    .line 521
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 522
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 523
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$602(I)I

    .line 524
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$600()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    return-void
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTimeFormatChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;

    .line 196
    return-void
.end method

.method private onTimeChanged()V
    .locals 14

    .prologue
    .line 413
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 414
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initClock() : TimeZone ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "locale":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 419
    const-string v11, "ja_JP"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 420
    const-string v11, "K:mm"

    sput-object v11, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTimeFormat:Ljava/lang/String;

    .line 426
    :cond_0
    :goto_0
    iget-boolean v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v11, :cond_c

    .line 427
    const-string v11, "kk:mm"

    iget-object v12, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 428
    .local v9, "tmp":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, "times":Ljava/lang/String;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_1

    .line 432
    const-string v11, "1"

    const-string v12, "Pc"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    :try_start_0
    const-string v11, "UTF-8"

    invoke-static {v8, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_1
    :goto_1
    const/16 v11, 0x50

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 441
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    if-eqz v8, :cond_2

    .line 444
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_2
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v11, :cond_3

    .line 447
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 472
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const-string v12, "AA"

    iget-object v13, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 476
    :cond_4
    const-string v0, ""

    .line 477
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 478
    .local v10, "value":Ljava/lang/String;
    sget v5, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 479
    .local v5, "resId_MM_dd":I
    sget v6, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    .line 481
    .local v6, "resId_dd_MM":I
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v11, :cond_f

    .line 482
    sget v5, Lcom/sec/android/sviewcover/R$string;->clear_cover_month_day_no_year:I

    .line 483
    sget v6, Lcom/sec/android/sviewcover/R$string;->clear_cover_day_month_no_year:I

    .line 489
    :goto_3
    const-string v11, "yyyy-MM-dd"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "MM-dd-yyyy"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 490
    :cond_5
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_6
    :goto_4
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 495
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    sget v13, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :cond_7
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverProperties;->isPreviousLook()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 502
    sget v5, Lcom/sec/android/sviewcover/R$string;->clear_cover_month_day_no_year:I

    .line 503
    sget v6, Lcom/sec/android/sviewcover/R$string;->clear_cover_day_month_no_year:I

    .line 505
    const-string v11, "yyyy-MM-dd"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "MM-dd-yyyy"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 506
    :cond_8
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_9
    :goto_5
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    sget v12, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "dayOfWeek":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "monthAndDay":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .end local v1    # "dayOfWeek":Ljava/lang/String;
    .end local v4    # "monthAndDay":Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 518
    return-void

    .line 422
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "resId_MM_dd":I
    .end local v6    # "resId_dd_MM":I
    .end local v8    # "times":Ljava/lang/String;
    .end local v9    # "tmp":Ljava/lang/CharSequence;
    .end local v10    # "value":Ljava/lang/String;
    :cond_b
    const-string v11, "h:mm"

    sput-object v11, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 435
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "times":Ljava/lang/String;
    .restart local v9    # "tmp":Ljava/lang/CharSequence;
    :catch_0
    move-exception v7

    .line 436
    .local v7, "t":Ljava/lang/Throwable;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 437
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 449
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v8    # "times":Ljava/lang/String;
    .end local v9    # "tmp":Ljava/lang/CharSequence;
    :cond_c
    sget-object v11, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTimeFormat:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 450
    .restart local v9    # "tmp":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 451
    .restart local v8    # "times":Ljava/lang/String;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    if-eqz v11, :cond_d

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_d

    .line 454
    const-string v11, "1"

    const-string v12, "Pc"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    :try_start_1
    const-string v11, "UTF-8"

    invoke-static {v8, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    :cond_d
    :goto_6
    const/16 v11, 0x50

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 463
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    if-eqz v8, :cond_e

    .line 466
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_e
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v11, :cond_3

    .line 469
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 457
    :catch_1
    move-exception v7

    .line 458
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 485
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v5    # "resId_MM_dd":I
    .restart local v6    # "resId_dd_MM":I
    .restart local v10    # "value":Ljava/lang/String;
    :cond_f
    sget v5, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 486
    sget v6, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    goto/16 :goto_3

    .line 491
    :cond_10
    const-string v11, "dd-MM-yyyy"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 492
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 507
    :cond_11
    const-string v11, "dd-MM-yyyy"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 508
    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 568
    const-string v0, ""

    .line 570
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 571
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 573
    :cond_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 577
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 580
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 581
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 582
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "mTTSTime":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    return-object v0

    .line 574
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 575
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 584
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_4
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

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

    .line 359
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 360
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 361
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v1, "clock.date_format_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v1, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v1, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTimeFormatChangeObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$DateFormatObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$DateFormatObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDateFormatObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$DateFormatObserver;

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://settings/system/date_format"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDateFormatObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$DateFormatObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "festival_effect_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalLockscreenObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "festival_effect_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalLockscreenObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 395
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalLockscreenObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 404
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 303
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 304
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 305
    .local v4, "res":Landroid/content/res/Resources;
    sget v5, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "clockTypeface":Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .line 308
    .local v0, "ampmTypeface":Landroid/graphics/Typeface;
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getSViewCoverSystemFeatureLevel()V

    .line 310
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$600()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 311
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    const-string v5, "samsung-neo-num3T"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 324
    :goto_0
    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    .line 325
    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_day_and_month:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayMonthView:Landroid/widget/LinearLayout;

    .line 326
    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_root:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockRoot:Landroid/widget/LinearLayout;

    .line 327
    sget v5, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    .line 328
    sget v5, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    .line 330
    sget v5, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    .line 331
    sget v5, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    .line 332
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 335
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "festival_effect_enabled"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "festival_effect_lockscreen_wallpaper"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalEnabled:Z

    .line 337
    sget v5, Lcom/sec/android/sviewcover/R$id;->festival_icon:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalIcon:Landroid/widget/ImageView;

    .line 338
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "FestivalList"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "festivalString":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFestivalEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 342
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalEnabled:Z

    if-eqz v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 347
    .local v2, "festivalIcon":I
    if-eqz v2, :cond_0

    .line 348
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    .end local v2    # "festivalIcon":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->refreshClock()V

    .line 355
    return-void

    .line 314
    .end local v3    # "festivalString":Ljava/lang/String;
    :cond_1
    const-string v5, "system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_0

    .line 316
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mIsCover2:Z

    if-eqz v5, :cond_3

    .line 317
    const-string v5, "system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_0

    .line 320
    :cond_3
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v7, "fonts/SAMSUNG_CLOCK_NUMERALS.TTF"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 335
    goto/16 :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 410
    return-void
.end method

.method public refreshClock()V
    .locals 5

    .prologue
    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
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

    .line 202
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 203
    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 205
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 206
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 217
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 211
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 212
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public refreshClockJVarient()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "locale":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshClockJVarient() , locale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 223
    const-string v3, "ko_KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 225
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 226
    .local v2, "parentDate":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 227
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 231
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayMonthView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 243
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "parentDate":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 234
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 235
    .restart local v2    # "parentDate":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 236
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 237
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    :cond_3
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 240
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mDayMonthView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
