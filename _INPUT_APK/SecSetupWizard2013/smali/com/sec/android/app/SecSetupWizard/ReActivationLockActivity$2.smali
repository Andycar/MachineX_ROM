.class Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$2;
.super Ljava/lang/Object;
.source "ReActivationLockActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;
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
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    invoke-static {v0, p2}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->access$002(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;Z)Z

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->access$300(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;

    move-result-object v0

    const-string v1, "ReActivationLockActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
