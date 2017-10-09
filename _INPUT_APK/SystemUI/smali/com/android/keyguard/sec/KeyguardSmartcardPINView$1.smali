.class Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;
.super Landroid/os/Handler;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    return-void
.end method
