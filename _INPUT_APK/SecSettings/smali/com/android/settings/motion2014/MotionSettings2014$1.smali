.class Lcom/android/settings/motion2014/MotionSettings2014$1;
.super Landroid/database/ContentObserver;
.source "MotionSettings2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/MotionSettings2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionSettings2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionSettings2014;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$1;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$1;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$1;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$1;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$100(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "surface_palm_swipe"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0a90

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 100
    :cond_0
    return-void

    .line 99
    :cond_1
    const v0, 0x7f0a0a91

    goto :goto_0
.end method
