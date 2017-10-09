.class Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$4;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 145
    const-string v0, "persist.sys.setupwizard"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->setResult(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->finish()V

    .line 148
    return-void
.end method
