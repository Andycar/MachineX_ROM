.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)V
    .registers 2

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p2, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;

    .prologue
    .line 1500
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 4
    .param p1, "event"    # I

    .prologue
    .line 1504
    packed-switch p1, :pswitch_data_1c

    .line 1519
    :goto_3
    :pswitch_3
    return-void

    .line 1506
    :pswitch_4
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1509
    :pswitch_c
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1512
    :pswitch_14
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine calcuates first fix"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1504
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_4
        :pswitch_c
        :pswitch_14
        :pswitch_3
    .end packed-switch
.end method
