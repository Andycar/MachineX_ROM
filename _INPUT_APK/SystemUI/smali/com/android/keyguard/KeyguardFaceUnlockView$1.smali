.class Lcom/android/keyguard/KeyguardFaceUnlockView$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 61
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$000(Lcom/android/keyguard/KeyguardFaceUnlockView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$000(Lcom/android/keyguard/KeyguardFaceUnlockView;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$002(Lcom/android/keyguard/KeyguardFaceUnlockView;I)I

    .line 75
    return-void
.end method
