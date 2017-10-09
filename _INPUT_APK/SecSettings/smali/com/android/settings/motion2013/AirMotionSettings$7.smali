.class Lcom/android/settings/motion2013/AirMotionSettings$7;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$7;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings$7;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v1}, Lcom/android/settings/motion2013/AirMotionSettings;->access$400(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$7;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$1200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 507
    return-void
.end method
