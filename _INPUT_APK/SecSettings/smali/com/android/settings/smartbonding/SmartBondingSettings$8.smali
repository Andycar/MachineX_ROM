.class Lcom/android/settings/smartbonding/SmartBondingSettings$8;
.super Landroid/database/ContentObserver;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1400(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const/4 v0, 0x0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1100(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V

    goto :goto_0
.end method
