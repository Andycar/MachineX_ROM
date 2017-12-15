.class Landroid/os/DVFSHelper$ModelM0;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelM0"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1739
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelM0;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1740
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelM0;->AMS_RESUME_ARM_FREQ:I

    .line 1741
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelM0;->AMS_RESUME_GPU_FREQ:I

    .line 1742
    const/4 v0, 0x3

    iput v0, p0, Landroid/os/DVFSHelper$ModelM0;->AMS_RESUME_CPU_CORE:I

    .line 1743
    return-void
.end method
