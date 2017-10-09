.class Lcom/android/settings/accounts/AccountPreferenceBase$3;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceBase;->addSamsungBackupRestorePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->access$100(Lcom/android/settings/accounts/AccountPreferenceBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.ManualRestoreActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-virtual {v1, v0}, Lcom/android/settings/accounts/AccountPreferenceBase;->startActivity(Landroid/content/Intent;)V

    .line 221
    const/4 v1, 0x0

    return v1

    .line 218
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.scloud.backup"

    const-string v3, "com.samsung.android.scloud.backup.ManualRestoreActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
