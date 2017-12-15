.class public final Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:F

.field private mMax:F

.field private mMin:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3396
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(IFFF)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    .prologue
    .line 3436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3437
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 3438
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 3439
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 3440
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 3441
    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3492
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 3493
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 3494
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 3495
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 3496
    return-void
.end method

.method public static obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 6
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F

    .prologue
    .line 3424
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 3425
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    if-eqz v0, :cond_b

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :goto_a
    return-object v0

    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_b
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    goto :goto_a
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 5
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .prologue
    .line 3412
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrent()F
    .registers 2

    .prologue
    .line 3480
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return v0
.end method

.method public getMax()F
    .registers 2

    .prologue
    .line 3471
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return v0
.end method

.method public getMin()F
    .registers 2

    .prologue
    .line 3462
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 3453
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return v0
.end method

.method recycle()V
    .registers 2

    .prologue
    .line 3487
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->clear()V

    .line 3488
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 3489
    return-void
.end method
