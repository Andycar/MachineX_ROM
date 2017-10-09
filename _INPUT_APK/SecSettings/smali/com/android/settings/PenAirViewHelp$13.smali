.class Lcom/android/settings/PenAirViewHelp$13;
.super Ljava/lang/Object;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;

.field final synthetic val$tutorial_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$13;->this$0:Lcom/android/settings/PenAirViewHelp;

    iput-object p2, p0, Lcom/android/settings/PenAirViewHelp$13;->val$tutorial_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$13;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewHelp$13;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-static {v1}, Lcom/android/settings/PenAirViewHelp;->access$200(Lcom/android/settings/PenAirViewHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$13;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-static {v0}, Lcom/android/settings/PenAirViewHelp;->access$000(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$13;->this$0:Lcom/android/settings/PenAirViewHelp;

    iget-object v1, p0, Lcom/android/settings/PenAirViewHelp$13;->val$tutorial_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/PenAirViewHelp;->startTryActually(Ljava/lang/String;)V

    .line 550
    return-void
.end method
