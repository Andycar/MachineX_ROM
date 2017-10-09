.class Lcom/android/settings/motion2014/MotionSettings2014$3;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionSettings2014;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionSettings2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionSettings2014;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

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

    .line 391
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 392
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$400(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_swipe"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    return-void
.end method
