.class public interface abstract Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
.super Ljava/lang/Object;
.source "QuickConnectConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDeviceStatusListener"
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract onDeviceChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract onDeviceRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDiscoveryFinished()V
.end method

.method public abstract onDiscoveryStarted()V
.end method
