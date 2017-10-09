.class Lcom/android/settings/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "KnoxChooseLockTwoFactor.java"


# instance fields
.field private mChecked:Z

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 411
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 407
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 402
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 403
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 437
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 416
    const v0, 0x7f10035e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 417
    iget-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 418
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 428
    iput-boolean p1, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 430
    :cond_0
    return-void
.end method
