.class Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

.field final synthetic val$result:[I


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;[I)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    iput-object p2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;->val$result:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;->val$result:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;->val$result:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->onSimCheckResponse(II)V

    .line 261
    return-void
.end method
