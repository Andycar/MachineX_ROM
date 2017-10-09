.class Lcom/android/settings/wifi/WifiSettingsForSetupWizard$2;
.super Landroid/database/DataSetObserver;
.source "WifiSettingsForSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsForSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizard;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$2;->this$0:Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$2;->this$0:Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->updateFooter()V

    .line 108
    return-void
.end method
