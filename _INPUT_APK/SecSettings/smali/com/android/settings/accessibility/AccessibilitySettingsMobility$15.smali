.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 878
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 880
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 881
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 882
    const/4 v0, 0x1

    .line 884
    :cond_0
    return v0
.end method
