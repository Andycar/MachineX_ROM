.class Lcom/android/settings/FingerAirViewEnabler$3;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewEnabler;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$100(Lcom/android/settings/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$100(Lcom/android/settings/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$100(Lcom/android/settings/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 202
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$200(Lcom/android/settings/FingerAirViewEnabler;)V

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$000(Lcom/android/settings/FingerAirViewEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$100(Lcom/android/settings/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$100(Lcom/android/settings/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$3;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0, v2}, Lcom/android/settings/FingerAirViewEnabler;->access$300(Lcom/android/settings/FingerAirViewEnabler;Z)V

    goto :goto_0
.end method
