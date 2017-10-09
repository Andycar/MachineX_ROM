.class public Lcom/android/systemui/statusbar/DoNotDisturb;
.super Ljava/lang/Object;
.source "DoNotDisturb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DORMANT_MODE_OFF:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_OFF"

.field private static final DORMANT_MODE_ON:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_ON"

.field private static final DORMANT_MODE_UPDATE:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_UPDATE"

.field static final MSEC_A_DAY:J = 0x5265c00L

.field private static final MSEC_A_HALF_SEC:J = 0x1f4L

.field private static final TW_TAG:Ljava/lang/String; = "StatusBar-DoNotDistrub"


# instance fields
.field private isAlwaysDormant:Z

.field private isDormantModeOn:Z

.field private isDormantModeSwitchedOn:Z

.field private isNotificationDisabled:Z

.field private isPrayModeOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

.field mEndTimePendingIntent:Landroid/app/PendingIntent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mStartTimePendingIntent:Landroid/app/PendingIntent;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    new-instance v3, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;-><init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    .line 226
    new-instance v3, Lcom/android/systemui/statusbar/DoNotDisturb$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/DoNotDisturb$1;-><init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    const-string v3, "StatusBar-DoNotDistrub"

    const-string v4, "DoNotDisturb constructor called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    .line 74
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    const-string v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    .line 76
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DORMANT_MODE_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "schedulingIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStartTimePendingIntent:Landroid/app/PendingIntent;

    .line 81
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mEndTimePendingIntent:Landroid/app/PendingIntent;

    .line 84
    const-string v3, "dormant_switch_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    const-string v3, "dormant_disable_notifications"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    const-string v3, "dormant_disable_led_indicator"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    const-string v3, "dormant_always"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    const-string v3, "dormant_start_hour"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 99
    const-string v3, "dormant_start_min"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    const-string v3, "dormant_end_hour"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    const-string v3, "dormant_end_min"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DORMANT_MODE_UPDATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v3, "android.settings.PRAYMODE_PREFERENCE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDoNotDisturbStatus()V

    .line 118
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/DoNotDisturb;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/DoNotDisturb;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/DoNotDisturb;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/DoNotDisturb;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isDormantTime()Z
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/16 v12, 0xc

    const/16 v11, 0xb

    const/4 v10, -0x2

    const/4 v5, 0x0

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 161
    .local v4, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 162
    .local v0, "currentTime":J
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_hour"

    invoke-static {v8, v9, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 164
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_min"

    invoke-static {v8, v9, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 166
    invoke-virtual {v4, v13, v5}, Ljava/util/Calendar;->set(II)V

    .line 167
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 168
    .local v6, "startTime":J
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_hour"

    invoke-static {v8, v9, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 170
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_min"

    invoke-static {v8, v9, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 172
    invoke-virtual {v4, v13, v5}, Ljava/util/Calendar;->set(II)V

    .line 173
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 175
    .local v2, "endTime":J
    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    cmp-long v8, v0, v2

    if-ltz v8, :cond_1

    :cond_0
    cmp-long v8, v6, v2

    if-lez v8, :cond_2

    cmp-long v8, v0, v6

    if-gez v8, :cond_1

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method private setDormantAlarm()V
    .locals 23

    .prologue
    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 181
    .local v16, "calStartTime":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 182
    .local v18, "currentTimeL":J
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_hour"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 184
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_min"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 186
    const/16 v5, 0xd

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 188
    .local v15, "calEndTime":Ljava/util/Calendar;
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_hour"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v15, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_min"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v15, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 192
    const/16 v5, 0xd

    const/4 v8, 0x0

    invoke-virtual {v15, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v5, v8, v18

    if-lez v5, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    :goto_0
    const-wide/16 v10, 0x1f4

    add-long v6, v8, v10

    .line 196
    .local v6, "starTimeL":J
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v5, v8, v18

    if-lez v5, :cond_1

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    :goto_1
    const-wide/16 v10, 0x1f4

    add-long v20, v8, v10

    .line 199
    .local v20, "endTimeL":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 200
    .local v4, "mAlarmManager":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStartTimePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mEndTimePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 202
    const/4 v5, 0x0

    const-wide/32 v8, 0x5265c00

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStartTimePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 204
    const/4 v9, 0x0

    const-wide/32 v12, 0x5265c00

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mEndTimePendingIntent:Landroid/app/PendingIntent;

    move-object v8, v4

    move-wide/from16 v10, v20

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 208
    .local v17, "mC":Ljava/util/Calendar;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 210
    .local v22, "mCend":Ljava/util/Calendar;
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    const-string v5, "StatusBar-DoNotDistrub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set Repeating event for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 193
    .end local v4    # "mAlarmManager":Landroid/app/AlarmManager;
    .end local v6    # "starTimeL":J
    .end local v17    # "mC":Ljava/util/Calendar;
    .end local v20    # "endTimeL":J
    .end local v22    # "mCend":Ljava/util/Calendar;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    goto/16 :goto_0

    .line 196
    .restart local v6    # "starTimeL":J
    :cond_1
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    goto/16 :goto_1
.end method

.method private updateDisableRecord()V
    .locals 3

    .prologue
    .line 124
    const/high16 v0, 0x40000

    .line 125
    .local v0, "disabled":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    if-eqz v2, :cond_0

    .end local v0    # "disabled":I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 126
    return-void

    .line 125
    .restart local v0    # "disabled":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    return-void
.end method

.method public isDisableAlert()Z
    .locals 3

    .prologue
    .line 257
    const-string v0, "StatusBar-DoNotDistrub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisableAlert isDormantModeOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNotificationDisabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrayModeEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 240
    .local v1, "data":Z
    :try_start_0
    const-string v4, "com.sec.android.settings.praymodewidget"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "con":Landroid/content/Context;
    const-string v4, "PraymodePreference"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 242
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "isPrayerNotiOn"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 243
    const-string v4, "StatusBar-DoNotDistrub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Pray mode call isPrayModeEnabled value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "con":Landroid/content/Context;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "StatusBar-DoNotDistrub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not data shared "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDisableFlags(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    .line 263
    return-void
.end method

.method public updateDoNotDisturbStatus()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dormant_switch_onoff"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeSwitchedOn:Z

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dormant_disable_notifications"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    if-eqz v1, :cond_6

    :cond_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dormant_always"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    .line 135
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeSwitchedOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantTime()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v1, :cond_8

    const-string v1, "android.intent.action.DORMANT_MODE_ON"

    :goto_3
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 140
    const-string v2, "StatusBar-DoNotDistrub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v1, :cond_9

    const-string v1, "android.intent.action.DORMANT_MODE_ON"

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 142
    const-string v1, "StatusBar-DoNotDistrub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The STREAM NOTIFICATION volume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    .line 146
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    if-nez v1, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->setDormantAlarm()V

    .line 149
    :cond_4
    return-void

    .end local v0    # "i":Landroid/content/Intent;
    :cond_5
    move v1, v3

    .line 129
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 131
    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 133
    goto/16 :goto_2

    .line 137
    :cond_8
    const-string v1, "android.intent.action.DORMANT_MODE_OFF"

    goto :goto_3

    .line 140
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_9
    const-string v1, "android.intent.action.DORMANT_MODE_OFF"

    goto :goto_4
.end method
