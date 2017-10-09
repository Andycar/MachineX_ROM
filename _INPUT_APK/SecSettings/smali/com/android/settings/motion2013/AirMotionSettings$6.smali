.class Lcom/android/settings/motion2013/AirMotionSettings$6;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 476
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 477
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$500(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2, v4}, Lcom/android/settings/motion2013/AirMotionSettings;->access$600(Lcom/android/settings/motion2013/AirMotionSettings;Z)V

    .line 479
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$700(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$100(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 481
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 482
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$800(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 483
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$900(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 484
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$1000(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 486
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 487
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "pref_air_motion_sensor_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 488
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2, v4}, Lcom/android/settings/motion2013/AirMotionSettings;->access$1100(Lcom/android/settings/motion2013/AirMotionSettings;Z)V

    .line 492
    :cond_0
    return-void
.end method
