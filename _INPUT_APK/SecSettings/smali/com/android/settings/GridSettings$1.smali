.class Lcom/android/settings/GridSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings/GridSettings$1;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-static {p2}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 507
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lcom/android/settings/GridSettings$1;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v2}, Lcom/android/settings/GridSettings;->access$000(Lcom/android/settings/GridSettings;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/settings/GridSettings$1;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v2, v1}, Lcom/android/settings/GridSettings;->access$002(Lcom/android/settings/GridSettings;Z)Z

    .line 509
    iget-object v2, p0, Lcom/android/settings/GridSettings$1;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v2}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 512
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
