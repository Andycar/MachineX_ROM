.class Lcom/android/internal/app/ResolverActivity$2;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .prologue
    .line 286
    const-string v0, "ResolverActivity"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->startDiscovery(Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;)V

    .line 288
    return-void
.end method

.method public onDisconnected()V
    .registers 3

    .prologue
    .line 281
    const-string v0, "ResolverActivity"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method
