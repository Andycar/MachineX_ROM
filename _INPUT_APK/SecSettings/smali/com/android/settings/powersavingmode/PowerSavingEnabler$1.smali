.class Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

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

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "powersavingState":I
    const-string v2, "PowerSavingEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.POWERSAVING_CHANGED, powersavingState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-ne v1, v6, :cond_2

    .line 77
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 110
    .end local v1    # "powersavingState":I
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local v1    # "powersavingState":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 91
    .end local v1    # "powersavingState":I
    :cond_4
    const-string v2, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 93
    .restart local v1    # "powersavingState":I
    const-string v2, "PowerSavingEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.POWERSAVING_SWITCH_CHANGED is received, powersavingState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-ne v1, v6, :cond_6

    .line 95
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 96
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    :cond_5
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 102
    :cond_6
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 103
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    :cond_7
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method
