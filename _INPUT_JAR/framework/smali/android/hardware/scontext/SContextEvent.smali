.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEventContext:Landroid/hardware/scontext/SContextEventContext;

.field public scontext:Landroid/hardware/scontext/SContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 774
    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 82
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 765
    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 766
    const-class v0, Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEventContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 767
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public getAbnormalPressureContext()Landroid/hardware/scontext/SContextAbnormalPressure;
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAbnormalPressure;

    return-object v0
.end method

.method public getActiveTimeMonitorContext()Landroid/hardware/scontext/SContextActiveTimeMonitor;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActiveTimeMonitor;

    return-object v0
.end method

.method public getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityBatch;

    return-object v0
.end method

.method public getActivityLocationLoggingContext()Landroid/hardware/scontext/SContextActivityLocationLogging;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityLocationLogging;

    return-object v0
.end method

.method public getActivityNotificationContext()Landroid/hardware/scontext/SContextActivityNotification;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityNotification;

    return-object v0
.end method

.method public getActivityNotificationExContext()Landroid/hardware/scontext/SContextActivityNotificationEx;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityNotificationEx;

    return-object v0
.end method

.method public getActivityTrackerContext()Landroid/hardware/scontext/SContextActivityTracker;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityTracker;

    return-object v0
.end method

.method public getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAirMotion;

    return-object v0
.end method

.method getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public getAutoBrightnessContext()Landroid/hardware/scontext/SContextAutoBrightness;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAutoBrightness;

    return-object v0
.end method

.method public getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public getBounceLongMotionContext()Landroid/hardware/scontext/SContextBounceLongMotion;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextBounceLongMotion;

    return-object v0
.end method

.method public getBounceShortMotionContext()Landroid/hardware/scontext/SContextBounceShortMotion;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextBounceShortMotion;

    return-object v0
.end method

.method getCallMotionContext()Landroid/hardware/scontext/SContextCallMotion;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCallMotion;

    return-object v0
.end method

.method public getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCallPose;

    return-object v0
.end method

.method getCaptureMotionContext()Landroid/hardware/scontext/SContextCaptureMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCaptureMotion;

    return-object v0
.end method

.method public getCurrentStatusForPositioningContext()Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-object v0
.end method

.method public getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextEnvironment;

    return-object v0
.end method

.method public getExerciseContext()Landroid/hardware/scontext/SContextExercise;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextExercise;

    return-object v0
.end method

.method public getFlatMotioForTableModeContext()Landroid/hardware/scontext/SContextFlatMotionForTableMode;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;

    return-object v0
.end method

.method public getFlatMotionContext()Landroid/hardware/scontext/SContextFlatMotion;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextFlatMotion;

    return-object v0
.end method

.method public getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    return-object v0
.end method

.method public getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextGyroTemperature;

    return-object v0
.end method

.method public getInactiveTimerContext()Landroid/hardware/scontext/SContextInactiveTimer;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextInactiveTimer;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public getMovementAlertContext()Landroid/hardware/scontext/SContextMovementAlert;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMovementAlert;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public getMovementForPositioningContext()Landroid/hardware/scontext/SContextMovementForPositioning;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextPutDownMotion;

    return-object v0
.end method

.method public getShakeMotionContext()Landroid/hardware/scontext/SContextShakeMotion;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextShakeMotion;

    return-object v0
.end method

.method public getSleepMonitorContext()Landroid/hardware/scontext/SContextSleepMonitor;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextSleepMonitor;

    return-object v0
.end method

.method public getSpecificPoseAlertContext()Landroid/hardware/scontext/SContextSpecificPoseAlert;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    return-object v0
.end method

.method getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method public getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextStepLevelMonitor;

    return-object v0
.end method

.method getTemperatureAlertContext()Landroid/hardware/scontext/SContextTemperatureAlert;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextTemperatureAlert;

    return-object v0
.end method

.method public getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextTestFlatMotion;

    return-object v0
.end method

.method public getWakeUpVoiceContext()Landroid/hardware/scontext/SContextWakeUpVoice;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    return-object v0
.end method

.method public getWristUpMotionContext()Landroid/hardware/scontext/SContextWristUpMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextWristUpMotion;

    return-object v0
.end method

