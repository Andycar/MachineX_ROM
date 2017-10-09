.class Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
.super Ljava/lang/Thread;
.source "SettingsSearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitSerachDBThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    const-string v0, "SettingSearch/SearchIntentReceiver"

    const-string v1, "BOOT_COMPLETED call InitSerachDBThread thread start!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-static {v1}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->searchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    .line 128
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->searchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    invoke-virtual {v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->initSearchDB()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INSERT_SEARCHDB_VER_TWO_EXTRA_APPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "provider.settingsearch.permission.WRITE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 132
    const-string v0, "SettingSearch/SearchIntentReceiver"

    const-string v1, "InitSerachDBThread thread end!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method
