.class Lcom/android/settings/motion2013/SMotionSettings$13;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionSettings;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 583
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$1800(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllHandMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    const v1, 0x7f0a1242

    const v2, 0x7f0a124f

    const-string v3, "surface"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/motion2013/SMotionSettings;->access$1000(Lcom/android/settings/motion2013/SMotionSettings;IILjava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method
