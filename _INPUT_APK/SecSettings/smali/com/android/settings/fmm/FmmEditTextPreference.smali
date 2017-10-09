.class public Lcom/android/settings/fmm/FmmEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "FmmEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fmm/FmmEditTextPreference$1;,
        Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;
    }
.end annotation


# instance fields
.field editTextWatcher:Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;-><init>(Lcom/android/settings/fmm/FmmEditTextPreference;Lcom/android/settings/fmm/FmmEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/fmm/FmmEditTextPreference;->editTextWatcher:Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;-><init>(Lcom/android/settings/fmm/FmmEditTextPreference;Lcom/android/settings/fmm/FmmEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/fmm/FmmEditTextPreference;->editTextWatcher:Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;

    .line 36
    return-void
.end method


# virtual methods
.method public hasString()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/fmm/FmmEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setEnableEditBoxBtn()V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fmm/FmmEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 64
    .local v1, "dialog":Landroid/app/Dialog;
    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    instance-of v3, v1, Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 66
    check-cast v2, Landroid/app/AlertDialog;

    .line 67
    .local v2, "textDialog":Landroid/app/AlertDialog;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 68
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/fmm/FmmEditTextPreference;->hasString()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/fmm/FmmEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/FmmEditTextPreference;->editTextWatcher:Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/fmm/FmmEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/FmmEditTextPreference;->editTextWatcher:Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/fmm/FmmEditTextPreference;->setEnableEditBoxBtn()V

    .line 50
    return-void
.end method
