.class Lcom/android/server/location/GeoFencerProxy$1;
.super Ljava/lang/Object;
.source "GeoFencerProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeoFencerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeoFencerProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeoFencerProxy;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy$1;->this$0:Lcom/android/server/location/GeoFencerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy$1;->this$0:Lcom/android/server/location/GeoFencerProxy;

    invoke-static {p2}, Landroid/location/IGeoFencer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeoFencer;

    move-result-object v1

    # setter for: Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;
    invoke-static {v0, v1}, Lcom/android/server/location/GeoFencerProxy;->access$002(Lcom/android/server/location/GeoFencerProxy;Landroid/location/IGeoFencer;)Landroid/location/IGeoFencer;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2e

    .line 56
    const-string v0, "GeoFencerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected: mGeoFencer - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy$1;->this$0:Lcom/android/server/location/GeoFencerProxy;

    # getter for: Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;
    invoke-static {v2}, Lcom/android/server/location/GeoFencerProxy;->access$000(Lcom/android/server/location/GeoFencerProxy;)Landroid/location/IGeoFencer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 55
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy$1;->this$0:Lcom/android/server/location/GeoFencerProxy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;
    invoke-static {v0, v1}, Lcom/android/server/location/GeoFencerProxy;->access$002(Lcom/android/server/location/GeoFencerProxy;Landroid/location/IGeoFencer;)Landroid/location/IGeoFencer;

    .line 61
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_11

    .line 62
    const-string v0, "GeoFencerProxy"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 61
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method
