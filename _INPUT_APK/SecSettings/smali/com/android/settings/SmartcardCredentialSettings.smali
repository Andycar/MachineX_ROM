.class public Lcom/android/settings/SmartcardCredentialSettings;
.super Landroid/preference/PreferenceFragment;
.source "SmartcardCredentialSettings.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmartcardCredentialSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/SmartcardCredentialSettings;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SmartcardCredentialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a028e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmartcardCredentialSettings;->mDialog:Landroid/app/AlertDialog;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmartcardCredentialSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/SmartcardCredentialSettings;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/SmartcardCredentialSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartcardCredentialSettings$1;-><init>(Lcom/android/settings/SmartcardCredentialSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/android/settings/SmartcardCredentialSettings;->addPreferencesFromResource(I)V

    .line 43
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SmartcardCredentialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SmartcardCredentialSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "key":Ljava/lang/String;
    const-string v2, "SmartcardCredentialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "smartcardregister"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/settings/SmartcardCredentialSettings;->showDialog()V

    .line 114
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 103
    :cond_1
    const-string v2, "smartcardunregister"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/android/settings/SmartcardCredentialSettings;->showDialog()V

    goto :goto_0

    .line 110
    :cond_2
    const-string v2, "smartcardhelp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARDHELPPAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/SmartcardCredentialSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SmartcardCredentialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 54
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const-string v5, "smartcard_association"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 56
    .local v3, "smartcardCategory":Landroid/preference/PreferenceCategory;
    const-string v5, "smartcardregister"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 57
    .local v0, "regCard":Landroid/preference/Preference;
    const-string v5, "smartcardunregister"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 59
    .local v4, "unregCard":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    :cond_0
    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    :cond_1
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SmartcardCredentialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "registerCard":Landroid/preference/Preference;
    const-string v5, "smartcardregister"

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 78
    const v5, 0x7f0a0287

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 79
    const v5, 0x7f0a028a

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 80
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 81
    const-string v5, "smartcardstatus"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v6, 0x7f0a0289

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 86
    return-void
.end method
