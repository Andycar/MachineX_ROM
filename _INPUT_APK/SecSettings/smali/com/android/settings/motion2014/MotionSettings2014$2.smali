.class Lcom/android/settings/motion2014/MotionSettings2014$2;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(Landroid/preference/SwitchPreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionSettings2014;

.field final synthetic val$preference:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionSettings2014;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->val$preference:Landroid/preference/SwitchPreferenceScreen;

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

    .line 373
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v1}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->val$preference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 378
    return-void
.end method
