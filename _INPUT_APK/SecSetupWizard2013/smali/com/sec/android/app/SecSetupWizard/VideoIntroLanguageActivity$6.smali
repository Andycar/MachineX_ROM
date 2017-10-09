.class Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;
.super Ljava/lang/Object;
.source "VideoIntroLanguageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$400(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samsung_errorlog_agree"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samsung_eula_agree"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    :cond_0
    const-string v0, "persist.sys.setupwizard"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "VideoIntroLanguageActivity"

    const-string v1, "onClick turnOn/OffNfc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->setResult(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->finish()V

    .line 339
    return-void
.end method
