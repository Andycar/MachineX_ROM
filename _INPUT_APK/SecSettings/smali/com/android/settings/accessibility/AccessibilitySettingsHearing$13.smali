.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck_autohaptic:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->val$mcheck_autohaptic:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 708
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_autohaptic_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->val$mcheck_autohaptic:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 709
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 710
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 711
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_tactileassist_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 712
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    const-string v2, "tactileassist"

    invoke-static {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TactileAssist;

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1402(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/TactileAssist;)Landroid/os/TactileAssist;

    .line 713
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/TactileAssist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/TactileAssist;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/TactileAssist;->setEnable(Z)Z

    .line 716
    :cond_0
    return-void
.end method
