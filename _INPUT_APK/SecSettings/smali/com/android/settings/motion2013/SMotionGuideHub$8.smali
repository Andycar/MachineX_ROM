.class Lcom/android/settings/motion2013/SMotionGuideHub$8;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

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

    .line 1332
    const-string v0, "SMotionGuideHub"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1334
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$700(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    .line 1349
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V

    .line 1350
    return-void

    .line 1336
    :cond_1
    const-string v0, "air_motion_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$800(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 1338
    :cond_2
    const-string v0, "air_motion_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1339
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$900(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 1340
    :cond_3
    const-string v0, "air_motion_item_move"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1341
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$1000(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 1342
    :cond_4
    const-string v0, "air_motion_clip"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1343
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$1100(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 1344
    :cond_5
    const-string v0, "air_motion_call_accept"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1345
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$1200(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 1346
    :cond_6
    const-string v0, "arc_motion_quick_glance"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$8;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$1300(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto/16 :goto_0
.end method
