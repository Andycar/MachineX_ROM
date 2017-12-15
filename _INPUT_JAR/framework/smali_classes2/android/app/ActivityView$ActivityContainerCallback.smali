.class Landroid/app/ActivityView$ActivityContainerCallback;
.super Landroid/app/IActivityContainerCallback$Stub;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityContainerCallback"
.end annotation


# instance fields
.field private final mActivityViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/ActivityView;)V
    .registers 3
    .param p1, "activityView"    # Landroid/app/ActivityView;

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 329
    return-void
.end method


# virtual methods
.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "container"    # Landroid/os/IBinder;

    .prologue
    .line 339
    iget-object v2, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityView;

    .line 340
    .local v0, "activityView":Landroid/app/ActivityView;
    if-eqz v0, :cond_18

    .line 341
    # getter for: Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;
    invoke-static {v0}, Landroid/app/ActivityView;->access$600(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    move-result-object v1

    .line 342
    .local v1, "callback":Landroid/app/ActivityView$ActivityViewCallback;
    if-eqz v1, :cond_18

    .line 343
    new-instance v2, Landroid/app/ActivityView$ActivityContainerCallback$1;

    invoke-direct {v2, p0, v1, v0}, Landroid/app/ActivityView$ActivityContainerCallback$1;-><init>(Landroid/app/ActivityView$ActivityContainerCallback;Landroid/app/ActivityView$ActivityViewCallback;Landroid/app/ActivityView;)V

    invoke-virtual {v0, v2}, Landroid/app/ActivityView;->post(Ljava/lang/Runnable;)Z

    .line 351
    .end local v1    # "callback":Landroid/app/ActivityView$ActivityViewCallback;
    :cond_18
    return-void
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "container"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 335
    return-void
.end method
