.class Lcom/android/settings/FingerAirViewHelp$10;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewHelp;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewHelp;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 641
    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v1}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view_information_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 643
    .local v0, "fingerAirViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 645
    :cond_1
    return-void
.end method
