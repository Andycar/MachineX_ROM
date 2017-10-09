.class Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount$1;
.super Landroid/content/BroadcastReceiver;
.source "ValidationEmailAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount$1;->this$0:Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 20
    const-string v3, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    const-string v3, "result_code"

    const/16 v4, -0x3e7

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 22
    .local v1, "resultCode":I
    const-string v3, "client_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "clientId":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 24
    .local v2, "validationResult":Ljava/lang/Boolean;
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 25
    const-string v3, "validation_result"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 32
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount$1;->this$0:Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->complete(Z)V

    .line 34
    .end local v0    # "clientId":Ljava/lang/String;
    .end local v1    # "resultCode":I
    .end local v2    # "validationResult":Ljava/lang/Boolean;
    :cond_1
    return-void

    .line 27
    .restart local v0    # "clientId":Ljava/lang/String;
    .restart local v1    # "resultCode":I
    .restart local v2    # "validationResult":Ljava/lang/Boolean;
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0
.end method
