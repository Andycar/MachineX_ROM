.class Lcom/android/server/location/GpsLocationProvider$1;
.super Lcom/android/server/location/GpsStatusListenerHelper;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Lcom/android/server/location/GpsStatusListenerHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected isSupported()Z
    .registers 2

    .prologue
    .line 392
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v0

    return v0
.end method

.method protected registerWithService()Z
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method protected unregisterFromService()V
    .registers 1

    .prologue
    .line 401
    return-void
.end method
