.class public Lcom/android/server/notification/DowntimeConditionProvider;
.super Landroid/service/notification/ConditionProviderService;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/DowntimeConditionProvider$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_DND_CHANGED:Ljava/lang/String; = "android.intent.action.DND_CHANGED"

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final DND_CHECK_BY_ALARM:I = 0x5

.field private static final DND_CHECK_BY_INIT:I = 0x6

.field private static final DND_CHECK_BY_NONE:I = 0x0

.field private static final DND_CHECK_BY_SCHEDULE_SWITCH:I = 0x1

.field private static final DND_CHECK_BY_SCHEDULE_TIME:I = 0x2

.field private static final DND_CHECK_BY_TIME_SET:I = 0x3

.field private static final DND_CHECK_BY_TIME_ZONE:I = 0x4

.field private static final ENTER_ACTION:Ljava/lang/String; = "DowntimeConditions.enter"

.field private static final ENTER_CODE:I = 0x64

.field private static final EXIT_ACTION:Ljava/lang/String; = "DowntimeConditions.exit"

.field private static final EXIT_CODE:I = 0x65

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final REASON_DND_CHANGED:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "DowntimeConditions"

.field private static mIsTouchwizDnd:Z


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInDowntime:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "DowntimeConditions"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->mIsTouchwizDnd:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    .line 67
    iput-object p0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    .line 363
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DowntimeConditionProvider$1;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "DowntimeConditions"

    const-string v1, "new DowntimeConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_24
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(J)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/DowntimeConditionProvider;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->mIsTouchwizDnd:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/service/notification/ZenModeConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/DowntimeConditionProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    return-void
.end method

