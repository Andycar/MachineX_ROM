.class Lcom/android/settings/motion2013/PalmMotionEnabler$3;
.super Ljava/lang/Object;
.source "PalmMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/PalmMotionEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 160
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentPalmMotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$400(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    .line 164
    :cond_0
    return-void
.end method
