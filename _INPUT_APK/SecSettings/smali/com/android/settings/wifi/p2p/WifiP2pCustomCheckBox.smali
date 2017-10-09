.class public Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;
.super Landroid/preference/CheckBoxPreference;
.source "WifiP2pCustomCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 14
    const v0, 0x7f04027a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->setLayoutResource(I)V

    .line 15
    return-void
.end method
