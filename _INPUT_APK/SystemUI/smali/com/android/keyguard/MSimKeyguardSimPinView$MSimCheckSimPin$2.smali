.class Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;
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


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->onSimCheckResponse(II)V

    .line 267
    return-void
.end method
