.class Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
.super Ljava/lang/Object;
.source "GLThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/GLThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigureHolder"
.end annotation


# instance fields
.field public final collector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field public final condition:Landroid/os/ConditionVariable;

.field public final surfaces:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/ConditionVariable;Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .registers 4
    .param p1, "condition"    # Landroid/os/ConditionVariable;
    .param p3, "collector"    # Landroid/hardware/camera2/legacy/CaptureCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ConditionVariable;",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/legacy/CaptureCollector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    .line 66
    iput-object p2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    .line 67
    iput-object p3, p0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->collector:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 68
    return-void
.end method
