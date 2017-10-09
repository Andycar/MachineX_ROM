.class Lcom/android/settings/motion2014/SMotionGuideHub2014$5;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

.field final synthetic val$tutorial_type:I


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 1242
    const-string v0, "SMotionGuideHub"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1244
    const-string v0, "air_wake_up"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1900(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V

    .line 1261
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    .line 1262
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2500(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V

    .line 1263
    return-void

    .line 1246
    :cond_1
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1247
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 1248
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1249
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1250
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$400(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V

    goto :goto_0

    .line 1251
    :cond_2
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    if-ne v0, v2, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_touch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1254
    :cond_3
    iget v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1255
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 1256
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1257
    :cond_4
    iget v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->val$tutorial_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    invoke-static {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
