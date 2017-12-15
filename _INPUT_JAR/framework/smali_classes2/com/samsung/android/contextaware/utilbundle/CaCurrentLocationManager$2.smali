.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;
.super Ljava/lang/Object;
.source "CaCurrentLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

.field final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->val$provider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->val$provider:Ljava/lang/String;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/location/LocationListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->mLooper:Landroid/os/Looper;
    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 204
    return-void
.end method
