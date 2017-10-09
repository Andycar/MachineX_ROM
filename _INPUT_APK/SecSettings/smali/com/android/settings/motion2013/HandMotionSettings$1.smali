.class Lcom/android/settings/motion2013/HandMotionSettings$1;
.super Landroid/database/ContentObserver;
.source "HandMotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/HandMotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/HandMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/motion2013/HandMotionSettings$1;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings$1;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/HandMotionSettings;->access$000(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 73
    .local v0, "palmMotionState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings$1;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/HandMotionSettings;->access$100(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 74
    return-void
.end method
