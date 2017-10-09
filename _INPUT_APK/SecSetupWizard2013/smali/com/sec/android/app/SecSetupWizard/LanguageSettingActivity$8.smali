.class Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$8;
.super Ljava/lang/Object;
.source "LanguageSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v0, "AccessibilityIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.AccessibilitySettingsSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "forFullHD"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    const/16 v2, 0x7e4

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    .line 511
    return-void
.end method
