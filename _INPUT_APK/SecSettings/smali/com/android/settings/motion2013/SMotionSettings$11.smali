.class Lcom/android/settings/motion2013/SMotionSettings$11;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionSettings;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    iput-object p2, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 453
    const-string v1, "air_motion"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionSettings;->access$1300(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-static {v1, v3}, Lcom/android/settings/motion2013/SMotionSettings;->access$900(Lcom/android/settings/motion2013/SMotionSettings;Z)V

    .line 456
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v1}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 457
    .local v0, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0a12bc

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 472
    .end local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string v1, "motion"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionSettings;->access$1400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v1}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 461
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v1}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 462
    .restart local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/motion2013/MotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0a11fa

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 463
    .end local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_2
    const-string v1, "surface"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 464
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionSettings;->access$1500(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v1}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 466
    .restart local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0a1296

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 467
    .end local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_3
    const-string v1, "side_motion"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionSettings;->access$1600(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_side_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v1}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 470
    .restart local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/motion2013/SideMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0a1275

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method
