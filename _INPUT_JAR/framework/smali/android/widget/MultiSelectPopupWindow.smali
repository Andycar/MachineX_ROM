.class public Landroid/widget/MultiSelectPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiSelectPopupWindow$1;,
        Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;,
        Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;,
        Landroid/widget/MultiSelectPopupWindow$HandleView;,
        Landroid/widget/MultiSelectPopupWindow$MultiSelectController;,
        Landroid/widget/MultiSelectPopupWindow$CursorController;,
        Landroid/widget/MultiSelectPopupWindow$PositionListener;,
        Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;,
        Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSelectPopupWindow"

.field private static final TEMP_POSITION:[F

.field private static mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

.field private static mTextView:Landroid/widget/TextView;

.field private static sInstance:Landroid/widget/MultiSelectPopupWindow;


# instance fields
.field private mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

.field private mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 745
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 67
    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .line 68
    return-void
.end method

.method static synthetic access$000()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/MultiSelectPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/widget/MultiSelectPopupWindow;II)Z
    .registers 4
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/MultiSelectPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/MultiSelectPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/MultiSelectPopupWindow;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static getInstance()Landroid/widget/MultiSelectPopupWindow;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {v0}, Landroid/widget/MultiSelectPopupWindow;-><init>()V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    .line 62
    :cond_b
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    return-object v0
.end method

.method private getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .registers 3

    .prologue
    .line 751
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-nez v0, :cond_c

    .line 752
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$1;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    .line 754
    :cond_c
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    return-object v0
.end method

.method private isDictionaryEnable()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 712
    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 713
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 715
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_23

    .line 716
    const/4 v2, 0x1

    .line 719
    :cond_23
    return v2
.end method

.method private isEmergencyMode()Z
    .registers 3

    .prologue
    .line 735
    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 736
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_11

    .line 737
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    .line 739
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private isOffsetVisible(I)Z
    .registers 8
    .param p1, "offset"    # I

    .prologue
    .line 694
    sget-object v4, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 695
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_a

    .line 696
    const/4 v4, 0x0

    .line 703
    :goto_9
    return v4

    .line 698
    :cond_a
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 700
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    .line 701
    .local v2, "lineBaseLine":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 703
    .local v3, "primaryHorizontal":I
    sget-object v4, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    sget-object v5, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z

    move-result v4

    goto :goto_9
.end method

.method private isPositionVisible(II)Z
    .registers 14
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 778
    sget-object v6, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    monitor-enter v6

    .line 779
    :try_start_6
    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    .line 780
    .local v2, "position":[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 781
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 782
    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 784
    .local v3, "view":Landroid/view/View;
    :goto_12
    if-eqz v3, :cond_8c

    .line 785
    sget-object v7, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_2e

    .line 786
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 787
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 790
    :cond_2e
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_54

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_54

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_54

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_56

    .line 791
    :cond_54
    monitor-exit v6

    .line 809
    :goto_55
    return v4

    .line 794
    :cond_56
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_67

    .line 795
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 798
    :cond_67
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 799
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 801
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 802
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_8a

    .line 803
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_12

    .line 805
    :cond_8a
    const/4 v3, 0x0

    goto :goto_12

    .line 808
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_8c
    monitor-exit v6

    move v4, v5

    .line 809
    goto :goto_55

    .line 808
    .end local v2    # "position":[F
    .end local v3    # "view":Landroid/view/View;
    :catchall_8f
    move-exception v4

    monitor-exit v6
    :try_end_91
    .catchall {:try_start_6 .. :try_end_91} :catchall_8f

    throw v4
.end method

.method private isShareViaEnable()Z
    .registers 2

    .prologue
    .line 707
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 708
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isTranslatorEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 724
    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 725
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 727
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 728
    const/4 v2, 0x1

    .line 730
    :cond_23
    return v2
.end method


# virtual methods
.method public changeCurrentSelectedView(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 99
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_5

    .line 104
    :cond_4
    :goto_4
    return-void

    .line 101
    :cond_5
    sput-object p1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 102
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    if-nez v0, :cond_4

    .line 103
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    goto :goto_4
.end method

.method getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 764
    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_6

    .line 774
    :goto_5
    return-object v1

    .line 767
    :cond_6
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    if-nez v2, :cond_1c

    .line 768
    new-instance v2, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    invoke-direct {v2, p0, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$1;)V

    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    .line 770
    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 771
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 774
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    goto :goto_5
.end method

.method getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    if-eqz v0, :cond_7

    .line 88
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .line 92
    :goto_6
    return-object v0

    .line 91
    :cond_7
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .line 92
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    goto :goto_6
.end method

.method public hideMultiSelectPopupWindow()V
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 82
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    .line 84
    :cond_d
    return-void
.end method

.method public initMultiSelectControllerPosition()V
    .registers 2

    .prologue
    .line 758
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 759
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initPreviousOffset()V

    .line 761
    :cond_d
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow()V
    .registers 2

    .prologue
    .line 813
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 814
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->relocateMultiSelectQuickPopupWindow()V

    .line 816
    :cond_d
    return-void
.end method

.method public showMultiSelectPopupWindow()V
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 72
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    .line 73
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->show()V

    .line 75
    :cond_14
    return-void
.end method
