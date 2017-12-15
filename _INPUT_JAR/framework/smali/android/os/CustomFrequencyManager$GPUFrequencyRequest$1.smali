.class Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$1;->this$1:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$1;->this$1:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->cancelFrequencyRequest()V

    .line 289
    return-void
.end method
