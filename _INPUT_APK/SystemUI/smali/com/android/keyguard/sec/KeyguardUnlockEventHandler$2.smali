.class Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    .line 209
    :cond_0
    return-void
.end method
