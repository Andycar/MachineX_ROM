.class Lcom/android/settings/smartbonding/SmartBondingSettings$6;
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
    .line 237
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$6;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$6;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toddler_mode_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$6;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0, v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1100(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$6;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1100(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V

    goto :goto_0
.end method
