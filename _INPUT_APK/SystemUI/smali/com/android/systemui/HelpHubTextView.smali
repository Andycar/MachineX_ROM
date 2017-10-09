.class public final Lcom/android/systemui/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


# static fields
.field private static final ICON_HTML_END:Ljava/lang/String; = "\"/>"

.field private static final ICON_HTML_START:Ljava/lang/String; = "<img src=\"@drawable/"

.field static bNewLineCheck:Z

.field static bNewLineOrentation:Z

.field static finalString:Ljava/lang/String;

.field static mNewLineString:Ljava/lang/String;

.field static mShowIntegerString:Ljava/lang/String;

.field static mShowString:Ljava/lang/String;


# instance fields
.field currentDrawable:Lcom/android/systemui/HelpHubDrawable;

.field private mAddItemIds:[I

.field private final mContext:Landroid/content/Context;

.field private final mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/HelpHubDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mImageYDiff:F

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field private mInsideImageGravity:I

.field private mInsideImageHeight:F

.field private mInsideImagePadding:Landroid/graphics/Rect;

.field private mInsideImageWidth:F

.field mStorevalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 58
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    .line 282
    new-instance v0, Lcom/android/systemui/HelpHubTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/HelpHubTextView$1;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 58
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    .line 282
    new-instance v1, Lcom/android/systemui/HelpHubTextView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/HelpHubTextView$1;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 103
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    .line 109
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->initSelfResources(Landroid/util/AttributeSet;)V

    .line 110
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckInteger(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->IntegerinitSelfResources(Landroid/util/AttributeSet;)V

    .line 112
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckString(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->StringinitSelfResources(Landroid/util/AttributeSet;)V

    .line 114
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckNewLine(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->NewLineinitSelfResources(Landroid/util/AttributeSet;)V

    .line 117
    :cond_2
    return-void

    .line 105
    :cond_3
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    goto :goto_0
.end method

.method private Changespecialchartointeger(Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    .line 332
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v7, p2, v8, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 337
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x9

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 338
    .local v2, "id":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "mStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 343
    .local v3, "index":I
    const-string v5, "$d"

    .line 344
    .local v5, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 345
    .local v6, "pos":I
    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    .local v1, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v6, -0x2

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 349
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    add-int/lit8 v3, v3, 0x1

    .line 357
    goto :goto_0

    .line 359
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private Changespecialchartostring(Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    .line 388
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v7, p2, v8, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 391
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0xa

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 392
    .local v2, "id":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "mStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 397
    .local v3, "index":I
    const-string v5, "$s"

    .line 398
    .local v5, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 399
    .local v6, "pos":I
    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 401
    .local v1, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v6, -0x2

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 403
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_0
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    add-int/lit8 v3, v3, 0x1

    .line 411
    goto :goto_0

    .line 412
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private CheckInteger(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 308
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 310
    .local v1, "iconsArrayId":I
    if-lez v1, :cond_1

    .line 311
    invoke-direct {p0, p1}, Lcom/android/systemui/HelpHubTextView;->checkspecialcharacterforinteger(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HelpHubTextView;->Changespecialchartointeger(Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 314
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 315
    const/4 v2, 0x1

    .line 318
    :goto_0
    return v2

    .line 317
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private CheckNewLine(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v4, p2, v5, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 417
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 419
    .local v1, "iconsArrayId":I
    if-lez v1, :cond_0

    .line 420
    sput-boolean v2, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    .line 421
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 426
    :goto_0
    return v2

    .line 424
    :cond_0
    sput-boolean v3, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    .line 425
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v3

    .line 426
    goto :goto_0
.end method

.method private CheckString(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 364
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 366
    .local v1, "iconsArrayId":I
    if-lez v1, :cond_1

    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/HelpHubTextView;->checkspecialcharacterforstring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HelpHubTextView;->Changespecialchartostring(Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 370
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    const/4 v2, 0x1

    .line 374
    :goto_0
    return v2

    .line 373
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private IntegerHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 460
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 463
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 472
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method

.method private IntegerinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 218
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/HelpHubTextView;->mShowIntegerString:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 226
    .local v1, "iconId":I
    if-lez v1, :cond_0

    .line 227
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 228
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v1, v2, v4

    .line 232
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->IntegerHtmlText(Landroid/content/res/TypedArray;)V

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    return-void
.end method

.method private NewLineHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 504
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 507
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 516
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method

.method private NewLineinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 263
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/HelpHubTextView;->mNewLineString:Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 271
    .local v1, "iconId":I
    if-lez v1, :cond_0

    .line 272
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 273
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v1, v2, v4

    .line 277
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->NewLineHtmlText(Landroid/content/res/TypedArray;)V

    .line 279
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    return-void
.end method

.method private StringHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 485
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 494
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method

.method private StringinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 239
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 240
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 242
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v4, p1, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 245
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/HelpHubTextView;->mShowString:Ljava/lang/String;

    .line 248
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 250
    .local v2, "iconId":I
    if-lez v2, :cond_0

    .line 251
    const/4 v4, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 252
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v2, v4, v6

    .line 256
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->StringHtmlText(Landroid/content/res/TypedArray;)V

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/HelpHubTextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/HelpHubTextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/HelpHubTextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/HelpHubTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/HelpHubTextView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method private applyImages(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 530
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 533
    .local v2, "index":I
    const-string v10, "%s"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 535
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 536
    .local v3, "m":Ljava/util/regex/Matcher;
    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 537
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 539
    .local v8, "result":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 540
    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v10, v10

    if-ge v2, v10, :cond_0

    .line 541
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src=\"@drawable/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aget v11, v11, v2

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"/>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 548
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 549
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 554
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 557
    const-string v4, "$s"

    .line 558
    .local v4, "newTemplate":Ljava/lang/String;
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 559
    .local v6, "pos":I
    :goto_1
    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    .line 560
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    add-int/lit8 v1, v10, -0x1

    .line 561
    .local v1, "image":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 562
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v6, -0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v10, "<img src=\"@drawable/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aget v10, v10, v1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v10, "\"/>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    add-int/lit8 v11, v6, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 568
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 569
    goto :goto_1

    .line 571
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "image":I
    :cond_2
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v10
.end method

.method private applyInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 575
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 579
    .local v0, "index":I
    const-string v5, "%d"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 581
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 583
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 586
    .local v3, "result":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 587
    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 588
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->mShowIntegerString:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 592
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 601
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const-string v6, "[\n]"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 603
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v5
.end method

.method private applyNewLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 639
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 641
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "locale":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v7, "ko"

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, "KOREA":Ljava/lang/String;
    const/4 v1, 0x0

    .line 647
    .local v1, "index":I
    const-string v7, " "

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 649
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 651
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 654
    .local v5, "result":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 655
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 656
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    if-eqz v7, :cond_2

    .line 657
    :cond_0
    const-string v7, " "

    invoke-virtual {v3, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 664
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 665
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    goto :goto_0

    .line 659
    :cond_2
    const-string v7, "<BR>"

    invoke-virtual {v3, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 670
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 671
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 676
    sget-object v7, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v7
.end method

.method private applyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 607
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 609
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 611
    .local v0, "index":I
    const-string v5, "%s"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 613
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 615
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 618
    .local v3, "result":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 619
    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 620
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->mShowString:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 623
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 624
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 633
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const-string v6, "[\n]"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 635
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v5
.end method

.method private checkspecialcharacterforinteger(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "$d"

    .line 323
    .local v0, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 325
    const/4 v2, 0x1

    .line 327
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkspecialcharacterforstring(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 378
    const-string v0, "$s"

    .line 379
    .local v0, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 381
    const/4 v2, 0x1

    .line 383
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static countOccurrences(Ljava/lang/String;C)I
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "value"    # C

    .prologue
    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 923
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 922
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    :cond_1
    return v0
.end method

.method private initHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 439
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 448
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyImages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_1
    const-string v2, "[\n]"

    const-string v3, "<br>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    return-void
.end method

.method private initImgPadding(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 680
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    .line 683
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    .line 686
    .local v0, "padding":I
    if-eqz v0, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 690
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    .line 693
    if-eqz v0, :cond_1

    .line 694
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 697
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    .line 700
    if-eqz v0, :cond_2

    .line 701
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 703
    :cond_2
    return-void
.end method

.method private initSelfResources(Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 126
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 128
    .local v1, "density":F
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v6, p1, v7, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    .line 134
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    .line 137
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    div-float/2addr v6, v1

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    .line 141
    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    .line 143
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    .line 146
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    div-float/2addr v6, v1

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    .line 149
    :cond_1
    const/16 v6, 0xc

    const/16 v7, 0x11

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 152
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    .line 154
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 157
    .local v4, "iconsArrayId":I
    if-lez v4, :cond_4

    .line 158
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 161
    .local v5, "iconsTypedArray":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_3

    .line 162
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 163
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 165
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 166
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    .end local v5    # "iconsTypedArray":Landroid/content/res/TypedArray;
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->initImgPadding(Landroid/content/res/TypedArray;)V

    .line 189
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->initHtmlText(Landroid/content/res/TypedArray;)V

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    return-void

    .line 172
    :cond_4
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 174
    .local v3, "iconId":I
    if-lez v3, :cond_3

    .line 175
    const/4 v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 176
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v3, v6, v8

    goto :goto_1
.end method

.method private invalidateDrawables()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/4 v5, 0x0

    .line 706
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 710
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_4

    .line 711
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/HelpHubDrawable;

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    .line 713
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setGravity(I)V

    .line 716
    iget v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_2

    .line 717
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setWidth(I)V

    .line 724
    :goto_1
    iget v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    .line 725
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setHeight(I)V

    .line 832
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getLineHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v3}, Lcom/android/systemui/HelpHubDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getTextSize()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/HelpHubDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setPadding(Landroid/graphics/Rect;)V

    .line 838
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 720
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/HelpHubDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setWidth(I)V

    goto :goto_1

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/HelpHubDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setHeight(I)V

    goto :goto_2

    .line 843
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_5

    .line 844
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/HelpHubTextView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/HelpHubTextView$2;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 918
    :cond_5
    return-void
.end method


# virtual methods
.method public getImgGravity()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    return v0
.end method

.method public getImgHeight()I
    .locals 1

    .prologue
    .line 969
    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getImgWidth()I
    .locals 1

    .prologue
    .line 960
    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    float-to-int v0, v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 983
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 984
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    .line 988
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    .line 990
    .local v0, "text":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    if-eqz v1, :cond_0

    .line 991
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 995
    return-void

    .line 986
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    goto :goto_0
.end method

.method public setImgGravity(I)V
    .locals 0
    .param p1, "g"    # I

    .prologue
    .line 973
    iput p1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 974
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 975
    return-void
.end method

.method public setImgHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 964
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    .line 965
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 966
    return-void
.end method

.method public setImgPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 931
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 932
    return-void
.end method

.method public setImgPaddingBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 951
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 952
    return-void
.end method

.method public setImgPaddingLeft(I)V
    .locals 1
    .param p1, "left"    # I

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 937
    return-void
.end method

.method public setImgPaddingRight(I)V
    .locals 1
    .param p1, "right"    # I

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 941
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 942
    return-void
.end method

.method public setImgPaddingTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 946
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 947
    return-void
.end method

.method public setImgWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 955
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 957
    return-void
.end method
