.class Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;
.super Lcom/android/settings/notification/SettingPref;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingPrefWithCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;

.field private mValue:I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "def"    # I
    .param p5, "values"    # [I

    .prologue
    .line 809
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 810
    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 848
    iget v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mSetting:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mDefault:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 2
    .param p1, "settings"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    .line 835
    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    .line 836
    .local v0, "ret":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mValue:I

    .line 838
    return-object v0
.end method

.method public setCallback(Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;

    .line 814
    return-void
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 825
    iget v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mValue:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 830
    :goto_0
    return v0

    .line 826
    :cond_0
    iput p2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mValue:I

    .line 827
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;

    invoke-interface {v0, p2}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;->onSettingSelected(I)V

    .line 830
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setValueWithoutCallback(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 843
    iput p2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mValue:I

    .line 844
    iget v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 819
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->mValue:I

    .line 820
    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 821
    return-void
.end method
