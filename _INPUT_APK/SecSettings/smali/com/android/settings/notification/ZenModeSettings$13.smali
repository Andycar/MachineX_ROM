.class Lcom/android/settings/notification/ZenModeSettings$13;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 413
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 414
    .local v0, "val":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->access$1000(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 423
    :goto_0
    return v3

    .line 415
    :cond_0
    if-nez v0, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->putZenModeSetting(I)V

    .line 421
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->access$1000(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->access$1000(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$1000(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/ZenModeSettings;->putZenModeSetting(I)V

    .line 419
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/ZenModeSettings;->showConditionSelection(I)V

    goto :goto_1
.end method
