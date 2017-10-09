.class public Lcom/android/settings/rcs/RcsSettings;
.super Ljava/lang/Object;
.source "RcsSettings.java"


# static fields
.field private static mRcsSettingsPreference:Landroid/preference/Preference;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mSettingsTreeParent:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v1, Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 36
    iput-object p2, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 37
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "cscFeatures":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "PARTIAL_BRANDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string v1, "rcs_settings_partial_branded"

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sput-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    .line 45
    :goto_0
    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 48
    :cond_0
    return-void

    .line 41
    :cond_1
    const-string v1, "rcs_settings"

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sput-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    goto :goto_0
.end method


# virtual methods
.method public updateRcsSettingsVisibility(Z)V
    .locals 3
    .param p1, "showRcsSettings"    # Z

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRcsSettingsVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
