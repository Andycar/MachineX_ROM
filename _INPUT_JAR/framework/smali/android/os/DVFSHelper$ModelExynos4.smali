.class Landroid/os/DVFSHelper$ModelExynos4;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelExynos4"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1731
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelExynos4;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1732
    const v0, 0x155cc0

    iput v0, p0, Landroid/os/DVFSHelper$ModelExynos4;->AMS_RESUME_ARM_FREQ:I

    .line 1733
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelExynos4;->AMS_RESUME_GPU_FREQ:I

    .line 1734
    const/4 v0, 0x3

    iput v0, p0, Landroid/os/DVFSHelper$ModelExynos4;->AMS_RESUME_CPU_CORE:I

    .line 1735
    return-void
.end method
