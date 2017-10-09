.class Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;
.super Landroid/database/ContentObserver;
.source "SMotionGuideHub2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPauseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 1

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .line 1533
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1534
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1538
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1539
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$3100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$3002(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 1540
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$3000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1541
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-static {v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$3000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_pause"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1543
    :cond_1
    return-void
.end method
