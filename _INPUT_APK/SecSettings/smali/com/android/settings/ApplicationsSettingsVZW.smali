.class public Lcom/android/settings/ApplicationsSettingsVZW;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApplicationsSettingsVZW.java"


# instance fields
.field private mCalendar:Landroid/preference/PreferenceScreen;

.field private mContacts:Landroid/preference/PreferenceScreen;

.field mContext:Landroid/content/Context;

.field private mEmail:Landroid/preference/PreferenceScreen;

.field private mGallery:Landroid/preference/PreferenceScreen;

.field private mInternet:Landroid/preference/PreferenceScreen;

.field mIsOwner:Z

.field private mMessages:Landroid/preference/PreferenceScreen;

.field private mSvoice:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 90
    .local v3, "root":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 94
    :cond_0
    const v4, 0x7f070021

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    .line 96
    const-string v4, "browser_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    .line 97
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_2

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_2
    const-string v4, "svoice_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    .line 104
    const-string v0, "com.vlingo.midas.gui.ConversationActivity"

    .line 105
    .local v0, "fragment":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5

    .line 106
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 107
    invoke-static {}, Lcom/android/settings/Utils;->hasKLook()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 108
    const-string v0, "com.vlingo.midas.settings.twopane.SettingsScreenTwoPane"

    .line 113
    :cond_3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.vlingo.midas"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_10

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_1
    const-string v4, "contact_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContacts:Landroid/preference/PreferenceScreen;

    .line 124
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContacts:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_7

    .line 125
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.preference.ContactsPreferenceActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_7

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_7
    const-string v4, "message_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mMessages:Landroid/preference/PreferenceScreen;

    .line 133
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mMessages:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_9

    .line 134
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.settings.EntrancePrefActivity"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_9

    .line 135
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mMessages:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    :cond_9
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_b

    .line 140
    :cond_a
    const-string v4, "call_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->removePreference(Ljava/lang/String;)V

    .line 143
    :cond_b
    const-string v4, "calendar_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mCalendar:Landroid/preference/PreferenceScreen;

    .line 144
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mCalendar:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_c

    .line 145
    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_c

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    :cond_c
    const-string v4, "email_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mEmail:Landroid/preference/PreferenceScreen;

    .line 151
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mEmail:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_d

    .line 152
    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_d

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mEmail:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    :cond_d
    const-string v4, "gallery_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mGallery:Landroid/preference/PreferenceScreen;

    .line 158
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mGallery:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_e

    .line 159
    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_e

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mGallery:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :cond_e
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 165
    return-void

    .line 110
    :cond_f
    const-string v0, "com.vlingo.midas.settings.SettingsScreen"

    goto/16 :goto_0

    .line 119
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_10
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
