.class public abstract Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;
.super Ljava/lang/Object;
.source "StackIndentationFunctor.java"


# instance fields
.field protected mDistanceToPeekStart:I

.field protected mMaxItemsInStack:I

.field protected mPeekSize:I

.field protected mStackStartsAtPeek:Z

.field protected mTotalTransitionDistance:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .param p1, "maxItemsInStack"    # I
    .param p2, "peekSize"    # I
    .param p3, "distanceToPeekStart"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p3, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mStackStartsAtPeek:Z

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mMaxItemsInStack:I

    .line 57
    iput p2, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mPeekSize:I

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->updateTotalTransitionDistance()V

    .line 60
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTotalTransitionDistance()V
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mPeekSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mTotalTransitionDistance:I

    .line 64
    return-void
.end method


# virtual methods
.method public abstract getValue(F)F
.end method

.method public setDistanceToPeekStart(I)V
    .locals 1
    .param p1, "distanceToPeekStart"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    .line 73
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mStackStartsAtPeek:Z

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->updateTotalTransitionDistance()V

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPeekSize(I)V
    .locals 0
    .param p1, "mPeekSize"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mPeekSize:I

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->updateTotalTransitionDistance()V

    .line 69
    return-void
.end method
