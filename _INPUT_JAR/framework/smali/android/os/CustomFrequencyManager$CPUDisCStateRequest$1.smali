.class Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;)V
    .registers 2

    .prologue
    .line 601
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->cancelFrequencyRequest()V

    .line 604
    return-void
.end method
