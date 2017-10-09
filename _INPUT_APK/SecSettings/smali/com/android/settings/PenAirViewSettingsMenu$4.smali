.class Lcom/android/settings/PenAirViewSettingsMenu$4;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewSettingsMenu;->showAirViewDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewSettingsMenu;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/settings/PenAirViewSettingsMenu$4;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 463
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu$4;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-static {v1}, Lcom/android/settings/PenAirViewSettingsMenu;->access$100(Lcom/android/settings/PenAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewSettingsMenu$4;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-virtual {v2}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_information_preview"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 465
    return-void
.end method
