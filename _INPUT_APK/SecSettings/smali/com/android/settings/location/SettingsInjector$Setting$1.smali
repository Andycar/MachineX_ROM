.class Lcom/android/settings/location/SettingsInjector$Setting$1;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/SettingsInjector$Setting;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/location/SettingsInjector$Setting;


# direct methods
.method constructor <init>(Lcom/android/settings/location/SettingsInjector$Setting;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 471
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 472
    .local v1, "enabled":Z
    const-string v2, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v4, v4, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v2, v2, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v2, v2, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 477
    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v2, v2, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v2}, Lcom/android/settings/location/SettingsInjector;->access$400(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v3, v3, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v3}, Lcom/android/settings/location/SettingsInjector;->access$400(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    return-void
.end method
