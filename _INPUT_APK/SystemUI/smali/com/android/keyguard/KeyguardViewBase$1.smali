.class Lcom/android/keyguard/KeyguardViewBase$1;
.super Lcom/android/keyguard/KeyguardActivityLauncher;
.source "KeyguardViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewBase;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewBase;->access$000(Lcom/android/keyguard/KeyguardViewBase;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method requestDismissKeyguard()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    .line 481
    return-void
.end method

.method setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 471
    return-void
.end method
