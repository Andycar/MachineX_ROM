.class Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$600(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmed:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$602(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Z)Z

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->saveSetting()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$700(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    .line 323
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$800(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    .line 324
    return-void
.end method
