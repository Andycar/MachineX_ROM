.class Lcom/android/settings/powersavingmode/PowerSavingModeData$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingModeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeData;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    const-string v3, "PowerSavingMode2014"

    const-string v4, "onChange() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "isDataPowersaving_enabled":Z
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-static {v3}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-static {v3}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$100(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 121
    :goto_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$300(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$400(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 123
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1
.end method
