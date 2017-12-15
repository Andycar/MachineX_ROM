.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$Event;
    }
.end annotation


# static fields
.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionHardware"

.field private static sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSinks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/location/IActivityRecognitionHardwareSink;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedActivities:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    .line 212
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    .line 45
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    .line 55
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    .line 57
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method private checkPermissions()V
    .registers 6

    .prologue
    .line 196
    const-string v1, "Permission \'%s\' not granted to access ActivityRecognitionHardware"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.LOCATION_HARDWARE"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private fetchSupportedActivities()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "supportedActivities":[Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 208
    .end local v0    # "supportedActivities":[Ljava/lang/String;
    :goto_6
    return-object v0

    .restart local v0    # "supportedActivities":[Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method private getActivityName(I)Ljava/lang/String;
    .registers 7
    .param p1, "activityType"    # I

    .prologue
    .line 168
    if-ltz p1, :cond_7

    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_28

    .line 169
    :cond_7
    const-string v1, "Invalid ActivityType: %d, SupportedActivities: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ActivityRecognitionHardware"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    .line 177
    .end local v0    # "message":Ljava/lang/String;
    :goto_27
    return-object v1

    :cond_28
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_27
.end method

.method private getActivityType(Ljava/lang/String;)I
    .registers 6
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v2

    .line 192
    :cond_8
    :goto_8
    return v0

    .line 185
    :cond_9
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v1, v3

    .line 186
    .local v1, "supportedActivitiesLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1c

    .line 187
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    move v0, v2

    .line 192
    goto :goto_8
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_3
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v0, :cond_e

    .line 64
    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {v0, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 67
    :cond_e
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 72
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDisableActivityEvent(II)I
.end method

.method private native nativeEnableActivityEvent(IIJ)I
.end method

.method private native nativeFlush()I
.end method

.method private native nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native nativeInitialize()V
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeRelease()V
.end method

.method private onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .registers 16
    .param p1, "events"    # [Landroid/hardware/location/ActivityRecognitionHardware$Event;

    .prologue
    .line 137
    if-eqz p1, :cond_5

    array-length v9, p1

    if-nez v9, :cond_d

    .line 138
    :cond_5
    const-string v9, "ActivityRecognitionHardware"

    const-string v10, "No events to broadcast for onActivityChanged."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_c
    return-void

    .line 142
    :cond_d
    array-length v5, p1

    .line 143
    .local v5, "eventsLength":I
    new-array v2, v5, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 145
    .local v2, "activityRecognitionEventArray":[Landroid/hardware/location/ActivityRecognitionEvent;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v5, :cond_29

    .line 146
    aget-object v4, p1, v6

    .line 147
    .local v4, "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    iget v9, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    invoke-direct {p0, v9}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "activityName":Ljava/lang/String;
    new-instance v9, Landroid/hardware/location/ActivityRecognitionEvent;

    iget v10, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    iget-wide v12, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    invoke-direct {v9, v1, v10, v12, v13}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    aput-object v9, v2, v6

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 151
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v4    # "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    :cond_29
    new-instance v0, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {v0, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    .line 154
    .local v0, "activityChangedEvent":Landroid/hardware/location/ActivityChangedEvent;
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 155
    .local v8, "size":I
    const/4 v6, 0x0

    :goto_35
    if-ge v6, v8, :cond_4e

    .line 156
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 158
    .local v7, "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    :try_start_3f
    invoke-interface {v7, v0}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_45

    .line 155
    :goto_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 159
    :catch_45
    move-exception v3

    .line 160
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "ActivityRecognitionHardware"

    const-string v10, "Error delivering activity changed event."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 163
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    :cond_4e
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_c
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 117
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "activityType":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    .line 123
    :cond_b
    :goto_b
    return v2

    .line 122
    :cond_c
    invoke-direct {p0, v0, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v1

    .line 123
    .local v1, "result":I
    if-nez v1, :cond_b

    const/4 v2, 0x1

    goto :goto_b
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .registers 10
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 104
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "activityType":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    .line 110
    :cond_b
    :goto_b
    return v2

    .line 109
    :cond_c
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    move-result v1

    .line 110
    .local v1, "result":I
    if-nez v1, :cond_b

    const/4 v2, 0x1

    goto :goto_b
.end method

.method public flush()Z
    .registers 3

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 129
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    move-result v0

    .line 130
    .local v0, "result":I
    if-nez v0, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 78
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .registers 4
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 84
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "activityType":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 91
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 97
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
