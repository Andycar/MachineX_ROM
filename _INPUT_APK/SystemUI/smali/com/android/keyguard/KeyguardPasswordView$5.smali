.class Lcom/android/keyguard/KeyguardPasswordView$5;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 193
    return-void
.end method
