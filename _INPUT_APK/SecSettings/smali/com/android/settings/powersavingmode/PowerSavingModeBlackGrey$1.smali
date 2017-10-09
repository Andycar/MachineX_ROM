.class Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingModeBlackGrey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    const-string v1, "PowerSavingModeBlackGrey"

    const-string v2, "onChange() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "isGreyPowersaving_enabled":Z
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->access$100(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->access$100(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
