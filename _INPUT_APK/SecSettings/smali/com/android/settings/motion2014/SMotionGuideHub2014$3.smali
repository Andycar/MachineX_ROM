.class Lcom/android/settings/motion2014/SMotionGuideHub2014$3;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->val$motion_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 859
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 860
    const-string v3, "air_motion_turn"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    const/4 v0, 0x1

    .line 862
    .local v0, "desiredState":Z
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 863
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_scroll"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 864
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->val$motion_type:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 865
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$400(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V

    .line 866
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$500(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 867
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 868
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 869
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 870
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 871
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 899
    .end local v0    # "desiredState":Z
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    const-string v3, "surface_palm_swipe"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 873
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_palm_swipe"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 874
    :cond_2
    const-string v3, "motion_merged_mute_pause"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_pause"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-static {v3, v4, v5}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;Z)V

    .line 878
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 879
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "pref_smart_pause_noti"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 880
    .local v1, "do_not_show_again":Z
    if-nez v1, :cond_0

    .line 881
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showSmartPauseDialog()V

    goto :goto_0
.end method
