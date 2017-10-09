.class Lcom/android/server/enterprise/device/DeviceInfo$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 209
    const-string v0, "isActive"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 210
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$202(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z

    .line 217
    :cond_1d
    :goto_1d
    return-void

    .line 212
    :cond_1e
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/device/DeviceInfo;->access$302(Lcom/android/server/enterprise/device/DeviceInfo;J)J

    .line 213
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J
    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/device/DeviceInfo;->access$402(Lcom/android/server/enterprise/device/DeviceInfo;J)J

    .line 214
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->access$202(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z

    goto :goto_1d
.end method
