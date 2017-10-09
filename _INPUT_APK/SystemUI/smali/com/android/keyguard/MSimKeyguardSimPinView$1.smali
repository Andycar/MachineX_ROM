.class Lcom/android/keyguard/MSimKeyguardSimPinView$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$100(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->doHapticKeyClick()V

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->verifyPasswordAndUnlock()V

    .line 132
    return-void
.end method
