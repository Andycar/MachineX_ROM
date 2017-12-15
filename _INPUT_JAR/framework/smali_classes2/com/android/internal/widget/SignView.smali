.class public Lcom/android/internal/widget/SignView;
.super Landroid/view/View;
.source "SignView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SignView$SignatureInput;,
        Lcom/android/internal/widget/SignView$OnSignatureListener;
    }
.end annotation


# static fields
.field public static final ADD_ONE_SIGN:I = 0x0

.field private static final BORDER_WIDTH:I = 0x3

.field private static final DBG:Z = true

.field private static final DBG_PUSH:Z

.field protected static final DBG_TOUCH:Z

.field private static final DEFAULT_THRESHOLD:I = 0x1f4

.field private static final DEF_PEN_WIDTH:I = 0x8

.field private static final MAX_POINT:I = 0x400

.field private static final MAX_POINT_TIMER_DELAY:I = 0x7d0

.field private static final MAX_SIGNDB_NUMBER:I = 0x2

.field private static final MIN_SIGNATURE_NUM:I = 0x3

.field private static final MIN_XY:I = 0xc8

.field private static final PRESSURE_MP:I = 0x2710

.field private static final RECOG_TIMER_DELAY:I = 0x2bc

.field private static final SIGN_DATA_PATH:Ljava/lang/String; = "/data/data/com.sec.android.signaturelock/data/"

.field protected static final TAG:Ljava/lang/String; = "SignView"

.field private static THRESHOLDS:[I = null

.field protected static final TOUCH_TOLERANCE:F = 20.0f

.field public static final USER_ID:I = 0xa

.field public static final VERIFY_FAIL_DIFFERENT:I = 0x2

.field public static final VERIFY_FAIL_ENGINE:I = 0x0

.field public static final VERIFY_FAIL_STROKE:I = 0x1

.field public static final VERIFY_FAIL_TOO_SIMPLE:I = 0x4

.field public static final VERIFY_FAIL_TOO_SMALL:I = 0x3

.field public static final VERIFY_ONE_SIGN:I = 0x1


# instance fields
.field private mBackgroundResourceID:I

.field protected mCanvas:Landroid/graphics/Canvas;

.field private mCompensationEnabled:Z

.field private mCurrentStroke:I

.field private mFirstDraw:Z

.field private mHasOutLine:Z

.field private mInputOneStrokStamp:I

.field protected mInputType:I

.field private mMaxPointReached:Z

.field private mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

.field protected mPath:Landroid/graphics/Path;

.field private mPenWidth:I

.field private mPersistentShow:Z

.field protected mPreTime:J

.field private mRecognized:Z

.field private mRect:Landroid/graphics/Rect;

.field private mSavedInputType:I

.field private mSavedSignatureCount:I

.field private mSavedStrokeCount:I

.field private final mServiceRunningLock:Ljava/lang/Object;

.field protected mSignBmpWrite:Landroid/graphics/Bitmap;

.field private mSignHandler:Landroid/os/Handler;

.field protected mSignPaint:Landroid/graphics/Paint;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private mSignViewX:I

.field private mSignViewY:I

.field protected mSignatureInputData:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;"
        }
    .end annotation
.end field

.field protected mSignatureVisible:Z

.field private mStartStamp:I

.field protected mStartTime:J

.field private mStatus:I

.field private mThresholdValue:I

.field private mTimeGap:I

.field private mTimeOneStrokTap:I

.field protected mTimeStamp:J

.field protected mUseHistoricalEvent:Z

.field private mUserInputEnabled:Z

.field private mVerificationLevel:I

.field private mVerifyVOffsetRegisterViewX:I

.field private mVerifyVOffsetRegisterViewY:I

.field private mWriteStart:Z

.field private mWritingAreaHeight:I

.field private mWritingAreaWidth:I

.field protected mX:F

.field protected mY:F

