.class Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;
.super Ljava/lang/Object;
.source "PowerSavingModeSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 317
    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_2

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 319
    .local v0, "powersavingState":I
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$500(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$600(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$700(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 323
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-virtual {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a17bf

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    const/4 v1, 0x1

    .line 327
    .end local v0    # "powersavingState":I
    :cond_2
    return v1
.end method
