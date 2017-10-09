.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCalls:Landroid/telephony/SubInfoRecord;

.field private mCellularData:Landroid/telephony/SubInfoRecord;

.field private mNumSims:I

.field private mSMS:Landroid/telephony/SubInfoRecord;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 375
    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 84
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubInfoRecord;

    .line 88
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubInfoRecord;

    .line 89
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubInfoRecord;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method private createPreferences()V
    .locals 7

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 113
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const v5, 0x7f0700cd

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 115
    const-string v5, "sim_cards"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 117
    .local v2, "simCards":Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 118
    .local v1, "numSlots":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 119
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    .line 122
    .local v3, "sir":Landroid/telephony/SubInfoRecord;
    new-instance v5, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubInfoRecord;I)V

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 123
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    if-eqz v3, :cond_0

    .line 125
    iget v5, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v3    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 130
    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 183
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 186
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 188
    .local v2, "sir":Landroid/telephony/SubInfoRecord;
    iget v3, v2, Landroid/telephony/SubInfoRecord;->slotId:I

    if-ne v3, p1, :cond_0

    .line 195
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :goto_1
    return-object v2

    .line 186
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubInfoRecord;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 166
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 170
    .local v2, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 175
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :goto_1
    return-object v2

    .line 168
    .restart local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 152
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 153
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 154
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 159
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 135
    return-void
.end method

.method private updateCallValues()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 217
    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 218
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 219
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 220
    iget v3, v1, Landroid/telephony/SubInfoRecord;->slotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    .line 222
    :cond_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 223
    return-void

    .line 222
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 208
    const-string v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 209
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 210
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 211
    iget v3, v1, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    .line 213
    :cond_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 214
    return-void

    .line 213
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateSimSlotValues()V
    .locals 6

    .prologue
    .line 138
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllSubInfoList()Ljava/util/List;

    .line 139
    const-string v5, "sim_cards"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 140
    .local v4, "simCards":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 142
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 143
    .local v3, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 144
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 145
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v5, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v5, :cond_0

    .line 146
    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 199
    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 200
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 201
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 202
    iget v3, v1, Landroid/telephony/SubInfoRecord;->slotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    .line 204
    :cond_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 205
    return-void

    .line 204
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
    .locals 8
    .param p1, "preference"    # Lcom/android/settings/notification/DropDownPreference;

    .prologue
    .line 242
    move-object v3, p1

    .line 243
    .local v3, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "keyPref":Ljava/lang/String;
    const-string v6, "sim_calls"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "sim_sms"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 246
    .local v0, "askFirst":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    .line 248
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0ef2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_1
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 254
    .local v5, "subAvailableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 255
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubInfoRecord;

    .line 256
    .local v4, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v4, :cond_2

    .line 257
    iget-object v6, v4, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "askFirst":Z
    .end local v1    # "i":I
    .end local v4    # "sir":Landroid/telephony/SubInfoRecord;
    .end local v5    # "subAvailableSize":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    .restart local v0    # "askFirst":Z
    .restart local v1    # "i":I
    .restart local v5    # "subAvailableSize":I
    :cond_4
    new-instance v6, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 107
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 234
    instance-of v0, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 235
    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    .line 238
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 228
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 229
    return-void
.end method
