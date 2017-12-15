.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private mIsImageValid:Z

.field private mLockedBuffer:J

.field private mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .registers 3

    .prologue
    .line 553
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 555
    return-void
.end method

.method static synthetic access$000(Landroid/media/ImageReader$SurfaceImage;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 552
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->createSurfacePlanes()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/ImageReader$SurfaceImage;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # Z

    .prologue
    .line 552
    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setImageValid(Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/ImageReader$SurfaceImage;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 552
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->isImageValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/media/ImageReader$SurfaceImage;II)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 552
    invoke-direct {p0, p1, p2}, Landroid/media/ImageReader$SurfaceImage;->nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/ImageReader$SurfaceImage;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 552
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method private clearSurfacePlanes()V
    .registers 4

    .prologue
    .line 632
    iget-boolean v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_1f

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 634
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    .line 635
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    # invokes: Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V
    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->access$900(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 636
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 633
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 640
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private createSurfacePlanes()V
    .registers 4

    .prologue
    .line 643
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$1000(Landroid/media/ImageReader;)I

    move-result v1

    new-array v1, v1, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$1000(Landroid/media/ImageReader;)I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 645
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mFormat:I
    invoke-static {v2}, Landroid/media/ImageReader;->access$600(Landroid/media/ImageReader;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v2

    aput-object v2, v1, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 647
    :cond_24
    return-void
.end method

.method private isImageValid()Z
    .registers 2

    .prologue
    .line 628
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    return v0
.end method

.method private synchronized native declared-synchronized nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;
.end method

.method private setImageValid(Z)V
    .registers 2
    .param p1, "isValid"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 625
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 559
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_9

    .line 560
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # invokes: Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V
    invoke-static {v0, p0}, Landroid/media/ImageReader;->access$500(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 562
    :cond_9
    return-void
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 617
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 619
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 621
    return-void

    .line 619
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .registers 3

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_b

    .line 571
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mFormat:I
    invoke-static {v0}, Landroid/media/ImageReader;->access$600(Landroid/media/ImageReader;)I

    move-result v0

    return v0

    .line 573
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_b

    .line 589
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mHeight:I
    invoke-static {v0}, Landroid/media/ImageReader;->access$800(Landroid/media/ImageReader;)I

    move-result v0

    return v0

    .line 591
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 3

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_d

    .line 608
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0

    .line 610
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReader()Landroid/media/ImageReader;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_7

    .line 598
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0

    .line 600
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_b

    .line 580
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mWidth:I
    invoke-static {v0}, Landroid/media/ImageReader;->access$700(Landroid/media/ImageReader;)I

    move-result v0

    return v0

    .line 582
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
