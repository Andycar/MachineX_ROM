.class Lcom/android/settings/AirCmdPreferenceEnabler$3;
.super Ljava/lang/Object;
.source "AirCmdPreferenceEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirCmdPreferenceEnabler;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirCmdPreferenceEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirCmdPreferenceEnabler;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/AirCmdPreferenceEnabler$3;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler$3;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-static {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->access$100(Lcom/android/settings/AirCmdPreferenceEnabler;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler$3;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-static {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->access$200(Lcom/android/settings/AirCmdPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler$3;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-static {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->access$000(Lcom/android/settings/AirCmdPreferenceEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    return-void
.end method
