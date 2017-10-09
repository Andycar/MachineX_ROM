.class Lcom/android/keyguard/MSimKeyguardSimPinView$2;
.super Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    new-instance v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView$2;II)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method
