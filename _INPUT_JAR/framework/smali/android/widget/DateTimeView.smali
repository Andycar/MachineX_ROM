.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L


# instance fields
.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 227
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 227
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DateTimeView;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/DateTimeView;

    .prologue
    .line 50
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 193
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_19

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 196
    :cond_19
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 202
    :goto_1d
    return-object v2

    .line 199
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_1d

    .line 200
    :catch_24
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_1d
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private registerReceivers()V
    .registers 7

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 218
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    return-void
.end method

.method private unregisterReceivers()V
    .registers 4

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 79
    invoke-direct {p0}, Landroid/widget/DateTimeView;->registerReceivers()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 81
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 86
    invoke-direct {p0}, Landroid/widget/DateTimeView;->unregisterReceivers()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 88
    return-void
.end method

.method public setTime(J)V
    .registers 12
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 92
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 93
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 94
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 95
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 96
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 97
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 98
    return-void
.end method

.method update()V
    .registers 27

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 186
    :goto_8
    return-void

    .line 105
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 108
    .local v14, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v18, v0

    .line 110
    .local v18, "time":Ljava/util/Date;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 111
    .local v16, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 112
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 114
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 115
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    .line 116
    .local v22, "twelveHoursBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 117
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 118
    .local v20, "twelveHoursAfter":J
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 119
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 120
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 121
    .local v10, "midnightBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 122
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 124
    .local v8, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 125
    .local v12, "nowMillis":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 126
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 127
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 131
    cmp-long v19, v12, v10

    if-ltz v19, :cond_b2

    cmp-long v19, v12, v8

    if-ltz v19, :cond_ba

    :cond_b2
    cmp-long v19, v12, v22

    if-ltz v19, :cond_f6

    cmp-long v19, v12, v20

    if-gez v19, :cond_f6

    .line 133
    :cond_ba
    const/4 v4, 0x0

    .line 143
    .local v4, "display":I
    :goto_bb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f8

    .line 145
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 161
    .local v5, "format":Ljava/text/DateFormat;
    :goto_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    if-nez v4, :cond_12c

    .line 167
    cmp-long v19, v20, v8

    if-lez v19, :cond_129

    .end local v20    # "twelveHoursAfter":J
    :goto_ea
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 185
    .end local v22    # "twelveHoursBefore":J
    :goto_f0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 186
    .local v6, "finish":J
    goto/16 :goto_8

    .line 137
    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v6    # "finish":J
    .end local v17    # "text":Ljava/lang/String;
    .restart local v20    # "twelveHoursAfter":J
    .restart local v22    # "twelveHoursBefore":J
    :cond_f6
    const/4 v4, 0x1

    .restart local v4    # "display":I
    goto :goto_bb

    .line 147
    :cond_f8
    packed-switch v4, :pswitch_data_14e

    .line 155
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "unknown display value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 149
    :pswitch_11b
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 157
    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_11f
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_d1

    .line 152
    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_124
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 153
    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_11f

    .restart local v17    # "text":Ljava/lang/String;
    :cond_129
    move-wide/from16 v20, v8

    .line 167
    goto :goto_ea

    .line 170
    :cond_12c
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v24, v0

    cmp-long v19, v24, v12

    if-gez v19, :cond_13f

    .line 172
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_f0

    .line 176
    :cond_13f
    cmp-long v19, v22, v10

    if-gez v19, :cond_14a

    .end local v22    # "twelveHoursBefore":J
    :goto_143
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_f0

    .restart local v22    # "twelveHoursBefore":J
    :cond_14a
    move-wide/from16 v22, v10

    goto :goto_143

    .line 147
    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_124
    .end packed-switch
.end method
