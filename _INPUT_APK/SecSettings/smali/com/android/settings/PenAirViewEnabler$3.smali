.class Lcom/android/settings/PenAirViewEnabler$3;
.super Ljava/lang/Object;
.source "PenAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewEnabler;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewEnabler;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler$3;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$3;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/PenAirViewEnabler;->access$000(Lcom/android/settings/PenAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$3;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/PenAirViewEnabler;->access$000(Lcom/android/settings/PenAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$3;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/PenAirViewEnabler;->access$000(Lcom/android/settings/PenAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 185
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$3;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/PenAirViewEnabler;->access$000(Lcom/android/settings/PenAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$3;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/PenAirViewEnabler;->access$100(Lcom/android/settings/PenAirViewEnabler;)V

    .line 188
    :cond_0
    return-void
.end method
