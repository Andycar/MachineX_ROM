.class Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    # getter for: Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->access$100(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->access$102(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    .line 224
    :cond_1d
    :goto_1d
    return-void

    .line 221
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHome()V

    goto :goto_1d
.end method
