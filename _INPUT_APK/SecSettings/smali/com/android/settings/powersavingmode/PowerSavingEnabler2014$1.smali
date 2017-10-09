.class Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingEnabler2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v2, "PowerSavingEnabler2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v2, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, "powersavingState":I
    const-string v2, "PowerSavingEnabler2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powersaving_switch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v2, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2, v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$002(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;I)I

    .line 77
    :cond_1
    if-ne v1, v6, :cond_4

    .line 78
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 93
    .end local v1    # "powersavingState":I
    :cond_3
    :goto_0
    return-void

    .line 85
    .restart local v1    # "powersavingState":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
