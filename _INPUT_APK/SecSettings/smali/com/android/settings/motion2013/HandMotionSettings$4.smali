.class Lcom/android/settings/motion2013/HandMotionSettings$4;
.super Ljava/lang/Object;
.source "HandMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/HandMotionSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/HandMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/HandMotionSettings;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings/motion2013/HandMotionSettings$4;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings$4;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/HandMotionSettings;->access$900(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 345
    .local v0, "palmMotionState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings$4;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/HandMotionSettings;->access$100(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 346
    return-void
.end method
