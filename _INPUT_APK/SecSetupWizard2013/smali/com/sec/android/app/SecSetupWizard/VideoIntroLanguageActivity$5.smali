.class Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$5;
.super Ljava/lang/Object;
.source "VideoIntroLanguageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->initViewsForNA()V
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
    .line 289
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$300(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    return-void
.end method
