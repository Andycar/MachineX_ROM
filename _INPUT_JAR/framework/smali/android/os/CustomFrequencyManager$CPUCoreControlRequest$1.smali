.class Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;)V
    .registers 2

    .prologue
    .line 424
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->cancelFrequencyRequest()V

    .line 427
    return-void
.end method
