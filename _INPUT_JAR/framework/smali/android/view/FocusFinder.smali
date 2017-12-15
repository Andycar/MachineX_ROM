.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$SequentialFocusComparator;
    }
.end annotation


# static fields
.field private static final tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBestCandidateRect:Landroid/graphics/Rect;

.field final mFocusedRect:Landroid/graphics/Rect;

.field final mOtherRect:Landroid/graphics/Rect;

.field final mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

.field private final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/view/FocusFinder$SequentialFocusComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>(Landroid/view/FocusFinder$1;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/FocusFinder$1;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 13
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .prologue
    .line 85
    const/4 v6, 0x0

    .line 86
    .local v6, "next":Landroid/view/View;
    if-eqz p2, :cond_7

    .line 87
    invoke-direct {p0, p1, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 89
    :cond_7
    if-eqz v6, :cond_b

    move-object v7, v6

    .line 102
    .end local v6    # "next":Landroid/view/View;
    .local v7, "next":Landroid/view/View;
    :goto_a
    return-object v7

    .line 92
    .end local v7    # "next":Landroid/view/View;
    .restart local v6    # "next":Landroid/view/View;
    :cond_b
    iget-object v5, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 94
    .local v5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-virtual {p1, v5, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    .line 96
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 97
    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_27

    move-result-object v6

    .line 100
    :cond_22
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object v7, v6

    .line 102
    .end local v6    # "next":Landroid/view/View;
    .restart local v7    # "next":Landroid/view/View;
    goto :goto_a

    .line 100
    .end local v7    # "next":Landroid/view/View;
    .restart local v6    # "next":Landroid/view/View;
    :catchall_27
    move-exception v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v0
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .registers 12
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 118
    .local p5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_28

    .line 119
    if-nez p3, :cond_6

    .line 120
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 123
    :cond_6
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 124
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 157
    :cond_c
    :goto_c
    sparse-switch p4, :sswitch_data_6a

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_28
    if-nez p3, :cond_c

    .line 127
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 129
    sparse-switch p4, :sswitch_data_84

    goto :goto_c

    .line 147
    :sswitch_30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 148
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    .line 132
    :sswitch_3a
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    .line 135
    :sswitch_3e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 136
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    .line 138
    :cond_48
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    .line 144
    :sswitch_4c
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    .line 150
    :cond_50
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    :sswitch_54
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 160
    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .line 166
    :goto_5e
    return-object v0

    :sswitch_5f
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5e

    .line 157
    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_54
        0x2 -> :sswitch_54
        0x11 -> :sswitch_5f
        0x21 -> :sswitch_5f
        0x42 -> :sswitch_5f
        0x82 -> :sswitch_5f
    .end sparse-switch

    .line 129
    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_30
        0x2 -> :sswitch_3e
        0x11 -> :sswitch_4c
        0x21 -> :sswitch_4c
        0x42 -> :sswitch_3a
        0x82 -> :sswitch_3a
    .end sparse-switch
.end method

.method private findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 9
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setRoot(Landroid/view/ViewGroup;)V

    .line 178
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setIsLayoutRtl(Z)V

    .line 179
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_28

    .line 181
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    .line 184
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 185
    .local v0, "count":I
    packed-switch p5, :pswitch_data_3a

    .line 191
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_27
    return-object v1

    .line 181
    .end local v0    # "count":I
    :catchall_28
    move-exception v1

    iget-object v2, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    throw v1

    .line 187
    .restart local v0    # "count":I
    :pswitch_2f
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_27

    .line 189
    :pswitch_34
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_27

    .line 185
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2f
    .end packed-switch
.end method

.method private findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    .line 107
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "userSetNextFocus":Landroid/view/View;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 113
    .end local v0    # "userSetNextFocus":Landroid/view/View;
    :cond_18
    :goto_18
    return-object v0

    .restart local v0    # "userSetNextFocus":Landroid/view/View;
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 5
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_15

    .line 285
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 286
    .local v0, "position":I
    if-ltz v0, :cond_15

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_15

    .line 287
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 293
    .end local v0    # "position":I
    :goto_14
    return-object v1

    .line 290
    :cond_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 291
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_14

    .line 293
    :cond_23
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private static getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 5
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_11

    .line 298
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 299
    .local v0, "position":I
    if-lez v0, :cond_11

    .line 300
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 306
    .end local v0    # "position":I
    :goto_10
    return-object v1

    .line 303
    :cond_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 304
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_10

    .line 306
    :cond_20
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 627
    sparse-switch p4, :sswitch_data_46

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :sswitch_d
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_1a

    .line 635
    :cond_19
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 629
    goto :goto_19

    .line 631
    :sswitch_1c
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v2, p1, :cond_28

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_28

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le p2, v2, :cond_19

    :cond_28
    move v0, v1

    goto :goto_19

    .line 633
    :sswitch_2a
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_36

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_36

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_19

    :cond_36
    move v0, v1

    goto :goto_19

    .line 635
    :sswitch_38
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, p2, :cond_44

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_44

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_19

    :cond_44
    move v0, v1

    goto :goto_19

    .line 627
    :sswitch_data_46
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_2a
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_38
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 476
    sparse-switch p0, :sswitch_data_24

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 484
    :goto_10
    return v0

    .line 480
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 482
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 484
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 476
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 501
    sparse-switch p0, :sswitch_data_24

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 509
    :goto_10
    return v0

    .line 505
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 507
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 509
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 501
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 524
    sparse-switch p0, :sswitch_data_3c

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 534
    :goto_22
    return v0

    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_22

    .line 524
    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_23
        0x42 -> :sswitch_b
        0x82 -> :sswitch_23
    .end sparse-switch
.end method

.method private setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 196
    .local v0, "rootBottom":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 197
    .local v1, "rootRight":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    return-void
.end method

.method private setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 202
    .local v1, "rootTop":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 203
    .local v0, "rootLeft":I
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    return-void
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 359
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 360
    .local v0, "rect1InSrcBeam":Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 363
    .local v1, "rect2InSrcBeam":Z
    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    move v2, v3

    .line 386
    :cond_f
    :goto_f
    return v2

    .line 373
    :cond_10
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 378
    const/16 v4, 0x11

    if-eq p1, v4, :cond_f

    const/16 v4, 0x42

    if-eq p1, v4, :cond_f

    .line 386
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-lt v4, v5, :cond_f

    move v2, v3

    goto :goto_f
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    sparse-switch p1, :sswitch_data_2a

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :sswitch_d
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1a

    .line 442
    :cond_19
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 439
    goto :goto_19

    .line 442
    :sswitch_1c
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_28

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_19

    :cond_28
    move v0, v1

    goto :goto_19

    .line 436
    :sswitch_data_2a
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_d
        0x82 -> :sswitch_1c
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .registers 21
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "direction"    # I
    .param p5, "deltas"    # [I

    .prologue
    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v12

    .line 555
    .local v12, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v8, 0x7fffffff

    .line 556
    .local v8, "minDistance":I
    const/4 v3, 0x0

    .line 558
    .local v3, "closest":Landroid/view/View;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 560
    .local v9, "numTouchables":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v6

    .line 562
    .local v6, "edgeSlop":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 563
    .local v4, "closestBounds":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 565
    .local v11, "touchableBounds":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_20
    if-ge v7, v9, :cond_88

    .line 566
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 569
    .local v10, "touchable":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 571
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v13, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 573
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v11, v2}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_41

    .line 565
    :cond_3e
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 577
    :cond_41
    const v5, 0x7fffffff

    .line 579
    .local v5, "distance":I
    sparse-switch p4, :sswitch_data_8a

    .line 594
    :goto_47
    if-ge v5, v6, :cond_3e

    .line 596
    if-eqz v3, :cond_59

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_59

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_3e

    if-ge v5, v8, :cond_3e

    .line 599
    :cond_59
    move v8, v5

    .line 600
    move-object v3, v10

    .line 601
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 602
    sparse-switch p4, :sswitch_data_9c

    goto :goto_3e

    .line 604
    :sswitch_62
    const/4 v13, 0x0

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_3e

    .line 581
    :sswitch_67
    iget v13, v11, Landroid/graphics/Rect;->right:I

    sub-int v13, p2, v13

    add-int/lit8 v5, v13, 0x1

    .line 582
    goto :goto_47

    .line 584
    :sswitch_6e
    iget v5, v11, Landroid/graphics/Rect;->left:I

    .line 585
    goto :goto_47

    .line 587
    :sswitch_71
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v13, p3, v13

    add-int/lit8 v5, v13, 0x1

    .line 588
    goto :goto_47

    .line 590
    :sswitch_78
    iget v5, v11, Landroid/graphics/Rect;->top:I

    goto :goto_47

    .line 607
    :sswitch_7b
    const/4 v13, 0x0

    aput v5, p5, v13

    goto :goto_3e

    .line 610
    :sswitch_7f
    const/4 v13, 0x1

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_3e

    .line 613
    :sswitch_84
    const/4 v13, 0x1

    aput v5, p5, v13

    goto :goto_3e

    .line 619
    .end local v5    # "distance":I
    .end local v10    # "touchable":Landroid/view/View;
    :cond_88
    return-object v3

    .line 579
    nop

    :sswitch_data_8a
    .sparse-switch
        0x11 -> :sswitch_67
        0x21 -> :sswitch_71
        0x42 -> :sswitch_6e
        0x82 -> :sswitch_78
    .end sparse-switch

    .line 602
    :sswitch_data_9c
    .sparse-switch
        0x11 -> :sswitch_62
        0x21 -> :sswitch_7f
        0x42 -> :sswitch_7b
        0x82 -> :sswitch_84
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .prologue
    .line 80
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 15
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    .line 210
    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 211
    sparse-switch p5, :sswitch_data_c0

    .line 225
    :goto_9
    const/4 v0, 0x0

    .line 227
    .local v0, "closest":Landroid/view/View;
    const/4 v5, 0x0

    .line 234
    .local v5, "writingBuddyOn":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 235
    .local v4, "numFocusables":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v4, :cond_bf

    .line 236
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 239
    .local v1, "focusable":Landroid/view/View;
    if-eq v1, p3, :cond_1c

    if-ne v1, p2, :cond_51

    .line 235
    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 213
    .end local v0    # "closest":Landroid/view/View;
    .end local v1    # "focusable":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "numFocusables":I
    .end local v5    # "writingBuddyOn":Z
    :sswitch_1f
    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    .line 216
    :sswitch_2b
    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    neg-int v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    .line 219
    :sswitch_38
    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    .line 222
    :sswitch_44
    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    neg-int v7, v7

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    .line 242
    .restart local v0    # "closest":Landroid/view/View;
    .restart local v1    # "focusable":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v4    # "numFocusables":I
    .restart local v5    # "writingBuddyOn":Z
    :cond_51
    if-eqz v5, :cond_57

    instance-of v6, v1, Landroid/widget/TextView;

    if-eqz v6, :cond_1c

    .line 245
    :cond_57
    iget-object v6, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 246
    iget-object v6, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 248
    iget-object v6, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v6, v7}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 249
    if-eqz v5, :cond_7d

    .line 251
    const/16 v6, 0x82

    if-ne p5, v6, :cond_7d

    iget-object v6, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_7d

    if-nez v0, :cond_1c

    .line 256
    :cond_7d
    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 257
    move-object v0, v1

    goto :goto_1c

    .line 258
    :cond_86
    if-eqz v5, :cond_1c

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, "isFocusable":Z
    sparse-switch p5, :sswitch_data_d2

    .line 274
    :cond_8c
    :goto_8c
    if-eqz v3, :cond_1c

    .line 275
    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 276
    move-object v0, v1

    goto :goto_1c

    .line 262
    :sswitch_97
    iget v6, p4, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_8c

    iget-object v6, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_8c

    .line 264
    const/4 v3, 0x1

    goto :goto_8c

    .line 268
    :sswitch_ab
    iget v6, p4, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_8c

    iget-object v6, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_8c

    .line 270
    const/4 v3, 0x1

    goto :goto_8c

    .line 280
    .end local v1    # "focusable":Landroid/view/View;
    .end local v3    # "isFocusable":Z
    :cond_bf
    return-object v0

    .line 211
    :sswitch_data_c0
    .sparse-switch
        0x11 -> :sswitch_1f
        0x21 -> :sswitch_38
        0x42 -> :sswitch_2b
        0x82 -> :sswitch_44
    .end sparse-switch

    .line 260
    :sswitch_data_d2
    .sparse-switch
        0x21 -> :sswitch_97
        0x82 -> :sswitch_ab
    .end sparse-switch
.end method

.method getWeightedDistanceFor(II)I
    .registers 5
    .param p1, "majorAxisDistance"    # I
    .param p2, "minorAxisDistance"    # I

    .prologue
    .line 396
    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 344
    :cond_9
    :goto_9
    return v0

    .line 329
    :cond_a
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 334
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 339
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v0, v1

    .line 340
    goto :goto_9

    .line 344
    :cond_1e
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v3

    if-lt v2, v3, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 8
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 409
    sparse-switch p3, :sswitch_data_5e

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :sswitch_d
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_19

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_20

    :cond_19
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_20

    .line 420
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    .line 411
    goto :goto_1f

    .line 414
    :sswitch_22
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2e

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_34

    :cond_2e
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1f

    :cond_34
    move v0, v1

    goto :goto_1f

    .line 417
    :sswitch_36
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_48

    :cond_42
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1f

    :cond_48
    move v0, v1

    goto :goto_1f

    .line 420
    :sswitch_4a
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_56

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_5c

    :cond_56
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1f

    :cond_5c
    move v0, v1

    goto :goto_1f

    .line 409
    :sswitch_data_5e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_36
        0x42 -> :sswitch_22
        0x82 -> :sswitch_4a
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "direction"    # I
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dest"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    sparse-switch p1, :sswitch_data_2e

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :sswitch_d
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_14

    .line 460
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 454
    goto :goto_13

    .line 456
    :sswitch_16
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_13

    move v0, v1

    goto :goto_13

    .line 458
    :sswitch_1e
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_13

    move v0, v1

    goto :goto_13

    .line 460
    :sswitch_26
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_13

    move v0, v1

    goto :goto_13

    .line 452
    :sswitch_data_2e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_1e
        0x42 -> :sswitch_16
        0x82 -> :sswitch_26
    .end sparse-switch
.end method
