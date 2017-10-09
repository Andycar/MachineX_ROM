.class Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;
.super Landroid/database/ContentObserver;
.source "PowerSavingMode2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingMode2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 106
    const-string v1, "PowerSavingMode2014"

    const-string v2, "mBasicPowerSavingObserver.onChange() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$400(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Lcom/android/settings/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$300(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 109
    return-void
.end method
