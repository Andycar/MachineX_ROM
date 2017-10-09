.class Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;
.super Landroid/database/ContentObserver;
.source "MenuPowerSavingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

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

    .line 146
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-static {v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$100(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-static {v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$200(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-static {v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    .line 154
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-static {v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$200(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
