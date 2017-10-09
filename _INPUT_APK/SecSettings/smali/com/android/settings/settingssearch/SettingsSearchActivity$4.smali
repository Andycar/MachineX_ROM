.class Lcom/android/settings/settingssearch/SettingsSearchActivity$4;
.super Landroid/database/ContentObserver;
.source "SettingsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$4;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 130
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 132
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$4;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method
