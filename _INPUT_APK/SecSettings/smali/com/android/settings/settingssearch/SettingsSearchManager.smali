.class public Lcom/android/settings/settingssearch/SettingsSearchManager;
.super Ljava/lang/Object;
.source "SettingsSearchManager.java"


# static fields
.field public static final SETTINGINFO_URI:Landroid/net/Uri;

.field public static final SETTINGSEARCH_URI:Landroid/net/Uri;

.field static final TEXTINFO_PROJECTION:[Ljava/lang/String;

.field public static final TITLEINFO_URI:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;

.field public static mParents_name:Ljava/lang/String;

.field private static mtab_root:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DATA_EMPTY:I

.field public final TABLE_ALL:I

.field public final TABLE_SETTINGINFO:I

.field public final TABLE_SETTINGINFO_ITEM_ID_KEY:I

.field public final TABLE_TEXTINFO:I

.field public final TABLE_TEXTINFO_ITEM_ID_KEY:I

.field private mSearchBoostHelper:Landroid/os/DVFSHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    .line 39
    const-string v0, "content://com.sec.providers.settingsearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGSEARCH_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.sec.providers.settingsearch/searchinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.sec.providers.settingsearch/titleinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    .line 93
    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mtab_root:Ljava/util/HashMap;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mParents_name:Ljava/lang/String;

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "summary AS suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "icon AS suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "menu_type AS suggest_extra_flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "menu_path AS suggest_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->TEXTINFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->DATA_EMPTY:I

    .line 45
    iput v7, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->TABLE_ALL:I

    .line 47
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->TABLE_SETTINGINFO:I

    .line 49
    const/16 v0, 0x44c

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->TABLE_SETTINGINFO_ITEM_ID_KEY:I

    .line 51
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->TABLE_TEXTINFO:I

    .line 53
    const/16 v0, 0x834

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->TABLE_TEXTINFO_ITEM_ID_KEY:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    .line 109
    sput-object p1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mtab_root:Ljava/util/HashMap;

    .line 112
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "Connections"

    const v2, 0x7f0a103d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "My device"

    const v2, 0x7f0a103e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "Accounts"

    const v2, 0x7f0a103f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mtab_root:Ljava/util/HashMap;

    const-string v1, "More"

    const v2, 0x7f0a1040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    const-string v2, "SETTING_SEARCH_CPU_BOOST"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    .line 120
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    .line 121
    .local v6, "supportedCpuFreqTable":[I
    if-eqz v6, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v6, v7

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 125
    .end local v6    # "supportedCpuFreqTable":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public Delete(ILjava/lang/String;)V
    .locals 6
    .param p1, "delet"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 466
    const-string v0, "id_key = ?"

    .line 468
    .local v0, "select":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 493
    :goto_0
    return-void

    .line 470
    :sswitch_0
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :sswitch_1
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :sswitch_2
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :sswitch_3
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :sswitch_4
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGSEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 468
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x834 -> :sswitch_3
    .end sparse-switch
.end method

.method public addSearchInfoDB(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "addItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v3, "addSearchInfoDB"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 183
    return-void
.end method

.method public addTextInfoDB(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "addItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    :try_start_0
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v4, "addTextInfoDB"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "SettingSearch/SettingsSearchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTextInfoDB SQLiteFullException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changed_language()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_searchinfo()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 147
    :goto_0
    return v5

    .line 133
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 134
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "language":Ljava/lang/String;
    const/4 v4, 0x0

    .line 138
    .local v4, "update":Z
    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v8, "getLanguage"

    invoke-virtual {v6, v7, v8, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 139
    .local v3, "result":Landroid/os/Bundle;
    const-string v0, ""

    .line 141
    .local v0, "db_language":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 142
    const-string v6, "data"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    :goto_1
    move v5, v4

    .line 147
    goto :goto_0

    :cond_2
    move v4, v5

    .line 145
    goto :goto_1
.end method

.method public getCount_searchinfo()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 164
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v4, "getCount_searchinfo"

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 166
    .local v1, "result":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 167
    .local v0, "count":I
    if-eqz v1, :cond_0

    .line 168
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    :cond_0
    if-gez v0, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 174
    :cond_1
    return v0
.end method

.method public getCount_titleinfo()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v4, "getCount_titleinfo"

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 152
    .local v1, "result":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 153
    .local v0, "count":I
    if-eqz v1, :cond_0

    .line 154
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 157
    :cond_0
    if-gtz v0, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 160
    :cond_1
    return v0
.end method

.method public getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 19
    .param p1, "rowid"    # I

    .prologue
    .line 337
    new-instance v8, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v8}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 339
    .local v8, "addItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rowid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "select":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 343
    .local v9, "c":Landroid/database/Cursor;
    const-string v2, "id_key"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 344
    .local v11, "cID_KEY":I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 345
    .local v17, "cTITLE":I
    const-string v2, "title_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 346
    .local v18, "cTITLE_RES_ID":I
    const-string v2, "summary"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 347
    .local v15, "cSUMMARY":I
    const-string v2, "summary_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 348
    .local v16, "cSUMMARYE_RES_ID":I
    const-string v2, "icon_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 349
    .local v10, "cICON_RES_ID":I
    const-string v2, "parentskey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 350
    .local v13, "cPARENTSKEY":I
    const-string v2, "menu_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 351
    .local v12, "cMENU_TYPE":I
    const-string v2, "package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 353
    .local v14, "cPakage_NAME":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    move/from16 v0, p1

    iput v0, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 355
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 356
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 357
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 358
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 359
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 360
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 361
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 362
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 363
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 367
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 369
    return-object v8
.end method

.method public getPreInfo(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 20
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v8, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v8}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 300
    .local v8, "addItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    const-string v5, "id_key = ?"

    .line 302
    .local v5, "select":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 304
    .local v9, "c":Landroid/database/Cursor;
    const-string v2, "rowid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 305
    .local v15, "cROWID":I
    const-string v2, "id_key"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 306
    .local v11, "cID_KEY":I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 307
    .local v18, "cTITLE":I
    const-string v2, "title_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 308
    .local v19, "cTITLE_RES_ID":I
    const-string v2, "summary"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 309
    .local v16, "cSUMMARY":I
    const-string v2, "summary_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 310
    .local v17, "cSUMMARYE_RES_ID":I
    const-string v2, "icon_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 311
    .local v10, "cICON_RES_ID":I
    const-string v2, "parentskey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 312
    .local v13, "cPARENTSKEY":I
    const-string v2, "menu_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 313
    .local v12, "cMENU_TYPE":I
    const-string v2, "package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 315
    .local v14, "cPakage_NAME":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 317
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 318
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 319
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 320
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 321
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 322
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 323
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 324
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 325
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 329
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 331
    return-object v8
.end method

.method public getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .param p1, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v18, "getItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 409
    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v18

    .line 411
    :cond_1
    const/4 v8, 0x0

    .line 414
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 417
    :cond_2
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v6, "menu_path"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 425
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_3

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchManager;->mSearchBoostHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_3
    if-nez v8, :cond_5

    .line 457
    if-eqz v8, :cond_0

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 421
    :cond_4
    :try_start_1
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v6, "title"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 431
    :cond_5
    const-string v1, "suggest_intent_data_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 432
    .local v14, "cROWID":I
    const-string v1, "id_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 433
    .local v10, "cID_KEY":I
    const-string v1, "suggest_text_1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 434
    .local v16, "cTITLE":I
    const-string v1, "suggest_icon_1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 435
    .local v9, "cICON":I
    const-string v1, "suggest_text_2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 436
    .local v15, "cSUMMARY":I
    const-string v1, "suggest_target_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 437
    .local v13, "cMENU_TYPE":I
    const-string v1, "suggest_group"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 438
    .local v11, "cMENU_PATH":I
    const-string v1, "suggest_extra_flags"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 440
    .local v12, "cMENU_STATE":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 442
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v7}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 443
    .local v7, "addItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 444
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 445
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 446
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 447
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 448
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 449
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 450
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 451
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 454
    .end local v7    # "addItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v9    # "cICON":I
    .end local v10    # "cID_KEY":I
    .end local v11    # "cMENU_PATH":I
    .end local v12    # "cMENU_STATE":I
    .end local v13    # "cMENU_TYPE":I
    .end local v14    # "cROWID":I
    .end local v15    # "cSUMMARY":I
    .end local v16    # "cTITLE":I
    :catch_0
    move-exception v17

    .line 455
    .local v17, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    if-eqz v8, :cond_0

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 457
    .end local v17    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v9    # "cICON":I
    .restart local v10    # "cID_KEY":I
    .restart local v11    # "cMENU_PATH":I
    .restart local v12    # "cMENU_STATE":I
    .restart local v13    # "cMENU_TYPE":I
    .restart local v14    # "cROWID":I
    .restart local v15    # "cSUMMARY":I
    .restart local v16    # "cTITLE":I
    :cond_6
    if-eqz v8, :cond_0

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 457
    .end local v9    # "cICON":I
    .end local v10    # "cID_KEY":I
    .end local v11    # "cMENU_PATH":I
    .end local v12    # "cMENU_STATE":I
    .end local v13    # "cMENU_TYPE":I
    .end local v14    # "cROWID":I
    .end local v15    # "cSUMMARY":I
    .end local v16    # "cTITLE":I
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public getTitleInfoDBFromKey(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 16
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v7}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 376
    .local v7, "addItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 380
    .local v8, "c":Landroid/database/Cursor;
    const-string v1, "rowid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 381
    .local v13, "cROWID":I
    const-string v1, "id_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 382
    .local v10, "cID_KEY":I
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 383
    .local v15, "cTITLE":I
    const-string v1, "icon"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 384
    .local v9, "cICON":I
    const-string v1, "summary"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 385
    .local v14, "cSUMMARY":I
    const-string v1, "menu_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 386
    .local v12, "cMENU_TYPE":I
    const-string v1, "menu_path"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 388
    .local v11, "cMENU_PATH":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 390
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 391
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 392
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 393
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 394
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 395
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 397
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 399
    return-object v7
.end method

.method public refer_settinginfo_db_for_titleinfo(Z)Ljava/util/ArrayList;
    .locals 24
    .param p1, "locale_change"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v21, "getItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_searchinfo()I

    move-result v22

    .line 238
    .local v22, "numSearchinfo":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v23

    .line 240
    .local v23, "numtitleinfo":I
    if-eqz p1, :cond_2

    .line 241
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchManager;->Delete(ILjava/lang/String;)V

    .line 242
    const/16 v23, 0x0

    .line 249
    :cond_0
    const-string v2, "SettingSearch/SettingsSearchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Infomation -> numtitleinfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " numSearchinfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v9, 0x0

    .line 252
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid between + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v23, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 253
    if-nez v9, :cond_3

    .line 287
    if-eqz v9, :cond_1

    .line 288
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 293
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v21

    .line 243
    :cond_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 257
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v2, "id_key"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 258
    .local v11, "cID_KEY":I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 259
    .local v18, "cTITLE":I
    const-string v2, "title_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 260
    .local v19, "cTITLE_RES_ID":I
    const-string v2, "summary"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 261
    .local v16, "cSUMMARY":I
    const-string v2, "summary_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 262
    .local v17, "cSUMMARY_RES_ID":I
    const-string v2, "icon_res_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 263
    .local v10, "cICON_RES_ID":I
    const-string v2, "menu_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 264
    .local v12, "cMENU_TYPE":I
    const-string v2, "parentskey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 265
    .local v14, "cPARENTSKEY":I
    const-string v2, "package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 266
    .local v13, "cPACKAGE_NAME":I
    const-string v2, "registerMode"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 268
    .local v15, "cREGISTERMODE":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 270
    new-instance v8, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v8}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 271
    .local v8, "addItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 272
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 273
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 274
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 275
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 276
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 277
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 278
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 279
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 280
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/settings/settingssearch/SettingsSearchItem;->registerMode:I

    .line 282
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 284
    .end local v8    # "addItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v10    # "cICON_RES_ID":I
    .end local v11    # "cID_KEY":I
    .end local v12    # "cMENU_TYPE":I
    .end local v13    # "cPACKAGE_NAME":I
    .end local v14    # "cPARENTSKEY":I
    .end local v15    # "cREGISTERMODE":I
    .end local v16    # "cSUMMARY":I
    .end local v17    # "cSUMMARY_RES_ID":I
    .end local v18    # "cTITLE":I
    .end local v19    # "cTITLE_RES_ID":I
    :catch_0
    move-exception v20

    .line 285
    .local v20, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    if-eqz v9, :cond_4

    .line 288
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 292
    .end local v20    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :cond_4
    :goto_2
    const-string v2, "SettingSearch/SettingsSearchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Infomation -> getItem size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    .restart local v10    # "cICON_RES_ID":I
    .restart local v11    # "cID_KEY":I
    .restart local v12    # "cMENU_TYPE":I
    .restart local v13    # "cPACKAGE_NAME":I
    .restart local v14    # "cPARENTSKEY":I
    .restart local v15    # "cREGISTERMODE":I
    .restart local v16    # "cSUMMARY":I
    .restart local v17    # "cSUMMARY_RES_ID":I
    .restart local v18    # "cTITLE":I
    .restart local v19    # "cTITLE_RES_ID":I
    :cond_5
    if-eqz v9, :cond_4

    .line 288
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 287
    .end local v10    # "cICON_RES_ID":I
    .end local v11    # "cID_KEY":I
    .end local v12    # "cMENU_TYPE":I
    .end local v13    # "cPACKAGE_NAME":I
    .end local v14    # "cPARENTSKEY":I
    .end local v15    # "cREGISTERMODE":I
    .end local v16    # "cSUMMARY":I
    .end local v17    # "cSUMMARY_RES_ID":I
    .end local v18    # "cTITLE":I
    .end local v19    # "cTITLE_RES_ID":I
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_6

    .line 288
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method