.field private signUpdateTimeTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 51
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_14

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    .line 52
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_16

    :goto_11
    sput-boolean v1, Lcom/android/internal/widget/SignView;->DBG_PUSH:Z

    return-void

    :cond_14
    move v0, v2

    .line 51
    goto :goto_9

    :cond_16
    move v1, v2

    .line 52
    goto :goto_11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 765
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 765
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SignView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/SignView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SignView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/widget/SignView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    return p1
.end method

.method private checkPreCondition()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 484
    iget-boolean v3, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    if-nez v3, :cond_7

    .line 511
    :cond_6
    :goto_6
    return v1

    .line 489
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-nez v3, :cond_1c

    .line 490
    const-string v2, "SignView"

    const-string v3, "mSignService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v2, :cond_6

    .line 493
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v2}, Lcom/android/internal/widget/SignView$OnSignatureListener;->notifySignServiceError()V

    goto :goto_6

    .line 498
    :cond_1c
    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_57

    const/16 v0, 0x800

    .line 499
    .local v0, "maxPoints":I
    :goto_23
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v0, :cond_5a

    .line 500
    const-string v3, "SignView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many points, can\'t handle it: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-boolean v3, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    if-nez v3, :cond_6

    .line 504
    iput-boolean v2, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    .line 505
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 498
    .end local v0    # "maxPoints":I
    :cond_57
    const/16 v0, 0x400

    goto :goto_23

    .restart local v0    # "maxPoints":I
    :cond_5a
    move v1, v2

    .line 511
    goto :goto_6
.end method

.method private fillAreaBackground()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 735
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 737
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillAreaBackground mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_38

    .line 740
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 743
    :cond_38
    return-void
.end method

.method private insertDataToEngine(I)V
    .registers 15
    .param p1, "index"    # I

    .prologue
    .line 1062
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert points to engine from array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v11, 0x1

    .line 1065
    .local v11, "startWriting":Z
    const/4 v10, 0x0

    .line 1066
    .local v10, "isOdd":I
    const/4 v0, 0x0

    .line 1069
    .local v0, "count":I
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 1070
    .local v9, "input":Lcom/android/internal/widget/SignView$SignatureInput;
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG_PUSH:Z

    if-eqz v1, :cond_5f

    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_5f
    iget v1, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    packed-switch v1, :pswitch_data_ce

    .line 1111
    :goto_64
    const/16 v1, 0x400

    if-lt v0, v1, :cond_23

    .line 1113
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceeds maximum points, finish input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->endOneStroke()V

    .line 1115
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1120
    .end local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_8a
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->endWriting()V

    .line 1124
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_8f
    return-void

    .line 1074
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :pswitch_90
    if-eqz v11, :cond_9d

    .line 1075
    const/4 v11, 0x0

    .line 1076
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 1077
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 1080
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    .line 1081
    const/4 v10, 0x0

    .line 1083
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    iget v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_a9} :catch_aa

    goto :goto_64

    .line 1121
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :catch_aa
    move-exception v7

    .line 1122
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8f

    .line 1087
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :pswitch_af
    add-int/lit8 v10, v10, 0x1

    .line 1096
    :try_start_b1
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    float-to-int v2, v2

    iget v3, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    float-to-int v3, v3

    iget-wide v4, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    iget v6, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    const v12, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v12

    float-to-int v6, v6

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/policy/ISignServiceInterface;->addOnePoint(IIJI)V

    goto :goto_64

    .line 1106
    :pswitch_c6
    add-int/lit8 v0, v0, 0x1

    .line 1107
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->endOneStroke()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_cd} :catch_aa

    goto :goto_64

    .line 1072
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_90
        :pswitch_c6
        :pswitch_af
    .end packed-switch
.end method

