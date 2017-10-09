.class Lcom/android/settings/smartbonding/SmartBondingSettings$12;
.super Ljava/lang/Object;
.source "SmartBondingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$12;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

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

    .line 548
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$12;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$12;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1800(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$12;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$12;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    iget-object v0, v0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$12;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->cancel()V

    .line 555
    :cond_0
    return-void
.end method
