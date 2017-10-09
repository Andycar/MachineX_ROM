.class public Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private androidBeam:Landroid/preference/Preference;

.field private exportAccessibility:Landroid/preference/Preference;

.field private importAccessibility:Landroid/preference/Preference;

.field private importexportAccessibility:Landroid/preference/Preference;

.field private myFilesAppStatus:Z

.field private shareAccessibility:Landroid/preference/Preference;

.field private sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->myFilesAppStatus:Z

    return-void
.end method

.method private isMyFileEnabled()Z
    .locals 6

    .prologue
    .line 71
    const/4 v1, 0x1

    .line 73
    .local v1, "appStatus":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.myfiles"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 74
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SharedAccessibilityFragment"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "SharedAccessibilityFragment"

    const-string v1, "SharedAccessibilityFragment Loaded"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->addPreferencesFromResource(I)V

    .line 41
    const-string v0, "shared_accessibility_menus"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    .line 42
    const-string v0, "shared_accessibility_export_import"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 45
    const-string v0, "shared_accessibility_export"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    .line 46
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    const-string v0, "shared_accessibility_import"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    .line 49
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 51
    const-string v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    const-string v0, "shared_accessibility_android_beam"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isMyFileEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->myFilesAppStatus:Z

    .line 68
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    iget-boolean v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->myFilesAppStatus:Z

    if-nez v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityExport"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityImport"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 100
    goto :goto_0

    .line 101
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityShareVia"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 107
    goto :goto_0

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilitySettingsNFCSend"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 114
    goto :goto_0

    .line 115
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityExportImport"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 121
    goto/16 :goto_0
.end method
