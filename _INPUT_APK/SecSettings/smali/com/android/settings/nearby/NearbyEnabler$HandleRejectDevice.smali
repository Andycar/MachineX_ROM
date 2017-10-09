.class Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleRejectDevice"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/nearby/NearbyEnabler;
    .param p2, "x1"    # Lcom/android/settings/nearby/NearbyEnabler$1;

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1316
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/util/HashSet;

    if-nez v2, :cond_1

    .line 1333
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 1321
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-string v2, "NearbyEnabler"

    const-string v3, "HandleRejectDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleRejectDevice"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    check-cast p2, Ljava/util/HashSet;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v3, p2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1900(Lcom/android/settings/nearby/NearbyEnabler;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/nearby/IMediaServer;->removeRejectList(Ljava/lang/String;)V

    .line 1324
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1325
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/nearby/IMediaServer;->announceServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NearbyEnabler"

    const-string v3, "HandleRejectDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
