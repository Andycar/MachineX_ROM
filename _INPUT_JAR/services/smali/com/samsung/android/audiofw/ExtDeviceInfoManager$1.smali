.class Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;
.super Landroid/os/Handler;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)V
    .registers 2

    .prologue
    .line 647
    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;->this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 650
    iget-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;->this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;

    # invokes: Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->sendUSBAudioIntent(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V
    invoke-static {v1, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->access$600(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V

    .line 651
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;->this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->access$700(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 652
    return-void
.end method
