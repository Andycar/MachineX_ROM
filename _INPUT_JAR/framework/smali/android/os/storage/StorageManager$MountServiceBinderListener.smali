.class Landroid/os/storage/StorageManager$MountServiceBinderListener;
.super Landroid/os/storage/IMountServiceListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MountServiceBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IMountServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/storage/StorageManager;
    .param p2, "x1"    # Landroid/os/storage/StorageManager$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    # getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_1f

    .line 105
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    # getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/storage/StorageManager$ListenerDelegate;->sendStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 107
    :cond_1f
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .registers 5
    .param p1, "available"    # Z

    .prologue
    .line 96
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    # getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_1f

    .line 98
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    # getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;->sendShareAvailabilityChanged(Z)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 100
    :cond_1f
    return-void
.end method
