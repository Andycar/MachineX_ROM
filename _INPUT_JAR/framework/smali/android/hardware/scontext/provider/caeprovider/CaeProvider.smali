.class public Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "CaeProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContext.CaeProvider"


# instance fields
.field private final mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mContext:Landroid/content/Context;

.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mServiceNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    .line 662
    new-instance v0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;-><init>(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 53
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    const-string v1, "context_aware"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/ContextAwareManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 56
    iput p2, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    .line 57
    iput-object p3, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method


# virtual methods
.method public add()V
    .registers 4

    .prologue
    .line 69
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_19c

    .line 225
    :goto_5
    :pswitch_5
    return-void

    .line 71
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 75
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 79
    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 83
    :pswitch_24
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 87
    :pswitch_2e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 91
    :pswitch_38
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 95
    :pswitch_42
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 99
    :pswitch_4c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 103
    :pswitch_56
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 107
    :pswitch_5f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 111
    :pswitch_69
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 115
    :pswitch_73
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 119
    :pswitch_7d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 123
    :pswitch_88
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 127
    :pswitch_93
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 131
    :pswitch_9e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 135
    :pswitch_a9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 139
    :pswitch_b4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 143
    :pswitch_bf
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 147
    :pswitch_ca
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 151
    :pswitch_d5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 155
    :pswitch_e0
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 159
    :pswitch_eb
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 163
    :pswitch_f6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 167
    :pswitch_101
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 171
    :pswitch_10c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 175
    :pswitch_117
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 179
    :pswitch_122
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 183
    :pswitch_12d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 187
    :pswitch_138
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 191
    :pswitch_143
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 195
    :pswitch_14e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 199
    :pswitch_159
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 203
    :pswitch_164
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 207
    :pswitch_16f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 211
    :pswitch_17a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 215
    :pswitch_185
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 219
    :pswitch_190
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 69
    nop

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_2e
        :pswitch_38
        :pswitch_5
        :pswitch_42
        :pswitch_4c
        :pswitch_56
        :pswitch_5f
        :pswitch_69
        :pswitch_73
        :pswitch_7d
        :pswitch_88
        :pswitch_93
        :pswitch_9e
        :pswitch_a9
        :pswitch_b4
        :pswitch_bf
        :pswitch_ca
        :pswitch_d5
        :pswitch_e0
        :pswitch_eb
        :pswitch_f6
        :pswitch_101
        :pswitch_10c
        :pswitch_117
        :pswitch_122
        :pswitch_12d
        :pswitch_138
        :pswitch_143
        :pswitch_14e
        :pswitch_159
        :pswitch_164
        :pswitch_16f
        :pswitch_17a
        :pswitch_185
        :pswitch_190
    .end packed-switch
.end method

.method getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method getManager()Lcom/samsung/android/contextaware/ContextAwareManager;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .registers 1

    .prologue
    .line 757
    return-void
.end method

.method public onBinderDied()V
    .registers 1

    .prologue
    .line 629
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 617
    return-object p1
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 236
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_19c

    .line 392
    :goto_5
    :pswitch_5
    return-void

    .line 238
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 242
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 246
    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 250
    :pswitch_24
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 254
    :pswitch_2e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 258
    :pswitch_38
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 262
    :pswitch_42
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 266
    :pswitch_4c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 270
    :pswitch_56
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 274
    :pswitch_5f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 278
    :pswitch_69
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 282
    :pswitch_73
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_5

    .line 286
    :pswitch_7d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 290
    :pswitch_88
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 294
    :pswitch_93
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 298
    :pswitch_9e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 302
    :pswitch_a9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 306
    :pswitch_b4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 310
    :pswitch_bf
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 314
    :pswitch_ca
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 318
    :pswitch_d5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 322
    :pswitch_e0
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 326
    :pswitch_eb
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 330
    :pswitch_f6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 334
    :pswitch_101
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 338
    :pswitch_10c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 342
    :pswitch_117
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 346
    :pswitch_122
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 350
    :pswitch_12d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 354
    :pswitch_138
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 358
    :pswitch_143
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 362
    :pswitch_14e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 366
    :pswitch_159
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 370
    :pswitch_164
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 374
    :pswitch_16f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 378
    :pswitch_17a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 382
    :pswitch_185
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 386
    :pswitch_190
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_5

    .line 236
    nop

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_2e
        :pswitch_38
        :pswitch_5
        :pswitch_42
        :pswitch_4c
        :pswitch_56
        :pswitch_5f
        :pswitch_69
        :pswitch_73
        :pswitch_7d
        :pswitch_88
        :pswitch_93
        :pswitch_9e
        :pswitch_a9
        :pswitch_b4
        :pswitch_bf
        :pswitch_ca
        :pswitch_d5
        :pswitch_e0
        :pswitch_eb
        :pswitch_f6
        :pswitch_101
        :pswitch_10c
        :pswitch_117
        :pswitch_122
        :pswitch_12d
        :pswitch_138
        :pswitch_143
        :pswitch_14e
        :pswitch_159
        :pswitch_164
        :pswitch_16f
        :pswitch_17a
        :pswitch_185
        :pswitch_190
    .end packed-switch
.end method

.method public requestToUpdate()V
    .registers 4

    .prologue
    .line 591
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 592
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 607
    :cond_e
    :goto_e
    return-void

    .line 594
    :cond_f
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1f

    .line 595
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_e

    .line 597
    :cond_1f
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2f

    .line 598
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_e

    .line 600
    :cond_2f
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_e

    .line 601
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_e
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .registers 15
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/16 v10, 0x3b

    .line 404
    invoke-virtual {p2, p1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 405
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_11

    .line 406
    const-string v6, "SContext.CaeProvider"

    const-string/jumbo v7, "setProperty() : attribute is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_10
    :goto_10
    return-void

    .line 409
    :cond_11
    packed-switch p1, :pswitch_data_232

    :pswitch_14
    goto :goto_10

    .line 411
    :pswitch_15
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    const/4 v8, 0x7

    const-string/jumbo v9, "step_count"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_10

    .line 418
    :pswitch_25
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    const/16 v8, 0x8

    const-string v9, "device_type"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_10

    .line 424
    :pswitch_35
    const-string/jumbo v6, "sensor_type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 425
    .local v5, "sensorType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 426
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    const/16 v8, 0xd

    const-string/jumbo v9, "update_interval"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_10

    .line 434
    .end local v5    # "sensorType":I
    :pswitch_50
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v8, 0x35

    const-string/jumbo v9, "voice_mode"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_10

    .line 440
    :pswitch_61
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0x9

    const-string/jumbo v9, "nomove_duration_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 444
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0xa

    const-string/jumbo v9, "move_duration_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 448
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0xb

    const-string/jumbo v9, "move_min_duration_trhs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 452
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0xc

    const-string/jumbo v9, "move_distance_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    goto/16 :goto_10

    .line 459
    :pswitch_a3
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v8, 0xe

    const-string/jumbo v9, "strength"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 462
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v8, 0xf

    const-string v9, "duration"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 468
    :pswitch_c4
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v8, 0x14

    const-string v9, "low_temperature"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 472
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v8, 0x15

    const-string v9, "high_temperature"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 476
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v8, 0x16

    const-string v9, "including"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IIZ)Z

    goto/16 :goto_10

    .line 483
    :pswitch_f3
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x21

    const-string/jumbo v9, "retention_time"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 487
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x22

    const-string/jumbo v9, "minimum_angle"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 491
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x23

    const-string/jumbo v9, "maximum_angle"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 495
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x24

    const-string/jumbo v9, "moving_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 502
    :pswitch_135
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v8, 0x2a

    const-string/jumbo v9, "sensibility"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 505
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v8, 0x2b

    const-string/jumbo v9, "sampling_interval"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 511
    :pswitch_157
    const-string v6, "activity_filter"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 512
    .local v2, "ex_actions":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15e
    array-length v6, v2

    if-ge v4, v6, :cond_16f

    .line 513
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x26

    aget v9, v2, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 512
    add-int/lit8 v4, v4, 0x1

    goto :goto_15e

    .line 519
    :cond_16f
    const-string v6, "duration"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 520
    .local v3, "ex_duration":I
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x27

    invoke-virtual {v6, v7, v8, v3}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 528
    .end local v2    # "ex_actions":[I
    .end local v3    # "ex_duration":I
    .end local v4    # "i":I
    :pswitch_180
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    const-string v8, "duration"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v10, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 535
    :pswitch_18f
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x39

    const-string v9, "device_type"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 539
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const-string v8, "duration"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v10, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 543
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x3c

    const-string v9, "alert_count"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 547
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x37

    const-string/jumbo v9, "start_time"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 551
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x38

    const-string v9, "end_time"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 558
    :pswitch_1db
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    const/16 v8, 0x3d

    const-string v9, "duration"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 565
    :pswitch_1ec
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    const/16 v8, 0x40

    const-string v9, "device_mode"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 569
    const-string v6, "SContext.CaeProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAttribute() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "device_mode"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 573
    :pswitch_220
    const-string/jumbo v6, "required_data_type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 574
    .local v1, "data_type":I
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    const/16 v8, 0x3f

    invoke-virtual {v6, v7, v8, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_10

    .line 409
    :pswitch_data_232
    .packed-switch 0x3
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_25
        :pswitch_14
        :pswitch_35
        :pswitch_61
        :pswitch_14
        :pswitch_14
        :pswitch_a3
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_50
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_c4
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_f3
        :pswitch_135
        :pswitch_157
        :pswitch_14
        :pswitch_14
        :pswitch_180
        :pswitch_14
        :pswitch_18f
        :pswitch_1db
        :pswitch_1ec
        :pswitch_220
    .end packed-switch
.end method

.method public setReferenceData(I[B)Z
    .registers 4
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method
