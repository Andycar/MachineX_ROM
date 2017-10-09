.class Lcom/android/settings/ResetSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSettings;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-static {v0, v4}, Lcom/android/settings/ResetSettings;->access$002(Lcom/android/settings/ResetSettings;Z)Z

    .line 139
    iget-object v0, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    new-instance v1, Lcom/android/settings/ResetSettings$ResetSettingsTask;

    iget-object v2, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/ResetSettings$ResetSettingsTask;-><init>(Lcom/android/settings/ResetSettings;Lcom/android/settings/ResetSettings$1;)V

    iput-object v1, v0, Lcom/android/settings/ResetSettings;->resetTask:Lcom/android/settings/ResetSettings$ResetSettingsTask;

    .line 140
    iget-object v0, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v0, v0, Lcom/android/settings/ResetSettings;->resetTask:Lcom/android/settings/ResetSettings$ResetSettingsTask;

    new-array v1, v4, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetSettings$ResetSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    :cond_0
    return-void
.end method
