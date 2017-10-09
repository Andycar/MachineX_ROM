.class Lcom/android/settings/smartscreen/SmartScreenSettings$10;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1100(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 739
    return-void

    :cond_0
    move v0, v2

    .line 735
    goto :goto_0

    :cond_1
    move v0, v2

    .line 736
    goto :goto_1

    :cond_2
    move v0, v2

    .line 737
    goto :goto_2

    :cond_3
    move v1, v2

    .line 738
    goto :goto_3
.end method
