.class final Landroid/media/projection/MediaProjection$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/projection/MediaProjection;


# direct methods
.method private constructor <init>(Landroid/media/projection/MediaProjection;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/projection/MediaProjection;
    .param p2, "x1"    # Landroid/media/projection/MediaProjection$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 5

    .prologue
    .line 186
    iget-object v2, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    # getter for: Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;
    invoke-static {v2}, Landroid/media/projection/MediaProjection;->access$100(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    .line 187
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_23

    .line 188
    iget-object v2, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    # getter for: Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;
    invoke-static {v2}, Landroid/media/projection/MediaProjection;->access$100(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection$CallbackRecord;->onStop()V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 190
    :cond_23
    return-void
.end method
