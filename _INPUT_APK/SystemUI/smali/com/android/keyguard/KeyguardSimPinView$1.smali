.class Lcom/android/keyguard/KeyguardSimPinView$1;
.super Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView$1$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView$1;II)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method
