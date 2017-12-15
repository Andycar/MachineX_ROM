.class public Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;
.super Ljava/lang/Object;
.source "SmartClipCroppedAreaImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 76
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 77
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 78
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 79
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 80
    return-object v1
.end method

.method private getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 66
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 67
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 68
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 69
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 71
    return-object v1
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public intersects(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 54
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    .line 55
    :cond_6
    const/4 v0, 0x0

    .line 58
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_7
.end method

.method public intersects(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    if-nez v1, :cond_8

    .line 45
    :cond_6
    const/4 v1, 0x0

    .line 49
    :goto_7
    return v1

    .line 48
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 49
    .local v0, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->intersects(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_7
.end method
