.class public Lcom/samsung/android/penselect/PenSelectionController;
.super Ljava/lang/Object;
.source "PenSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PenSelectController"

.field private static sInstance:Lcom/samsung/android/penselect/PenSelectionController;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/penselect/PenSelectionController;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController;-><init>()V

    sput-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    .line 49
    :cond_b
    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method private getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "contents"    # Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;

    .prologue
    const/4 v8, 0x1

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "haveContents":Z
    invoke-direct {p0, p2}, Lcom/samsung/android/penselect/PenSelectionController;->isVisibleView(Landroid/view/View;)Z

    move-result v7

    if-ne v7, v8, :cond_2e

    .line 63
    instance-of v7, p2, Landroid/widget/TextView;

    if-eqz v7, :cond_4f

    move-object v5, p2

    .line 64
    check-cast v5, Landroid/widget/TextView;

    .line 66
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v7

    if-ne v7, v8, :cond_2e

    .line 67
    invoke-virtual {v5}, Landroid/widget/TextView;->getMultiSelectionText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 68
    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 69
    iget-object v7, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 70
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    .line 74
    :goto_2d
    const/4 v2, 0x1

    .line 90
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_2e
    return v2

    .line 72
    .restart local v4    # "selectedText":Ljava/lang/CharSequence;
    .restart local v5    # "textView":Landroid/widget/TextView;
    :cond_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    goto :goto_2d

    .line 78
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_4f
    instance-of v7, p2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2e

    move-object v6, p2

    .line 79
    check-cast v6, Landroid/view/ViewGroup;

    .line 80
    .local v6, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 82
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5b
    if-ge v3, v1, :cond_2e

    .line 83
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    move-result v7

    if-ne v7, v8, :cond_68

    .line 85
    const/4 v2, 0x1

    .line 82
    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b
.end method

.method private isVisibleView(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public checkRectInView(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rectSrc"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_9

    .line 194
    :goto_8
    return v2

    .line 188
    :cond_9
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 189
    .local v1, "screenOffsetOfView":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    aget v3, v1, v2

    aget v4, v1, v6

    aget v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    aget v5, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_8
.end method

.method public clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 102
    move-object v5, p2

    .line 104
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_13

    move-object v3, v5

    .line 105
    check-cast v3, Landroid/widget/TextView;

    .line 107
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v6

    if-ne v6, v7, :cond_12

    .line 108
    invoke-virtual {v3}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 119
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_12
    return v7

    .line 110
    :cond_13
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_12

    move-object v4, v5

    .line 111
    check-cast v4, Landroid/view/ViewGroup;

    .line 112
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 114
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_12

    .line 115
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/penselect/PenSelectionController;->clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f
.end method

.method public findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 150
    move-object v6, p2

    .line 152
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6, p3}, Lcom/samsung/android/penselect/PenSelectionController;->checkRectInView(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 153
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_19

    move-object v5, v6

    .line 154
    check-cast v5, Landroid/view/ViewGroup;

    .line 155
    .local v5, "vg":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 156
    .local v4, "retView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 158
    .local v2, "childCount":I
    if-nez v2, :cond_2e

    .line 159
    instance-of v7, v6, Landroid/webkit/WebView;

    if-eqz v7, :cond_1a

    .line 180
    .end local v2    # "childCount":I
    .end local v4    # "retView":Landroid/view/View;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    .end local v6    # "view":Landroid/view/View;
    :cond_19
    :goto_19
    return-object v6

    .line 162
    .restart local v2    # "childCount":I
    .restart local v4    # "retView":Landroid/view/View;
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    .restart local v6    # "view":Landroid/view/View;
    :cond_1a
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    const/4 v8, -0x2

    if-gt v7, v8, :cond_19

    .line 167
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2e
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_30
    if-ltz v3, :cond_3c

    .line 168
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v1, p3}, Lcom/samsung/android/penselect/PenSelectionController;->findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v4

    .line 170
    if-eqz v4, :cond_3e

    .end local v1    # "child":Landroid/view/View;
    :cond_3c
    move-object v6, v4

    .line 174
    goto :goto_19

    .line 167
    .restart local v1    # "child":Landroid/view/View;
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    .line 180
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "retView":Landroid/view/View;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_41
    const/4 v6, 0x0

    goto :goto_19
.end method

.method public getPenSelectionContents(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;

    .prologue
    .line 95
    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;-><init>()V

    .line 96
    .local v0, "contents":Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    .line 97
    iget-object v1, v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    return-object v1
.end method

.method public isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v6, 0x1

    .line 124
    move-object v5, p2

    .line 126
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_16

    move-object v3, v5

    .line 127
    check-cast v3, Landroid/widget/TextView;

    .line 129
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v7

    if-ne v7, v6, :cond_31

    .line 130
    invoke-virtual {v3, p3, p4}, Landroid/widget/TextView;->isMultiSelectionLinkArea(II)Z

    move-result v7

    if-ne v7, v6, :cond_31

    .line 145
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_15
    :goto_15
    return v6

    .line 134
    :cond_16
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_31

    move-object v4, v5

    .line 135
    check-cast v4, Landroid/view/ViewGroup;

    .line 136
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 138
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_31

    .line 139
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v7

    if-eq v7, v6, :cond_15

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 145
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_31
    const/4 v6, 0x0

    goto :goto_15
.end method
