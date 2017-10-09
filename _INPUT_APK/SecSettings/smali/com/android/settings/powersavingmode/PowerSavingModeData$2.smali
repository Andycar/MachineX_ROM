.class Lcom/android/settings/powersavingmode/PowerSavingModeData$2;
.super Ljava/lang/Object;
.source "PowerSavingModeData.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeData;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeData;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 141
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 142
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v1, "edit_direct"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v1, "edit_value"

    const-string v3, "apps"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 146
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-string v1, "com.android.settings.powersavingmode.PowerSavingDataServiceList"

    const v3, 0x7f0a1ad3

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 148
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    return v6
.end method
