.class Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;
.super Ljava/lang/Object;
.source "AccessibilityWidgetDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

.field final synthetic val$appsName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$appsName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$mcheck:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$appsName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a14c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_monoaudiowidget_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->startSamsungApps(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->finish()V

    .line 90
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$appsName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a14c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_negativecolorswidget_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$appsName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a14c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_flashwidget_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$appsName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a14c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_turnoffwidget_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$1;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
