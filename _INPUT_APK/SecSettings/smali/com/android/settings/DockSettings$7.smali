.class Lcom/android/settings/DockSettings$7;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DockSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/settings/DockSettings$7;->this$0:Lcom/android/settings/DockSettings;

    iput-object p2, p0, Lcom/android/settings/DockSettings$7;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/DockSettings$7;->val$mCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    .line 697
    iget-object v0, p0, Lcom/android/settings/DockSettings$7;->this$0:Lcom/android/settings/DockSettings;

    invoke-static {v0}, Lcom/android/settings/DockSettings;->access$500(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/DockSettings$7;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_ultrasonic_noti"

    iget-object v2, p0, Lcom/android/settings/DockSettings$7;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 699
    iget-object v0, p0, Lcom/android/settings/DockSettings$7;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 700
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 701
    iget-object v0, p0, Lcom/android/settings/DockSettings$7;->this$0:Lcom/android/settings/DockSettings;

    invoke-virtual {v0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultrasonic_cane"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 702
    iget-object v0, p0, Lcom/android/settings/DockSettings$7;->this$0:Lcom/android/settings/DockSettings;

    invoke-virtual {v0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a114a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 703
    iget-object v0, p0, Lcom/android/settings/DockSettings$7;->this$0:Lcom/android/settings/DockSettings;

    invoke-static {v0}, Lcom/android/settings/DockSettings;->access$600(Lcom/android/settings/DockSettings;)V

    .line 704
    return-void
.end method
