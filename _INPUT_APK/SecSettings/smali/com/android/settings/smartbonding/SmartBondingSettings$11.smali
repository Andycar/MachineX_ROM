.class Lcom/android/settings/smartbonding/SmartBondingSettings$11;
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
    .line 538
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$11;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 540
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$11;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$11;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1700(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    return-void
.end method
