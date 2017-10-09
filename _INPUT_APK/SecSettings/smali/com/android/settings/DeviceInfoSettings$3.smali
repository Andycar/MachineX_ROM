.class Lcom/android/settings/DeviceInfoSettings$3;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->initCCMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$3;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1510
    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1511
    const-string v2, "DeviceInfoSettings"

    const-string v3, "SecurityManagerService : SM Service run"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const/4 v1, 0x0

    .line 1514
    .local v1, "res":I
    :try_start_0
    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->access$200()Lcom/sec/android/service/sm/aidl/ISecurityManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/service/sm/aidl/ISecurityManager;->initCCMode()I

    move-result v1

    .line 1515
    if-eqz v1, :cond_0

    .line 1516
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityManagerService : init err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$3;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->access$300(Lcom/android/settings/DeviceInfoSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    .end local v1    # "res":I
    :goto_0
    return-void

    .line 1519
    .restart local v1    # "res":I
    :catch_0
    move-exception v0

    .line 1520
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DeviceInfoSettings"

    const-string v3, "SecurityManagerService : SM Service Exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1524
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "res":I
    :cond_1
    const-string v2, "DeviceInfoSettings"

    const-string v3, "SecurityManagerService : SM Service is not connected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
