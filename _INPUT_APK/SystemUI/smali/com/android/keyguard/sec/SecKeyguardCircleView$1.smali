.class Lcom/android/keyguard/sec/SecKeyguardCircleView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    .line 72
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$000(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    .line 67
    return-void
.end method
