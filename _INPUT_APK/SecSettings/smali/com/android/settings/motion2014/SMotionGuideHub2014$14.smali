.class Lcom/android/settings/motion2014/SMotionGuideHub2014$14;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;->showSmartPauseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_smart_pause_noti"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1418
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1420
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2900(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    .line 1424
    :cond_0
    return-void
.end method
