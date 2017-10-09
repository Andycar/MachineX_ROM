.class public Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "UsbCheckBoxPreference.java"


# instance fields
.field private isAppExists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isAppExists:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isAppExists:Z

    .line 16
    return-void
.end method


# virtual methods
.method public setAppExtists(Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isAppExists:Z

    .line 20
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isAppExists:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isAppExists:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 26
    :cond_1
    return-void
.end method
