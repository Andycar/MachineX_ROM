.class Lcom/android/settings/FeatureSettingsSetupWizard$1;
.super Ljava/lang/Object;
.source "FeatureSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettingsSetupWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettingsSetupWizard;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings/FeatureSettingsSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 62
    const-string v3, "DCM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/settings/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings/FeatureSettingsSetupWizard;

    invoke-static {v3}, Lcom/android/settings/FeatureSettingsSetupWizard;->access$000(Lcom/android/settings/FeatureSettingsSetupWizard;)V

    .line 66
    :cond_0
    const-string v3, "jflteuc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "jactivelteuc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.att.android.digitallocker"

    const-string v4, "com.att.android.digitallocker.activities.SplashActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    const-string v3, "launchSource"

    const-string v4, "Samsung"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "cName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings/FeatureSettingsSetupWizard;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->setResult(I)V

    .line 82
    :goto_1
    iget-object v3, p0, Lcom/android/settings/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings/FeatureSettingsSetupWizard;

    invoke-virtual {v3}, Lcom/android/settings/FeatureSettingsSetupWizard;->finish()V

    .line 83
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 76
    invoke-static {}, Lcom/android/settings/FeatureSettingsSetupWizard;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AT&T Locker not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings/FeatureSettingsSetupWizard;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->setResult(I)V

    goto :goto_1
.end method