.method private setThreshold(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 931
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 934
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 936
    .local v1, "inputType":I
    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToolType(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget v2, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-eq v1, v2, :cond_35

    .line 939
    iput v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 931
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 946
    .end local v1    # "inputType":I
    :cond_38
    return-void
.end method

.method private setThresholdWithType()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 957
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set threshold dynamically, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "index":I
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v4, :cond_51

    .line 976
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_4b

    .line 977
    const/4 v0, 0x0

    .line 989
    :cond_3f
    :goto_3f
    sget-object v1, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    mul-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    add-int/2addr v2, v3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 990
    return-void

    .line 978
    :cond_4b
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_3f

    .line 979
    const/4 v0, 0x3

    goto :goto_3f

    .line 981
    :cond_51
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v5, :cond_3f

    .line 982
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_5b

    .line 983
    const/4 v0, 0x2

    goto :goto_3f

    .line 984
    :cond_5b
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_3f

    .line 985
    const/4 v0, 0x1

    goto :goto_3f
.end method


# virtual methods
.method protected clearInDoAddSign()V
    .registers 1

    .prologue
    .line 869
    return-void
.end method

.method protected clearInDoVerifySign()V
    .registers 1

    .prologue
    .line 928
    return-void
.end method

.method public clearScreen()V
    .registers 1

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->fillAreaBackground()V

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 763
    return-void
.end method

.method doAddSign()V
    .registers 10

    .prologue
    .line 791
    const-string v5, "SignView"

    const-string v6, "doAddSign"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v6

    .line 808
    :try_start_a
    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-direct {p0, v5}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 810
    const/4 v2, 0x0

    .local v2, "errCodePreCheck":I
    const/4 v1, 0x0

    .local v1, "errCodeAdd":I
    const/4 v4, 0x0

    .line 813
    .local v4, "signNum":I
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    const/16 v8, 0xc8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/policy/ISignServiceInterface;->checkSignatureData(II)I

    move-result v2

    .line 815
    if-gez v2, :cond_74

    .line 821
    :goto_1e
    if-ltz v2, :cond_22

    if-eqz v1, :cond_8f

    .line 822
    :cond_22
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign failed, precheck: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", add time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 827
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_5e

    .line 828
    const/4 v3, 0x0

    .line 830
    .local v3, "errorMessage":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_58

    const/4 v5, -0x2

    if-ne v2, v5, :cond_85

    .line 831
    :cond_58
    const/4 v3, 0x2

    .line 837
    :cond_59
    :goto_59
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v3}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignFailed(I)V

    .line 855
    .end local v3    # "errorMessage":I
    :cond_5e
    :goto_5e
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 856
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 857
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearInDoAddSign()V

    .line 859
    iget-boolean v5, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    if-nez v5, :cond_72

    .line 860
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_72} :catch_be
    .catchall {:try_start_a .. :try_end_72} :catchall_c3

    .line 865
    .end local v1    # "errCodeAdd":I
    .end local v2    # "errCodePreCheck":I
    .end local v4    # "signNum":I
    :cond_72
    :goto_72
    :try_start_72
    monitor-exit v6
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_c3

    .line 866
    return-void

    .line 817
    .restart local v1    # "errCodeAdd":I
    .restart local v2    # "errCodePreCheck":I
    .restart local v4    # "signNum":I
    :cond_74
    :try_start_74
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    invoke-interface {v5, v7}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 818
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    invoke-interface {v5, v7}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v4

    goto :goto_1e

    .line 832
    .restart local v3    # "errorMessage":I
    :cond_85
    const/4 v5, -0x3

    if-ne v2, v5, :cond_8a

    .line 833
    const/4 v3, 0x3

    goto :goto_59

    .line 834
    :cond_8a
    const/4 v5, -0x4

    if-ne v2, v5, :cond_59

    .line 835
    const/4 v3, 0x4

    goto :goto_59

    .line 840
    .end local v3    # "errorMessage":I
    :cond_8f
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign succeeded, sum of sign is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 845
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    if-eqz v5, :cond_b4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b4

    .line 846
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    iput v5, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 849
    :cond_b4
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_5e

    .line 850
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignSucceeded(I)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_bd} :catch_be
    .catchall {:try_start_74 .. :try_end_bd} :catchall_c3

    goto :goto_5e

    .line 862
    .end local v1    # "errCodeAdd":I
    .end local v2    # "errCodePreCheck":I
    .end local v4    # "signNum":I
    :catch_be
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/Exception;
    :try_start_bf
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72

    .line 865
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_c3
    move-exception v5

    monitor-exit v6
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_c3

    throw v5
