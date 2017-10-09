.class Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;
.super Landroid/database/ContentObserver;
.source "DirectAccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f0a0b0e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