.method setSContextEvent(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 522
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 523
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 524
    packed-switch p1, :pswitch_data_228

    .line 724
    :goto_e
    return-void

    .line 527
    :pswitch_f
    new-instance v0, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 528
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 532
    :pswitch_1c
    new-instance v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 533
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 537
    :pswitch_29
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 538
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 542
    :pswitch_36
    new-instance v0, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 543
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 547
    :pswitch_43
    new-instance v0, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovement;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 548
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 552
    :pswitch_50
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotation;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 553
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 557
    :pswitch_5d
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 558
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 562
    :pswitch_6a
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 563
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 567
    :pswitch_77
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioning;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 568
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_e

    .line 572
    :pswitch_84
    new-instance v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 573
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 577
    :pswitch_92
    new-instance v0, Landroid/hardware/scontext/SContextCallPose;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCallPose;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 578
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 582
    :pswitch_a0
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 583
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 587
    :pswitch_ae
    new-instance v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlipCoverAction;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 588
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 592
    :pswitch_bc
    new-instance v0, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextGyroTemperature;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 593
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 597
    :pswitch_ca
    new-instance v0, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPutDownMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 598
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 602
    :pswitch_d8
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWakeUpVoice;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 603
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 607
    :pswitch_e6
    new-instance v0, Landroid/hardware/scontext/SContextBounceShortMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextBounceShortMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 608
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 612
    :pswitch_f4
    new-instance v0, Landroid/hardware/scontext/SContextBounceLongMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextBounceLongMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 613
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 617
    :pswitch_102
    new-instance v0, Landroid/hardware/scontext/SContextWristUpMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWristUpMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 618
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 622
    :pswitch_110
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 623
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 627
    :pswitch_11e
    new-instance v0, Landroid/hardware/scontext/SContextMovementAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 628
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 632
    :pswitch_12c
    new-instance v0, Landroid/hardware/scontext/SContextTestFlatMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextTestFlatMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 633
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 637
    :pswitch_13a
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 638
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 642
    :pswitch_148
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLogging;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLogging;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 643
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 647
    :pswitch_156
    new-instance v0, Landroid/hardware/scontext/SContextActivityTracker;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 648
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 652
    :pswitch_164
    new-instance v0, Landroid/hardware/scontext/SContextActivityBatch;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityBatch;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 653
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 657
    :pswitch_172
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotification;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotification;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 658
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 662
    :pswitch_180
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 663
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 667
    :pswitch_18e
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 668
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 672
    :pswitch_19c
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationEx;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationEx;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 673
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 677
    :pswitch_1aa
    new-instance v0, Landroid/hardware/scontext/SContextCaptureMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCaptureMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 678
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 682
    :pswitch_1b8
    new-instance v0, Landroid/hardware/scontext/SContextCallMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCallMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 683
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 687
    :pswitch_1c6
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 688
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 692
    :pswitch_1d4
    new-instance v0, Landroid/hardware/scontext/SContextActiveTimeMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActiveTimeMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 693
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 697
    :pswitch_1e2
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimer;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimer;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 698
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 702
    :pswitch_1f0
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableMode;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 703
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 707
    :pswitch_1fe
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightness;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightness;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 708
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 712
    :pswitch_20c
    new-instance v0, Landroid/hardware/scontext/SContextExercise;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextExercise;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 713
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 717
    :pswitch_21a
    new-instance v0, Landroid/hardware/scontext/SContextAbnormalPressure;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAbnormalPressure;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 718
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 524
    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1c
        :pswitch_29
        :pswitch_36
        :pswitch_43
        :pswitch_50
        :pswitch_5d
        :pswitch_6a
        :pswitch_77
        :pswitch_84
        :pswitch_92
        :pswitch_a0
        :pswitch_ae
        :pswitch_bc
        :pswitch_ca
        :pswitch_d8
        :pswitch_e6
        :pswitch_f4
        :pswitch_102
        :pswitch_110
        :pswitch_11e
        :pswitch_12c
        :pswitch_13a
        :pswitch_148
        :pswitch_156
        :pswitch_164
        :pswitch_172
        :pswitch_180
        :pswitch_18e
        :pswitch_19c
        :pswitch_1aa
        :pswitch_1b8
        :pswitch_1c6
        :pswitch_1d4
        :pswitch_1e2
        :pswitch_1f0
        :pswitch_1fe
        :pswitch_20c
        :pswitch_21a
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 751
    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 752
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 753
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 754
    return-void
.end method