.end method

.method doVerifySign()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 873
    const-string v3, "SignView"

    const-string v4, "doVerifySign"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 877
    const/4 v1, 0x0

    .line 880
    .local v1, "errCode":I
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, v3}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 883
    const-string v3, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now getting verification result from engine with level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v2, 0x0

    .line 887
    .local v2, "usePressure":Z
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/ISignServiceInterface;->isUsingOldData()Z

    move-result v3

    if-nez v3, :cond_3d

    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v3, v8, :cond_3d

    iget v3, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v3, v8, :cond_3d

    .line 892
    const/4 v2, 0x1

    .line 896
    :cond_3d
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v5, 0xa

    iget v6, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    invoke-interface {v3, v5, v6, v2}, Lcom/android/internal/policy/ISignServiceInterface;->verify(IIZ)I

    move-result v1

    .line 898
    if-nez v1, :cond_6d

    .line 899
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 900
    const-string v3, "SignView"

    const-string v5, "Identifying signature failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_53
    :goto_53
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 915
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 917
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 918
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearInDoVerifySign()V

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_6b} :catch_7a
    .catchall {:try_start_e .. :try_end_6b} :catchall_7f

    .line 924
    .end local v2    # "usePressure":Z
    :goto_6b
    :try_start_6b
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_7f

    .line 925
    return-void

    .line 901
    .restart local v2    # "usePressure":Z
    :cond_6d
    if-ne v1, v7, :cond_53

    .line 908
    const/4 v3, 0x1

    :try_start_70
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 909
    const-string v3, "SignView"

    const-string v5, "Identifying signature succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_7a
    .catchall {:try_start_70 .. :try_end_79} :catchall_7f

    goto :goto_53

    .line 921
    .end local v2    # "usePressure":Z
    :catch_7a
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b

    .line 924
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_7f
    move-exception v3

    monitor-exit v4
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_7f

    throw v3
.end method

.method public enableUsingHistoricalEvent(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 708
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    .line 709
    return-void
.end method

.method public getIndex()I
    .registers 3

    .prologue
    .line 516
    iget v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v1, :cond_7

    .line 517
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 522
    .local v0, "index":I
    :goto_6
    return v0

    .line 519
    .end local v0    # "index":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "index":I
    goto :goto_6
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 692
    iget v0, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    return v0
.end method

.method public getSignService()Lcom/android/internal/policy/ISignServiceInterface;
    .registers 3

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    monitor-exit v1

    return-object v0

    .line 557
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getStrokeCount()I
    .registers 2

    .prologue
    .line 671
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    return v0
.end method

.method public getThresholdValue()I
    .registers 2

    .prologue
    .line 704
    iget v0, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    return v0
.end method

.method public getVerifyResult()Z
    .registers 2

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    return v0
.end method

.method protected handleActionDown(Landroid/view/MotionEvent;FF)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 437
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 438
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;FF)V
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 441
    iget v0, p0, Lcom/android/internal/widget/SignView;->mX:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 442
    .local v8, "dx":F
    iget v0, p0, Lcom/android/internal/widget/SignView;->mY:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 444
    .local v9, "dy":F
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, v8, v0

    if-gez v0, :cond_1c

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, v9, v0

    if-ltz v0, :cond_6f

    .line 445
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/internal/widget/SignView;->mX:F

    iget v2, p0, Lcom/android/internal/widget/SignView;->mY:F

    iget v3, p0, Lcom/android/internal/widget/SignView;->mX:F

    add-float/2addr v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/SignView;->mY:F

    add-float/2addr v4, p3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 450
    :goto_31
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 452
    iput p2, p0, Lcom/android/internal/widget/SignView;->mX:F

    .line 453
    iput p3, p0, Lcom/android/internal/widget/SignView;->mY:F

    .line 455
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_79

    .line 457
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v10, v0, :cond_79

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v11, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x2

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 447
    .end local v10    # "i":I
    :cond_6f
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    float-to-int v1, p2

    int-to-float v1, v1

    float-to-int v2, p3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_31

    .line 468
    :cond_79
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v11, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v4, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    return-void
.end method

