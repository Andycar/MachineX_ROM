.class Lcom/android/systemui/recents/model/KeyStoreLruCache$1;
.super Landroid/util/LruCache;
.source "KeyStoreLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/KeyStoreLruCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/KeyStoreLruCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/KeyStoreLruCache;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache$1;, "Lcom/android/systemui/recents/model/KeyStoreLruCache.1;"
    iput-object p1, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;->this$0:Lcom/android/systemui/recents/model/KeyStoreLruCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "taskId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache$1;, "Lcom/android/systemui/recents/model/KeyStoreLruCache.1;"
    .local p3, "oldV":Ljava/lang/Object;, "TV;"
    .local p4, "newV":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;->this$0:Lcom/android/systemui/recents/model/KeyStoreLruCache;

    iget-object v0, v0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache$1;, "Lcom/android/systemui/recents/model/KeyStoreLruCache.1;"
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
