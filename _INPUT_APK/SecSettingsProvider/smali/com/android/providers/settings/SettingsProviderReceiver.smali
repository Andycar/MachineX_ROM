.class public Lcom/android/providers/settings/SettingsProviderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsProviderReceiver.java"


# instance fields
.field protected final mOpenHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mOpenHelpers:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public deleteDatabasetoReset(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 28
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProviderReceiver;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/DatabaseHelper;

    .line 29
    .local v1, "dbreset":Lcom/android/providers/settings/DatabaseHelper;
    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    .end local v1    # "dbreset":Lcom/android/providers/settings/DatabaseHelper;
    invoke-direct {v1, p1, p2}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 33
    .restart local v1    # "dbreset":Lcom/android/providers/settings/DatabaseHelper;
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v0}, Lcom/android/providers/settings/DatabaseHelper;->softResetSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/providers/settings/SettingsProviderReceiver;->deleteDatabasetoReset(Landroid/content/Context;I)V

    .line 24
    :cond_0
    return-void
.end method
