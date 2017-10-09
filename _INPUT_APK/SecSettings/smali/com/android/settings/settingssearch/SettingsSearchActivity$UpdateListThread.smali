.class Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;
.super Ljava/lang/Thread;
.source "SettingsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateListThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    new-instance v1, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;

    invoke-direct {v1, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method