.method private addDays(JI)J
    .registers 7
    .param p1, "time"    # J
    .param p3, "days"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 325
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 326
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private fireDowntimeChanged()V
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    if-eqz v0, :cond_b

    .line 299
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-interface {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider$Callback;->onDowntimeChanged(Z)Z

    .line 301
    :cond_b
    return-void
.end method

.method private getDayOfWeek(J)I
    .registers 6
    .param p1, "time"    # J

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 311
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getTime(JII)J
    .registers 8
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 316
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 317
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 318
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 319
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 320
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateDays()V

    .line 215
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->mIsTouchwizDnd:Z

    if-eqz v0, :cond_20

    .line 216
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eqz v0, :cond_15

    .line 217
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime(I)V

    .line 227
    :goto_11
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    .line 228
    return-void

    .line 221
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    goto :goto_11

    .line 225
    :cond_20
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime()V

    goto :goto_11
.end method

.method private isInDowntime(IJJJ)Z
    .registers 12
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .prologue
    .line 257
    const/4 v1, 0x7

    .line 258
    .local v1, "n":I
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/DowntimeConditionProvider;->getDayOfWeek(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v2, 0x1

    .line 259
    .local v0, "day":I
    invoke-direct {p0, p4, p5, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide p4

    .line 260
    invoke-direct {p0, p6, p7, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide p6

    .line 261
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    cmp-long v2, p2, p4

    if-ltz v2, :cond_2e

    cmp-long v2, p2, p6

    if-gez v2, :cond_2e

    const/4 v2, 0x1

    :goto_2d
    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method private isInDowntime(J)Z
    .registers 14
    .param p1, "time"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v9

    .line 252
    :goto_f
    return v0

    .line 242
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v4

    .line 243
    .local v4, "start":J
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v6

    .line 247
    .local v6, "end":J
    cmp-long v0, v6, v4

    if-gtz v0, :cond_30

    .line 248
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide v6

    .line 252
    :cond_30
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eqz v0, :cond_4a

    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(IJJJ)Z

    move-result v0

    if-nez v0, :cond_48

    move-object v0, p0

    move v1, v9

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_48
    move v0, v8

    goto :goto_f

    :cond_4a
    move v0, v9

    goto :goto_f
.end method

.method private reevaluateDowntime()V
    .registers 5

    .prologue
    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(J)Z

    move-result v0

    .line 288
    .local v0, "inDowntime":Z
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_24

    const-string v1, "DowntimeConditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inDowntime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_24
    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-ne v0, v1, :cond_29

    .line 295
    :goto_28
    return-void

    .line 291
    :cond_29
    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_5a

    const-string v1, "Entering"

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " downtime"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    .line 293
    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->getDayOfWeek(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceDowntime(ZILandroid/util/ArraySet;)V

    .line 294
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->fireDowntimeChanged()V

    goto :goto_28

    .line 291
    :cond_5a
    const-string v1, "Exiting"

    goto :goto_34
.end method

.method private reevaluateDowntime(I)V
    .registers 8
    .param p1, "reason"    # I

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(J)Z

    move-result v1

    .line 266
    .local v1, "inDowntime":Z
    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inDowntime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_24
    const/4 v2, 0x3

    if-eq p1, v2, :cond_2d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2d

    const/4 v2, 0x5

    if-ne p1, v2, :cond_32

    :cond_2d
    iget-boolean v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-ne v1, v2, :cond_32

    .line 284
    :cond_31
    :goto_31
    return-void

    .line 272
    :cond_32
    const-string v3, "DowntimeConditions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_9d

    const-string v2, "Entering"

    :goto_3d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " downtime : reason = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    .line 274
    iget-boolean v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->getDayOfWeek(J)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/ZenLog;->traceDowntime(ZILandroid/util/ArraySet;)V

    .line 276
    if-eqz p1, :cond_31

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    iget-boolean v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-interface {v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider$Callback;->onDowntimeChanged(Z)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v0, "dndChangedIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending broad cast ACTION_DND_CHANGED : reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 272
    .end local v0    # "dndChangedIntent":Landroid/content/Intent;
    :cond_9d
    const-string v2, "Exiting"

    goto :goto_3d
.end method

.method private static ts(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAlarm(Ljava/lang/String;III)V
    .registers 19
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .prologue
    .line 330
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 331
    .local v2, "alarms":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 332
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 333
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    move/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 334
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    move/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 335
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 336
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 337
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 338
    .local v6, "time":J
    cmp-long v8, v6, v4

    if-gtz v8, :cond_44

    .line 339
    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide v6

    .line 341
    :cond_44
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "time"

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x8000000

    move/from16 v0, p2

    invoke-static {v8, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 343
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 346
    sget-boolean v8, Lcom/android/server/notification/DowntimeConditionProvider;->mIsTouchwizDnd:Z

    if-eqz v8, :cond_73

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-nez v8, :cond_73

    .line 347
    sget-boolean v8, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v8, :cond_72

    const-string v8, "DowntimeConditions"

    const-string v9, "Cancel alarm because scheduler is turned off"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_72
    :goto_72
    return-void

    .line 352
    :cond_73
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v8, :cond_72

    .line 353
    sget-boolean v8, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v8, :cond_a5

    const-string v8, "DowntimeConditions"

    const-string v9, "Scheduling %s for %s, %s in the future, now=%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_a5
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_72
.end method

.method private updateAlarms()V
    .registers 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_5

    .line 307
    :goto_4
    return-void

    .line 305
    :cond_5
    const-string v0, "DowntimeConditions.enter"

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    .line 306
    const-string v0, "DowntimeConditions.exit"

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    goto :goto_4
.end method

.method private updateDays()V
    .registers 5

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 232
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_25

    .line 233
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    .line 234
    .local v0, "days":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-eqz v0, :cond_25

    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 235
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 238
    .end local v0    # "days":[I
    .end local v1    # "i":I
    :cond_25
    return-void
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;
    .registers 17
    .param p1, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .param p2, "state"    # I

    .prologue
    .line 197
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 205
    :goto_3
    return-object v0

    .line 198
    :cond_4
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 199
    .local v1, "id":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v11, "Hm"

    .line 200
    .local v11, "skeleton":Ljava/lang/String;
    :goto_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 201
    .local v9, "locale":Ljava/util/Locale;
    invoke-static {v9, v11}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "pattern":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v0, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    iget v3, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v12

    .line 203
    .local v12, "time":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "formatted":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const v3, 0x1040695

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "summary":Ljava/lang/String;
    new-instance v0, Landroid/service/notification/Condition;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_3

    .line 199
    .end local v2    # "summary":Ljava/lang/String;
    .end local v8    # "formatted":Ljava/lang/String;
    .end local v9    # "locale":Ljava/util/Locale;
    .end local v10    # "pattern":Ljava/lang/String;
    .end local v11    # "skeleton":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_51
    const-string v11, "hma"

    goto :goto_12
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 94
    const-string v0, "    DowntimeConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 96
    const-string v0, "      mInDowntime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 97
    return-void
.end method

.method public isDowntimeCondition(Landroid/service/notification/Condition;)Z
    .registers 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 209
    if-eqz p1, :cond_c

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInDowntime()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    return v0
.end method

.method public onConnected()V
    .registers 4

    .prologue
    .line 113
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "DowntimeConditions"

    const-string/jumbo v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "DowntimeConditions.enter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "DowntimeConditions.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    .line 122
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "DowntimeConditions"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    .line 128
    return-void
.end method

.method public onRequestConditions(I)V
    .registers 5
    .param p1, "relevance"    # I

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1d
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_37

    .line 134
    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_37

    .line 135
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 138
    :cond_37
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 7
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 142
    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_1d

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSubscribe conditionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1d
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    .line 144
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    if-eqz v0, :cond_60

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_60

    .line 145
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-boolean v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-eqz v2, :cond_61

    const/4 v1, 0x1

    .line 147
    .local v1, "state":I
    :goto_38
    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_59

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify condition state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_59
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 150
    .end local v1    # "state":I
    :cond_60
    return-void

    .line 145
    :cond_61
    const/4 v1, 0x0

    goto :goto_38
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 5
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 154
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe conditionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1d
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/DowntimeConditionProvider$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    .line 109
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)V
    .registers 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    :cond_8
    :goto_8
    return-void

    .line 159
    :cond_9
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_15

    const-string v1, "DowntimeConditions"

    const-string/jumbo v2, "setConfig"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_15
    const/4 v0, 0x0

    .line 163
    .local v0, "reason":I
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_25

    if-eqz p1, :cond_25

    .line 164
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eq v1, v2, :cond_3b

    .line 165
    const/4 v0, 0x1

    .line 176
    :cond_25
    :goto_25
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 177
    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    if-eqz v1, :cond_8

    .line 179
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->mIsTouchwizDnd:Z

    if-eqz v1, :cond_7f

    .line 180
    if-eqz v0, :cond_8

    .line 181
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateDays()V

    .line 182
    invoke-direct {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    goto :goto_8

    .line 166
    :cond_3b
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    if-ne v1, v2, :cond_7d

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    if-ne v1, v2, :cond_7d

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    if-ne v1, v2, :cond_7d

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    if-ne v1, v2, :cond_7d

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    :cond_6d
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 172
    :cond_7d
    const/4 v0, 0x2

    goto :goto_25

    .line 187
    :cond_7f
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    goto :goto_8
.end method
