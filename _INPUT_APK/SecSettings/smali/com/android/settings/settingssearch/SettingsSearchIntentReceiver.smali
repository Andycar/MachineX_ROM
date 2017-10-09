.class public Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;,
        Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
    }
.end annotation


# static fields
.field private static SearchinfoThread:Z

.field private static TitleinfoThread:Z

.field private static isChangeEasyMode:Z

.field private static mDoingInitTitleDB:Z

.field public static searchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    .line 34
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    .line 35
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    .line 36
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    return p0
.end method

.method private isEncryptMode()Z
    .locals 2

    .prologue
    .line 116
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trigger_restart_min_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    .line 50
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    const-string v10, "com.sec.providers.settingsearch"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 51
    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "No package : SettingsSearchProvider"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 56
    const-string v9, "SettingSearch/SearchIntentReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v9, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isEncryptMode()Z

    move-result v9

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    if-nez v9, :cond_3

    .line 59
    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    .line 61
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    .line 62
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V

    .line 63
    .local v7, "thread":Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;->setDaemon(Z)V

    .line 64
    invoke-virtual {v7}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;->start()V

    goto :goto_0

    .line 65
    .end local v7    # "thread":Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
    :cond_3
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isEncryptMode()Z

    move-result v9

    if-nez v9, :cond_4

    .line 66
    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "LOCALE_CHANGED call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    .line 68
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    .line 69
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    const/4 v9, 0x1

    invoke-direct {v7, p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;Z)V

    .line 70
    .local v7, "thread":Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->setDaemon(Z)V

    .line 71
    invoke-virtual {v7}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->start()V

    goto/16 :goto_0

    .line 72
    .end local v7    # "thread":Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    :cond_4
    const-string v9, "android.settings.REQUEST_FINDO_SEARCH_CHANGE_SETTING_VALUE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, "extra":Landroid/os/Bundle;
    const-string v9, "rowId"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 75
    .local v5, "rowId":I
    const-string v9, "value"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 76
    .local v6, "setValue":Ljava/lang/Boolean;
    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 77
    .local v3, "mSearchManger":Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-virtual {v3, v5}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v2

    .line 78
    .local v2, "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_1
    iput v9, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 79
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 78
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 80
    .end local v1    # "extra":Landroid/os/Bundle;
    .end local v2    # "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v3    # "mSearchManger":Lcom/android/settings/settingssearch/SettingsSearchManager;
    .end local v5    # "rowId":I
    .end local v6    # "setValue":Ljava/lang/Boolean;
    :cond_6
    const-string v9, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 81
    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 82
    .restart local v3    # "mSearchManger":Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    .restart local v1    # "extra":Landroid/os/Bundle;
    const-string v9, "rowId"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 84
    .restart local v5    # "rowId":I
    invoke-virtual {v3, v5}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v2

    .line 85
    .restart local v2    # "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 86
    .end local v1    # "extra":Landroid/os/Bundle;
    .end local v2    # "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v3    # "mSearchManger":Lcom/android/settings/settingssearch/SettingsSearchManager;
    .end local v5    # "rowId":I
    :cond_7
    const-string v9, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 87
    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "FINISH_SEARCHDB_EXTRA_APPS call search titleinfo db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 90
    .local v8, "userId":I
    const/16 v9, 0x64

    if-lt v8, v9, :cond_8

    .line 91
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .line 92
    .local v4, "persona":Landroid/os/PersonaManager;
    invoke-virtual {v4, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 93
    const-string v9, "SettingSearch/SearchIntentReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is deleting."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 98
    .end local v4    # "persona":Landroid/os/PersonaManager;
    :cond_8
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    .line 99
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    .line 100
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V

    .line 101
    .restart local v7    # "thread":Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->setDaemon(Z)V

    .line 102
    invoke-virtual {v7}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->start()V

    goto/16 :goto_0

    .line 103
    .end local v7    # "thread":Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    .end local v8    # "userId":I
    :cond_9
    const-string v9, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_0

    .line 104
    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "EASY_MODE_CHANGE call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    .line 106
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    .line 107
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    .line 108
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    const/4 v9, 0x1

    invoke-direct {v7, p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;Z)V

    .line 109
    .restart local v7    # "thread":Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->setDaemon(Z)V

    .line 110
    invoke-virtual {v7}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;->start()V

    goto/16 :goto_0
.end method

.method public restoredb(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 42
    return-void
.end method
