.class public final Landroid/bluetooth/le/TruncatedFilter;
.super Ljava/lang/Object;
.source "TruncatedFilter.java"


# instance fields
.field private final mFilter:Landroid/bluetooth/le/ScanFilter;

.field private final mStorageDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/ScanFilter;Ljava/util/List;)V
    .registers 3
    .param p1, "filter"    # Landroid/bluetooth/le/ScanFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanFilter;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "storageDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/bluetooth/le/TruncatedFilter;->mFilter:Landroid/bluetooth/le/ScanFilter;

    .line 43
    iput-object p2, p0, Landroid/bluetooth/le/TruncatedFilter;->mStorageDescriptors:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/bluetooth/le/ScanFilter;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Landroid/bluetooth/le/TruncatedFilter;->mFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public getStorageDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Landroid/bluetooth/le/TruncatedFilter;->mStorageDescriptors:Ljava/util/List;

    return-object v0
.end method