.method protected handleActionUp(Landroid/view/MotionEvent;FF)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/internal/widget/SignView;->mX:F

    iget v2, p0, Lcom/android/internal/widget/SignView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 480
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mContext:Landroid/content/Context;

    .line 186
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    .line 187
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    .line 197
    iput-wide v6, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 198
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/widget/SignView;->mTimeGap:I

    .line 199
    iput-wide v6, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 200
    iput-wide v6, p0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 201
    iput v3, p0, Lcom/android/internal/widget/SignView;->mTimeOneStrokTap:I

    .line 202
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputOneStrokStamp:I

    .line 204
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 205
    iput v3, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 206
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 208
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 209
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 210
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 211
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 212
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 213
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 214
    iput v3, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 215
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 217
    iput v3, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 219
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 220
    new-array v1, v5, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_72
    if-ge v0, v5, :cond_80

    .line 222
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 225
    :cond_80
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 226
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 227
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 228
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 229
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 230
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 231
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 232
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    .line 233
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 236
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 241
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 242
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAttachedToWindow] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 292
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 294
    const-string v0, "SignView"

    const-string v1, "SignView is detached from window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    if-eqz v0, :cond_88

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_24

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 306
    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    if-eqz v0, :cond_81

    .line 307
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 309
    .local v5, "paint":Landroid/graphics/Paint;
    const v0, -0x141415

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v9, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v10, v0

    move-object v6, p1

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_81
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 320
    :cond_88
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 247
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 249
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFinishInflate] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 254
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 256
    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 257
    sub-int v0, p5, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 260
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout WritingArea Size] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 268
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSizeChanged] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7b

    .line 275
    :cond_34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    .line 276
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    .line 279
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create bitmap for drawing with mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_7b

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 288
    :cond_7b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 325
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->checkPreCondition()Z

    move-result v0

    if-nez v0, :cond_9

    .line 432
    :cond_8
    :goto_8
    return v10

    .line 328
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 329
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 331
    .local v3, "y":F
    cmpg-float v0, v2, v1

    if-gez v0, :cond_16

    .line 332
    const/4 v2, 0x0

    .line 334
    :cond_16
    cmpg-float v0, v3, v1

    if-gez v0, :cond_1b

    .line 335
    const/4 v3, 0x0

    .line 337
    :cond_1b
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_25

    .line 338
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v2, v0

    .line 340
    :cond_25
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2f

    .line 341
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v3, v0

    .line 344
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18e

    goto :goto_8

    .line 346
    :pswitch_37
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_69

    .line 347
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DOWN ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") TimeGap is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/SignView;->mTimeGap:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_69
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    if-eqz v0, :cond_80

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 361
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;->setThreshold(Landroid/view/MotionEvent;)V

    .line 364
    :cond_80
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 369
    iput v2, p0, Lcom/android/internal/widget/SignView;->mX:F

    .line 370
    iput v3, p0, Lcom/android/internal/widget/SignView;->mY:F

    .line 372
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_94} :catch_d3

    .line 373
    :try_start_94
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/ISignServiceInterface;->isWriting()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 374
    iget-wide v4, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    iput-wide v4, p0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 376
    :cond_a0
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v4, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    iget v5, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v0, v4, v5}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V

    .line 377
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_94 .. :try_end_aa} :catchall_d9

    .line 380
    :try_start_aa
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v9, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v4, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    iget-wide v6, p0, Lcom/android/internal/widget/SignView;->mPreTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/SignView;->handleActionDown(Landroid/view/MotionEvent;FF)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v0, :cond_8

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v0}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureStart()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_d1} :catch_d3

    goto/16 :goto_8

    .line 428
    .end local v2    # "x":F
    .end local v3    # "y":F
    :catch_d3
    move-exception v8

    .line 429
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 377
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    :try_start_db
    throw v0

    .line 394
    :pswitch_dc
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_108

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_MOVE ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_108
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v0, :cond_8

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 401
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/SignView;->handleActionMove(Landroid/view/MotionEvent;FF)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v0, :cond_8

    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v0}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureInputting()V

    goto/16 :goto_8

    .line 411
    :pswitch_129
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_155

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_155
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v0, :cond_8

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v9, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/SignView;->handleActionUp(Landroid/view/MotionEvent;FF)V

    .line 423
    iget v0, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 424
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_18b} :catch_d3

    goto/16 :goto_8

    .line 344
    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_129
        :pswitch_dc
    .end packed-switch
