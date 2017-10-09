.class public Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;
.super Landroid/preference/Preference;
.source "SyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/SyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Add_AccountPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/SyncSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->this$0:Lcom/android/settings/accounts/SyncSettings;

    .line 303
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 304
    const v0, 0x7f0201e3

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->setIcon(I)V

    .line 305
    const v0, 0x7f0a0c9f

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->setTitle(I)V

    .line 306
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method
