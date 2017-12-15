.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 81
    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 91
    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 92
    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    .line 72
    iput v2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 105
    sget-object v1, Lcom/android/internal/R$styleable;->ViewStub:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 109
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mID:I

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iput-object p1, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    .line 123
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    .line 125
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 211
    return-void
.end method

.method public getInflatedId()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .registers 9

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 255
    .local v5, "viewParent":Landroid/view/ViewParent;
    if-eqz v5, :cond_5c

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5c

    .line 256
    iget v6, p0, Landroid/view/ViewStub;->mLayoutResource:I

    if-eqz v6, :cond_54

    move-object v3, v5

    .line 257
    check-cast v3, Landroid/view/ViewGroup;

    .line 259
    .local v3, "parent":Landroid/view/ViewGroup;
    iget-object v6, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v6, :cond_49

    .line 260
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 264
    .local v0, "factory":Landroid/view/LayoutInflater;
    :goto_17
    iget v6, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 267
    .local v4, "view":Landroid/view/View;
    iget v6, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_28

    .line 268
    iget v6, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 271
    :cond_28
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 272
    .local v1, "index":I
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 275
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_50

    .line 276
    invoke-virtual {v3, v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 281
    :goto_38
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 283
    iget-object v6, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    if-eqz v6, :cond_48

    .line 284
    iget-object v6, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-interface {v6, p0, v4}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 287
    :cond_48
    return-object v4

    .line 262
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_49
    iget-object v6, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    goto :goto_17

    .line 278
    .restart local v1    # "index":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "view":Landroid/view/View;
    :cond_50
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_38

    .line 289
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "view":Landroid/view/View;
    :cond_54
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ViewStub must have a valid layoutResource"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 292
    :cond_5c
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    .line 207
    return-void
.end method

.method public setInflatedId(I)V
    .registers 2
    .param p1, "inflatedId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 153
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 154
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 194
    iput-object p1, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 195
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2
    .param p1, "layoutResource"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 186
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 187
    return-void
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .registers 2
    .param p1, "inflateListener"    # Landroid/view/ViewStub$OnInflateListener;

    .prologue
    .line 305
    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    .line 306
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1b

    .line 231
    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 232
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 233
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .end local v0    # "view":Landroid/view/View;
    :cond_11
    :goto_11
    return-void

    .line 235
    .restart local v0    # "view":Landroid/view/View;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    .end local v0    # "view":Landroid/view/View;
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    if-eqz p1, :cond_23

    const/4 v1, 0x4

    if-ne p1, v1, :cond_11

    .line 240
    :cond_23
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_11
.end method