.end method

.method public resetSignature()V
    .registers 9

    .prologue
    .line 993
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset signature, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_1f

    .line 1028
    :goto_1e
    return-void

    .line 999
    :cond_1f
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 1001
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1003
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1006
    :try_start_31
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 1009
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_3f

    .line 1010
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 1013
    :cond_3f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_98

    .line 1014
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-input saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 1019
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 1020
    .local v1, "errCode":I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 1022
    .local v3, "signNum":I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save signature again["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_91} :catch_94
    .catchall {:try_start_31 .. :try_end_91} :catchall_9a

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 1024
    .end local v1    # "errCode":I
    .end local v2    # "i":I
    .end local v3    # "signNum":I
    :catch_94
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/lang/Exception;
    :try_start_95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1027
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_98
    monitor-exit v5

    goto :goto_1e

    :catchall_9a
    move-exception v4

    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_9a

    throw v4
.end method

.method public restore()V
    .registers 9

    .prologue
    .line 1031
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restore signatures, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_1f

    .line 1059
    :goto_1e
    return-void

    .line 1035
    :cond_1f
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1038
    :try_start_22
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 1041
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 1043
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_85

    .line 1045
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 1050
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 1051
    .local v1, "errCode":I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 1053
    .local v3, "signNum":I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore signatures["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_7e} :catch_81
    .catchall {:try_start_22 .. :try_end_7e} :catchall_87

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1055
    .end local v1    # "errCode":I
    .end local v2    # "i":I
    .end local v3    # "signNum":I
    :catch_81
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1058
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_85
    monitor-exit v5

    goto :goto_1e

    :catchall_87
    move-exception v4

    monitor-exit v5
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_87

    throw v4
.end method

.method public saveArrayListIntoFile(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/SignView$SignatureInput;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1147
    .local v3, "size":I
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1148
    .local v2, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v3, :cond_51

    .line 1150
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v4, v4, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1151
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v4, v4, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1152
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v4, v4, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1153
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v4, v4, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1154
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v4, v4, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1149
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1156
    :cond_51
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_54} :catch_55
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_54} :catch_5a

    .line 1162
    .end local v1    # "i":I
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .end local v3    # "size":I
    :goto_54
    return-void

    .line 1157
    :catch_55
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_54

    .line 1159
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5a
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54
.end method

.method public saveOriginalPoints()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 1127
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v4, :cond_28

    .line 1128
    const/4 v3, 0x0

    .line 1130
    .local v3, "signNum":I
    :try_start_6
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 1131
    if-ne v3, v6, :cond_28

    .line 1132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v6, :cond_28

    .line 1133
    const/4 v2, 0x0

    .line 1134
    .local v2, "savePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v4, v1}, Lcom/android/internal/policy/ISignServiceInterface;->getOriginalPointsPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1135
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/widget/SignView;->saveArrayListIntoFile(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_24

    .line 1132
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1138
    .end local v1    # "i":I
    .end local v2    # "savePath":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1142
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "signNum":I
    :cond_28
    return-void
.end method

.method public setAddSignStatus()V
    .registers 4

    .prologue
    .line 572
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 574
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v1, :cond_e

    .line 576
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/ISignServiceInterface;->setEngineStatus(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 581
    :cond_e
    :goto_e
    return-void

    .line 577
    :catch_f
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public setBackground(I)V
    .registers 2
    .param p1, "resourceID"    # I

    .prologue
    .line 684
    iput p1, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 685
    return-void
.end method

.method public setCompensationEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 662
    return-void
.end method

.method public setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V
    .registers 2
    .param p1, "onSignatureListener"    # Lcom/android/internal/widget/SignView$OnSignatureListener;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 566
    return-void
.end method

.method public setOutLine(Z)V
    .registers 2
    .param p1, "setOutLine"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 628
    return-void
.end method

.method public setPenColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 758
    return-void
.end method

.method public setPenWidth(I)V
    .registers 2
    .param p1, "penWidth"    # I

    .prologue
    .line 751
    if-lez p1, :cond_4

    .line 752
    iput p1, p0, Lcom/android/internal/widget/SignView;->mPenWidth:I

    .line 754
    :cond_4
    return-void
.end method

.method public setPersistentShow(Z)V
    .registers 5
    .param p1, "isPersistent"    # Z

    .prologue
    .line 636
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPersistentShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 638
    return-void
.end method

.method public setSettingInputType(I)V
    .registers 2
    .param p1, "savedInputType"    # I

    .prologue
    .line 696
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    .line 697
    return-void
.end method

.method public setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V
    .registers 8
    .param p1, "ISignService"    # Lcom/android/internal/policy/ISignServiceInterface;

    .prologue
    .line 528
    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, "inited":Z
    if-eqz p1, :cond_37

    .line 534
    :try_start_1f
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_41

    .line 539
    :try_start_21
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v4, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->setEngineStatus(I)V

    .line 540
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->initEngine()Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2d} :catch_44
    .catchall {:try_start_21 .. :try_end_2d} :catchall_5a

    move-result v1

    .line 544
    if-eqz v1, :cond_39

    .line 545
    :try_start_30
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_37
    :goto_37
    monitor-exit v3

    .line 552
    return-void

    .line 547
    :cond_39
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 551
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_41

    throw v2

    .line 541
    :catch_44
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_45
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5a

    .line 544
    if-eqz v1, :cond_52

    .line 545
    :try_start_4a
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 547
    :cond_52
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 544
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v2

    if-eqz v1, :cond_65

    .line 545
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Succeed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_64
    throw v2

    :cond_65
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_41

    goto :goto_64
.end method

.method public setSignViewXY(II)V
    .registers 3
    .param p1, "viewX"    # I
    .param p2, "viewY"    # I

    .prologue
    .line 618
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 619
    iput p2, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 620
    return-void
.end method

.method public setSignatureVisible(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 631
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSignatureVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 633
    return-void
.end method

.method public setStrokeCount(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 679
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set stroke count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 681
    return-void
.end method

.method public setThresholdValue(I)V
    .registers 2
    .param p1, "threshold"    # I

    .prologue
    .line 647
    iput p1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 648
    return-void
.end method

.method public setThresholdValues(IIIIIIIIIIII)V
    .registers 15
    .param p1, "hh_low"    # I
    .param p2, "hh_medium"    # I
    .param p3, "hh_high"    # I
    .param p4, "pp_low"    # I
    .param p5, "pp_medium"    # I
    .param p6, "pp_high"    # I
    .param p7, "ph_low"    # I
    .param p8, "ph_medium"    # I
    .param p9, "ph_high"    # I
    .param p10, "hp_low"    # I
    .param p11, "hp_medium"    # I
    .param p12, "hp_high"    # I

    .prologue
    .line 715
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    .line 716
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 717
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 718
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 719
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 720
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 721
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 722
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x6

    aput p7, v0, v1

    .line 723
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x7

    aput p8, v0, v1

    .line 724
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0x8

    aput p9, v0, v1

    .line 725
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0x9

    aput p10, v0, v1

    .line 726
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0xa

    aput p11, v0, v1

    .line 727
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0xb

    aput p12, v0, v1

    .line 728
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 688
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 689
    return-void
.end method

.method public setVerificationLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 700
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    .line 701
    return-void
.end method

.method public setVerifySign()V
    .registers 4

    .prologue
    .line 587
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 589
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v1, :cond_e

    .line 591
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/ISignServiceInterface;->setEngineStatus(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 596
    :cond_e
    :goto_e
    return-void

    .line 592
    :catch_f
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public setViewOffset(II)V
    .registers 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 608
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 609
    iput p2, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 610
    return-void
.end method
