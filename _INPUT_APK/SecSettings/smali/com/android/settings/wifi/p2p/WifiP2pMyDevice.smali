.class public Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;
.super Landroid/preference/Preference;
.source "WifiP2pMyDevice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    const v0, 0x7f040283

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;->setLayoutResource(I)V

    .line 38
    return-void
.end method
