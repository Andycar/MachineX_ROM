.class Lcom/android/settings/WirelessSettings$14;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;)V
    .locals 0

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$14;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/settings/WirelessSettings$14;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/android/settings/WirelessSettings;->access$400(Lcom/android/settings/WirelessSettings;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a0a90

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1847
    iget-object v0, p0, Lcom/android/settings/WirelessSettings$14;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1849
    return-void
.end method
