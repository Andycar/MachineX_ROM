.class Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;
.super Ljava/lang/Object;
.source "LanguageSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->initViews()V
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
    .line 286
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->access$400(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samsung_errorlog_agree"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samsung_eula_agree"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    :cond_0
    const-string v0, "persist.sys.setupwizard"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->setResult(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->finish()V

    .line 299
    return-void
.end method
