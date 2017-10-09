.class Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->performUpdateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;)V
    .registers 2

    .prologue
    .line 3414
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->showMenu(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->access$6600(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Z)V

    .line 3418
    return-void
.end method
