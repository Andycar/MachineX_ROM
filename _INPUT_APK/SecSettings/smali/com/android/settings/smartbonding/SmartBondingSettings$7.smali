.class Lcom/android/settings/smartbonding/SmartBondingSettings$7;
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
    .line 247
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1100(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V

    .line 253
    :cond_0
    return-void
.end method
