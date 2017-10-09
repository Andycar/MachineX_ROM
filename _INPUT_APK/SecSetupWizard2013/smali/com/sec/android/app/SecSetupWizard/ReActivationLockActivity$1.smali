.class Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;
.super Ljava/lang/Object;
.source "ReActivationLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->access$100(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.osp.app.signin.AccountView"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "MODE"

    const-string v3, "REMOTE_CONTROLS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)V

    goto :goto_0
.end method
