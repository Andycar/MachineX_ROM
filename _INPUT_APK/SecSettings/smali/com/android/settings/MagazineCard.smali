.class public Lcom/android/settings/MagazineCard;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MagazineCard.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mEmail:Landroid/preference/CheckBoxPreference;

.field private mHereAndNow:Landroid/preference/CheckBoxPreference;

.field private mNews:Landroid/preference/CheckBoxPreference;

.field private mSocial:Landroid/preference/CheckBoxPreference;

.field private mTodayBirthday:Landroid/preference/CheckBoxPreference;

.field private mTodaySchedule:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    const-string v0, "MagazineCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged isChecked :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_card_enabled"

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    if-eqz p2, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 247
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 241
    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v17, 0x7f070071

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->addPreferencesFromResource(I)V

    .line 74
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    .line 75
    const-string v17, "weather"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mWeather:Landroid/preference/CheckBoxPreference;

    .line 76
    const-string v17, "today_schedule"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mTodaySchedule:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string v17, "today_birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mTodayBirthday:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v17, "news"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mNews:Landroid/preference/CheckBoxPreference;

    .line 79
    const-string v17, "social"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mSocial:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v17, "hereandnow"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mHereAndNow:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v17, "email"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mEmail:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v17, "ATT"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "SPR"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "VZW"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "TMB"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "USC"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "VMU"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "BST"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "XAS"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "CRI"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "CSP"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "XAR"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "LRA"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "MCT"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "ESK"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "XAC"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "AIO"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "ACG"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mTodaySchedule:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a179b

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 88
    :cond_1
    const-string v14, ""

    .line 89
    .local v14, "remFeature":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 90
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 91
    .local v15, "remFeatureList":[Ljava/lang/String;
    move-object v6, v15

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v11, :cond_3

    aget-object v9, v6, v7

    .line 92
    .local v9, "item":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 93
    const-string v17, "-"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, "itemRemove":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/MagazineCard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 95
    .local v16, "removeItem":Landroid/preference/CheckBoxPreference;
    if-eqz v16, :cond_2

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MagazineCard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    .end local v10    # "itemRemove":Ljava/lang/String;
    .end local v16    # "removeItem":Landroid/preference/CheckBoxPreference;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "item":Ljava/lang/String;
    .end local v11    # "len$":I
    .end local v15    # "remFeatureList":[Ljava/lang/String;
    :cond_3
    const-string v17, "CHM"

    const-string v18, "ril.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mNews:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MagazineCard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mNews:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mSocial:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MagazineCard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mSocial:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    :cond_5
    const-string v17, "VZW"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mHereAndNow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MagazineCard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mHereAndNow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :cond_6
    const-string v17, "VZW"

    sget-object v18, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MagazineCard;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 116
    .local v5, "activity":Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 117
    instance-of v0, v5, Landroid/preference/PreferenceActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object v13, v5

    .line 118
    check-cast v13, Landroid/preference/PreferenceActivity;

    .line 119
    .local v13, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0058

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 121
    .local v12, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 122
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    const/16 v18, 0x10

    const/16 v19, 0x10

    invoke-virtual/range {v17 .. v19}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 124
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v18, v0

    new-instance v19, Landroid/app/ActionBar$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/16 v22, 0x15

    invoke-direct/range {v19 .. v22}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 128
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mActionBarLayout:Landroid/view/View;

    .line 148
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v12    # "padding":I
    .end local v13    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_7
    :goto_1
    return-void

    .line 131
    .restart local v5    # "activity":Landroid/app/Activity;
    :cond_8
    const-string v17, "layout_inflater"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 132
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f040065

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 134
    .local v4, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    instance-of v0, v5, Landroid/preference/PreferenceActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object v13, v5

    .line 135
    check-cast v13, Landroid/preference/PreferenceActivity;

    .line 136
    .restart local v13    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    const/16 v18, 0x10

    const/16 v19, 0x10

    invoke-virtual/range {v17 .. v19}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 137
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    new-instance v18, Landroid/app/ActionBar$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x15

    invoke-direct/range {v18 .. v21}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 141
    const v17, 0x7f10010e

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    .line 142
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MagazineCard;->mActionBarLayout:Landroid/view/View;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 197
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAllLockScreenCardOptionDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_card_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_card_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a11ff

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/settings/MagazineCard;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "category_value_weather"

    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    const-string v0, "MagazineCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWeather :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_weather"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAllLockScreenCardOptionDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_card_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MagazineCard;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 229
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2
    move v0, v1

    .line 202
    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/android/settings/MagazineCard;->mTodaySchedule:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "category_value_todayschedule"

    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mTodaySchedule:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    const-string v0, "MagazineCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTodaySchedule :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todayschedule"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 205
    goto :goto_2

    .line 207
    :cond_5
    iget-object v2, p0, Lcom/android/settings/MagazineCard;->mTodayBirthday:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "category_value_todaybirthday"

    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mTodayBirthday:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    const-string v0, "MagazineCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTodayBirthday :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todaybirthday"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 208
    goto :goto_3

    .line 210
    :cond_7
    iget-object v2, p0, Lcom/android/settings/MagazineCard;->mNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "category_value_news"

    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    const-string v0, "MagazineCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNews :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_news"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 211
    goto :goto_4

    .line 213
    :cond_9
    iget-object v2, p0, Lcom/android/settings/MagazineCard;->mSocial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "category_value_social"

    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mSocial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    const-string v0, "MagazineCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSocial :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_social"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 214
    goto :goto_5

    .line 216
    :cond_b
    iget-object v2, p0, Lcom/android/settings/MagazineCard;->mHereAndNow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "category_value_hereandnow"

    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mHereAndNow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    const-string v0, "MagazineCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHereAndNow :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_hereandnow"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 217
    goto :goto_6

    .line 219
    :cond_d
    iget-object v2, p0, Lcom/android/settings/MagazineCard;->mEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "category_value_email"

    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    const-string v0, "MagazineCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_email"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    move v0, v1

    .line 220
    goto :goto_7
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "category_value_weather"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mTodaySchedule:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "category_value_todayschedule"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mTodayBirthday:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "category_value_todaybirthday"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "category_value_news"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mSocial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "category_value_social"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mHereAndNow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "category_value_hereandnow"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v4, p0, Lcom/android/settings/MagazineCard;->mEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "category_value_email"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    const-string v1, "VZW"

    sget-object v4, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/settings/MagazineCard;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/MagazineCard;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lock_screen_card_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v0, v2

    .line 169
    .local v0, "isChecked":Z
    :goto_7
    iget-object v1, p0, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/MagazineCard;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/MagazineCard;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 172
    .end local v0    # "isChecked":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 155
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 156
    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 157
    goto/16 :goto_2

    :cond_5
    move v1, v3

    .line 158
    goto :goto_3

    :cond_6
    move v1, v3

    .line 159
    goto :goto_4

    :cond_7
    move v1, v3

    .line 160
    goto :goto_5

    :cond_8
    move v1, v3

    .line 161
    goto :goto_6

    :cond_9
    move v0, v3

    .line 168
    goto :goto_7
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 186
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/MagazineCard;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/MagazineCard;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/MagazineCard;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/MagazineCard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 192
    :cond_0
    return-void
.end method
