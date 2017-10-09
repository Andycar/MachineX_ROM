.class Lcom/android/settings/smartbonding/SmartBondingSettings$9;
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
    .line 275
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$9;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$9;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1400(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 284
    .local v0, "smartBondingState":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$9;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 285
    return-void

    .line 282
    .end local v0    # "smartBondingState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$9;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1600(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "smartBondingState":Z
    :cond_1
    goto :goto_0
.end method
