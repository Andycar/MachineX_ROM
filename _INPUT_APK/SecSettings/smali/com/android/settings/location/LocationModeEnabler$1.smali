.class Lcom/android/settings/location/LocationModeEnabler$1;
.super Landroid/database/ContentObserver;
.source "LocationModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/location/LocationModeEnabler$1;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/android/settings/location/LocationModeEnabler$1;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    invoke-static {v2}, Lcom/android/settings/location/LocationModeEnabler;->access$000(Lcom/android/settings/location/LocationModeEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/location/LocationModeEnabler$1;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    invoke-static {v2}, Lcom/android/settings/location/LocationModeEnabler;->access$000(Lcom/android/settings/location/LocationModeEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 71
    .local v0, "locationModeState":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 72
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler$1;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    invoke-static {v1}, Lcom/android/settings/location/LocationModeEnabler;->access$100(Lcom/android/settings/location/LocationModeEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationModeEnabler$1;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    invoke-static {v2}, Lcom/android/settings/location/LocationModeEnabler;->access$000(Lcom/android/settings/location/LocationModeEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 75
    :cond_2
    return-void
.end method
