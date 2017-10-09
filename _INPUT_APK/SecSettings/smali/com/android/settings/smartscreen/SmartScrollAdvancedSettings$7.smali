.class Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;
.super Ljava/lang/Object;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->showGuideDialogForScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1900(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$2000(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-static {v0, v1, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$2100(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;Ljava/lang/String;Z)V

    .line 524
    :cond_0
    return-void
.end method
