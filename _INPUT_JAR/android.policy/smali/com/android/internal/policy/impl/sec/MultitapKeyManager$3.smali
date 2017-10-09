.class Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;
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
    .line 237
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 239
    const-string v0, "MultitapKeyManager"

    const-string v1, "mPowerDoubleTapTimeoutRunnable is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    # getter for: Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->access$200(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->access$202(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->powerKeyPress()V

    .line 244
    :cond_1c
    return-void
.end method
