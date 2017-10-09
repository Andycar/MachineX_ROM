.class Lcom/android/settings/fuelgauge/BatterySaverSettings$3$1;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatterySaverSettings$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverSettings$3;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3$1;->this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "BatterySaverSettings"

    const-string v1, "Starting LOW_POWER_MODE from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3$1;->this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$3;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->access$200(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    return-void
.end method
