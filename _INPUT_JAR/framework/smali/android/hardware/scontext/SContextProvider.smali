.class public Landroid/hardware/scontext/SContextProvider;
.super Ljava/lang/Object;
.source "SContextProvider.java"


# static fields
.field private static final FEATURE_SCONTEXT_LITE:I = 0x2

.field private static final FEATURE_SENSORHUB:I = 0x1

.field private static final FEATURE_UNKNOWN:I = 0x0

.field private static final GPS_VENDOR_BROADCOM:I = 0x2

.field private static final GPS_VENDOR_QUALCOMM:I = 0x1

.field private static final GPS_VENDOR_UNKNOWN:I = 0x0

.field private static final PEDOMETER_VENDOR_ADSP:I = 0x3

.field private static final PEDOMETER_VENDOR_INVENSENSE:I = 0x2

.field private static final PEDOMETER_VENDOR_SENSORHUB:I = 0x1

.field private static final PEDOMETER_VENDOR_UNKNOWN:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventListener:Landroid/hardware/scontext/provider/EventListener;

.field private mFeature:I

.field private mGpsVendor:I

.field private mPedometerVendor:I

.field mProvider:Landroid/hardware/scontext/provider/Provider;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/hardware/scontext/provider/EventListener;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "eventListener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p4, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/scontext/provider/EventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "availableServiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    .line 61
    iput v2, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    .line 63
    iput v2, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    .line 65
    iput v2, p0, Landroid/hardware/scontext/SContextProvider;->mGpsVendor:I

    .line 78
    iput-object p1, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    .line 80
    iput-object p3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    .line 81
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 83
    iput v3, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    .line 84
    iput v3, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    .line 85
    const-string v1, "BCM4773_EXERCISE"

    const-string/jumbo v2, "ro.gps.chip.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 86
    iput v4, p0, Landroid/hardware/scontext/SContextProvider;->mGpsVendor:I

    .line 104
    :cond_38
    :goto_38
    return-void

    .line 88
    :cond_39
    iput v3, p0, Landroid/hardware/scontext/SContextProvider;->mGpsVendor:I

    goto :goto_38

    .line 90
    :cond_3c
    const-string v1, "com.sec.feature.scontext_lite"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 91
    iput v4, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    .line 92
    packed-switch p4, :pswitch_data_54

    .line 100
    iput v2, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    goto :goto_38

    .line 94
    :pswitch_4c
    iput v4, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    goto :goto_38

    .line 97
    :pswitch_4f
    const/4 v1, 0x3

    iput v1, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    goto :goto_38

    .line 92
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method getProvider(I)Landroid/hardware/scontext/provider/Provider;
    .registers 7
    .param p1, "service"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 113
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 114
    :cond_12
    const/4 v1, 0x0

    .line 170
    :goto_13
    return-object v1

    .line 116
    :cond_14
    iget v1, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    if-ne v1, v3, :cond_af

    .line 117
    sparse-switch p1, :sswitch_data_c8

    .line 157
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, p1, v3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    .line 170
    :cond_26
    :goto_26
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_13

    .line 119
    :sswitch_29
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, p1, v3}, Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 123
    :sswitch_35
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 128
    :sswitch_41
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    .local v0, "featureLevel":I
    new-instance v1, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3, v0}, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 133
    .end local v0    # "featureLevel":I
    :sswitch_5e
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, p1, v3}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 137
    :sswitch_6a
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 141
    :sswitch_76
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 145
    :sswitch_82
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/AutoBrightnessImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/provider/caeprovider/AutoBrightnessImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 149
    :sswitch_8e
    iget v1, p0, Landroid/hardware/scontext/SContextProvider;->mGpsVendor:I

    if-ne v1, v3, :cond_9e

    .line 150
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, p1, v3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_26

    .line 151
    :cond_9e
    iget v1, p0, Landroid/hardware/scontext/SContextProvider;->mGpsVendor:I

    if-ne v1, v4, :cond_26

    .line 152
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto/16 :goto_26

    .line 160
    :cond_af
    iget v1, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    if-ne v1, v4, :cond_26

    .line 161
    packed-switch p1, :pswitch_data_ea

    goto/16 :goto_26

    .line 163
    :pswitch_b8
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    iget v4, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto/16 :goto_26

    .line 117
    nop

    :sswitch_data_c8
    .sparse-switch
        0x2 -> :sswitch_35
        0x7 -> :sswitch_41
        0x8 -> :sswitch_29
        0x10 -> :sswitch_5e
        0x18 -> :sswitch_76
        0x1b -> :sswitch_6a
        0x25 -> :sswitch_82
        0x26 -> :sswitch_8e
    .end sparse-switch

    .line 161
    :pswitch_data_ea
    .packed-switch 0x2
        :pswitch_b8
    .end packed-switch
.end method
