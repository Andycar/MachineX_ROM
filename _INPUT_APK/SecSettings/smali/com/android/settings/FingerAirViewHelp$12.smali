.class Lcom/android/settings/FingerAirViewHelp$12;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 619
    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$12;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 621
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$12;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$12;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 624
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$12;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$12;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$12;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0, v3}, Lcom/android/settings/FingerAirViewHelp;->enableAirViewAndInforPreview(Z)V

    .line 628
    return-void
.end method
