.class Lcom/sec/android/sviewcover/BatteryMeterView$1;
.super Landroid/os/Handler;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/BatteryMeterView;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sec/android/sviewcover/BatteryMeterView$1;->this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 522
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 527
    :goto_0
    return-void

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/BatteryMeterView$1;->this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
