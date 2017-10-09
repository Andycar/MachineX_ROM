.class Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;
.super Ljava/lang/Object;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 247
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifyPasswordWithCACTask : run()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$800(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Z)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-boolean v1, v1, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget v3, v3, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$900(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;ZLjava/lang/String;I)V

    .line 250
    return-void
.end method
