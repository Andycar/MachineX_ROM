.class Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
.super Ljava/lang/Thread;
.source "SettingsSearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTitleDBThread"
.end annotation


# instance fields
.field private locale_change:Z

.field private mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 138
    iput-boolean v2, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 140
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-static {v1}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;Z)V
    .locals 2
    .param p2, "value"    # Z

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 140
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-static {v1}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    .line 147
    iput-boolean p2, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    :goto_0
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {v5}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$202(Z)Z

    .line 154
    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$302(Z)Z

    .line 156
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SettingSearch/SearchIntentReceiver"

    const-string v2, "InterruptedException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {v5}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$102(Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$202(Z)Z

    .line 162
    const-string v1, "SettingSearch/SearchIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitTitleDBThread start --> mDoingInitTitleDB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->changed_language()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    :cond_1
    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$402(Z)Z

    .line 165
    new-instance v1, Lcom/android/settings/settingssearch/SettingsSearchUtils;

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    invoke-static {v2}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->searchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    .line 166
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->searchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    iget-boolean v2, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->initTitleDB(Z)V

    .line 168
    :cond_2
    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$102(Z)Z

    .line 169
    const-string v1, "SettingSearch/SearchIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitTitleDBThread end --> mDoingInitTitleDB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "SettingSearch/SearchIntentReceiver"

    const-string v2, "LOCALE_CHANGED call search setting db finish!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->access$202(Z)Z

    .line 172
    return-void
.end method
