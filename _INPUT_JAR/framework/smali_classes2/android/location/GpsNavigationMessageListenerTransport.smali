.class Landroid/location/GpsNavigationMessageListenerTransport;
.super Landroid/location/LocalListenerHelper;
.source "GpsNavigationMessageListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessageListenerTransport$1;,
        Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper",
        "<",
        "Landroid/location/GpsNavigationMessageEvent$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 37
    const-string v0, "GpsNavigationMessageListenerTransport"

    invoke-direct {p0, v0}, Landroid/location/LocalListenerHelper;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;-><init>(Landroid/location/GpsNavigationMessageListenerTransport;Landroid/location/GpsNavigationMessageListenerTransport$1;)V

    iput-object v0, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

    .line 38
    iput-object p1, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    .line 40
    return-void
.end method


# virtual methods
.method protected registerWithServer()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

    iget-object v2, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromServer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)Z

    .line 52
    return-void
.end method
