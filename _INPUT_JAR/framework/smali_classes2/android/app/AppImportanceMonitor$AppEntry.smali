.class Landroid/app/AppImportanceMonitor$AppEntry;
.super Ljava/lang/Object;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppImportanceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppEntry"
.end annotation


# instance fields
.field importance:I

.field final procs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final uid:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "_uid"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    .line 44
    iput p1, p0, Landroid/app/AppImportanceMonitor$AppEntry;->uid:I

    .line 45
    return-void
.end method
