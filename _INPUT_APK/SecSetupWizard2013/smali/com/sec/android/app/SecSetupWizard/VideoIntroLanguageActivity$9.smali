.class Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$9;
.super Ljava/lang/Object;
.source "VideoIntroLanguageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->onPrepared(Landroid/media/MediaPlayer;)V
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
    .line 1057
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$9;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$9;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$900(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Landroid/widget/VideoView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 1060
    return-void
.end method
