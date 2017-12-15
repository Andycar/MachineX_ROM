.class public Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
.super Lcom/samsung/android/smartclip/SmartClipDataCropper;
.source "SmartClipDataCropperImpl.java"


# static fields
.field private static DEBUG:Z = false

.field public static final EXTRACTION_LEVEL_0:I = 0x0

.field public static final EXTRACTION_LEVEL_1:I = 0x1

.field private static final EXTRACTION_RESULT_MAIN_MASKING:I = 0xff

.field private static final MAX_META_VALUE_SIZE:I = 0x19000

.field private static final TAG:Ljava/lang/String; = "SmartClipDataCropperImpl"

.field private static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final YOUTUBE_URL_PREFIX:Ljava/lang/String; = "http://www.youtube.com/watch?v="


# instance fields
.field private mChromeBrowserContentViewName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mExtractionLevel:I

.field protected mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

.field private mExtractionStartTime:J

.field protected mIsExtractingData:Z

.field private mLastMetaFileId:I

.field protected mPackageName:Ljava/lang/String;

.field private mPenWindowBorderWidth:I

.field protected mPendingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataElementImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mUseViewPositionCache:Z

.field private mViewPositionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 110
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .param p3, "winFrameRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRect"    # Landroid/graphics/RectF;
    .param p5, "penWindowBorderWidth"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropper;-><init>()V

    .line 85
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 86
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 87
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    .line 90
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    .line 93
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 95
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 96
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 98
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 100
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    .line 101
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    .line 102
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 106
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 117
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 118
    iput p5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_50

    .line 122
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 126
    :cond_50
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getChromeViewClassNameFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_75

    .line 131
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 132
    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "spenUspLevel":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_6b

    .line 134
    iput v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 138
    :cond_6b
    const-string v2, "com.samsung.android.smartclip.DEBUG"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 139
    sput-boolean v5, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    .line 142
    .end local v1    # "spenUspLevel":I
    :cond_75
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 644
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 645
    .local v4, "screenRectOfView":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 647
    .local v1, "intersection":Landroid/graphics/Rect;
    if-nez p2, :cond_16

    .line 648
    const-string v5, "SmartClipDataCropperImpl"

    const-string v7, "adjustMetaAreaRect : rect is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 669
    .end local v1    # "intersection":Landroid/graphics/Rect;
    :cond_15
    :goto_15
    return-object v1

    .line 653
    .restart local v1    # "intersection":Landroid/graphics/Rect;
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 654
    .local v0, "curView":Landroid/view/ViewParent;
    :goto_1a
    if-eqz v0, :cond_38

    .line 655
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_33

    move-object v5, v0

    .line 656
    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 657
    .local v3, "parentViewRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 658
    .local v2, "intersectionWithParentView":Landroid/graphics/Rect;
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-ne v5, v7, :cond_33

    .line 659
    move-object v4, v2

    .line 662
    .end local v2    # "intersectionWithParentView":Landroid/graphics/Rect;
    .end local v3    # "parentViewRect":Landroid/graphics/Rect;
    :cond_33
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1a

    .line 665
    :cond_38
    invoke-virtual {v1, p2, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eq v5, v7, :cond_15

    .line 668
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustMetaAreaRect : there is no intersection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 669
    goto :goto_15
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/smartclip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_36

    .line 829
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 830
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 831
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 832
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 835
    :cond_36
    iget v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 836
    const-string v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "filePathName":Ljava/lang/String;
    return-object v2
.end method

.method private filterMetaTagForBrowserViews(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .registers 16
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 735
    if-nez p1, :cond_a

    .line 736
    const-string v11, "SmartClipDataCropperImpl"

    const-string v12, "filterMetaTagForBrowserViews : element is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_9
    return-void

    .line 740
    :cond_a
    move-object v0, p1

    .line 742
    .local v0, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_b
    if-eqz v0, :cond_9

    .line 743
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v5

    .line 744
    .local v5, "tags":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    if-eqz v5, :cond_12d

    .line 745
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v9

    .line 746
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_63

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 748
    .local v10, "viewName":Ljava/lang/String;
    :goto_21
    const-string v11, "html"

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v3

    .line 749
    .local v3, "htmlTagCount":I
    const-string/jumbo v11, "plain_text"

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v6

    .line 750
    .local v6, "textTagCount":I
    if-lez v3, :cond_83

    if-lez v6, :cond_83

    .line 751
    iget v11, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    packed-switch v11, :pswitch_data_134

    .line 761
    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_fa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 762
    .local v1, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    const-string/jumbo v11, "plain_text"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_43

    .line 763
    const-string v11, "html_text"

    invoke-virtual {v1, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setType(Ljava/lang/String;)V

    goto :goto_43

    .line 746
    .end local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v3    # "htmlTagCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "textTagCount":I
    .end local v10    # "viewName":Ljava/lang/String;
    :cond_63
    const-string v10, "null"

    goto :goto_21

    .line 754
    .restart local v3    # "htmlTagCount":I
    .restart local v6    # "textTagCount":I
    .restart local v10    # "viewName":Ljava/lang/String;
    :pswitch_66
    const-string v11, "html"

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->removeTag(Ljava/lang/String;)V

    .line 755
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Discarding HTML tag from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_83
    :goto_83
    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_87
    :goto_87
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 774
    .restart local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    .line 775
    .local v7, "type":Ljava/lang/String;
    const-string v11, "html"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_87

    .line 776
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 777
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const v12, 0x19000

    if-le v11, v12, :cond_87

    .line 778
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Have large HTML data("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes). Converting tag.."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->allocateMetaTagFilePath()Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "filePathName":Ljava/lang/String;
    invoke-direct {p0, v2, v8}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_114

    .line 781
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Failed to save meta tag! - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_f1
    const-string v11, "file_path_html"

    invoke-virtual {v1, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setType(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    goto :goto_87

    .line 766
    .end local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "filePathName":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_fa
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : The TEXT tag changed to HTML_TEXT. View="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_83

    .line 783
    .restart local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .restart local v2    # "filePathName":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_114
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Saved the meta tag to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 791
    .end local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "filePathName":Ljava/lang/String;
    .end local v3    # "htmlTagCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "textTagCount":I
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewName":Ljava/lang/String;
    :cond_12d
    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 792
    goto/16 :goto_b

    .line 751
    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_66
    .end packed-switch
.end method

.method private getMainResultFromExtractionResult(I)I
    .registers 3
    .param p1, "extractionResult"    # I

    .prologue
    .line 640
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private getOpaqueBackgroundRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;
    .registers 11
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 675
    move-object v2, p1

    .line 676
    .local v2, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/4 v4, 0x0

    .line 678
    .local v4, "opaqueRect":Landroid/graphics/Rect;
    :goto_2
    if-eqz v2, :cond_3a

    .line 679
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 680
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_31

    .line 681
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 682
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_31

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_31

    .line 683
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 684
    .local v3, "metaRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_31

    .line 685
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 686
    .local v0, "adjustedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_31

    .line 687
    if-nez v4, :cond_36

    .line 688
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "opaqueRect":Landroid/graphics/Rect;
    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 696
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    .restart local v4    # "opaqueRect":Landroid/graphics/Rect;
    :cond_31
    :goto_31
    invoke-virtual {v2, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    .line 697
    goto :goto_2

    .line 690
    .restart local v0    # "adjustedRect":Landroid/graphics/Rect;
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "metaRect":Landroid/graphics/Rect;
    :cond_36
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_31

    .line 698
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    .end local v5    # "view":Landroid/view/View;
    :cond_3a
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOpaqueBackgroundRect : opaqueRect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  element="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-object v4
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    iget-boolean v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    if-ne v2, v3, :cond_e

    .line 353
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "screenPointOfView":Landroid/graphics/Point;
    check-cast v1, Landroid/graphics/Point;

    .line 356
    .restart local v1    # "screenPointOfView":Landroid/graphics/Point;
    :cond_e
    if-nez v1, :cond_2d

    .line 357
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "screenPointOfView":Landroid/graphics/Point;
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 358
    .restart local v1    # "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 359
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 360
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 361
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 363
    iget-boolean v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    if-ne v2, v3, :cond_2d

    .line 364
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .end local v0    # "screenOffsetOfView":[I
    :cond_2d
    return-object v1
.end method

.method private getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 338
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 339
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 341
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 342
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 343
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 344
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 346
    return-object v1
.end method

.method private removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z
    .registers 11
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p2, "rectToDelete"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 706
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 707
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_6
    if-eqz v0, :cond_11

    .line 708
    move-object v1, v0

    .line 709
    .local v1, "cur":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 711
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    goto :goto_6

    .line 714
    .end local v1    # "cur":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_11
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v5

    if-nez v5, :cond_56

    .line 715
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 716
    .local v2, "metaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v5

    if-ne v5, v3, :cond_29

    .line 718
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 726
    .end local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :goto_28
    return v3

    .line 720
    .restart local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :cond_29
    if-eqz v2, :cond_56

    invoke-static {p2, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-ne v5, v3, :cond_56

    .line 721
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeSmartClipDataElementByRect : Removing element due to RECT intersection. element = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    goto :goto_28

    .end local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :cond_56
    move v3, v4

    .line 726
    goto :goto_28
.end method

.method private traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .registers 33
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p4, "parentSlookSmartClipDataElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 842
    const/4 v14, 0x0

    .line 844
    .local v14, "haveCroppedView":Z
    if-eqz p1, :cond_1b1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_1b1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v24

    if-lez v24, :cond_1b1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    if-lez v24, :cond_1b1

    .line 845
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v20

    .line 849
    .local v20, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b1

    .line 852
    new-instance v11, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 853
    .local v11, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipTags()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v10

    .line 854
    .local v10, "defaultViewTags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v10, :cond_47

    .line 855
    invoke-virtual {v10}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V

    .line 859
    :cond_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipDataExtractionListener()Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    move-result-object v17

    .line 860
    .local v17, "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    const/4 v13, 0x0

    .line 862
    .local v13, "extractionResult":I
    if-eqz v17, :cond_71

    .line 863
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v11, v2}, Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v13

    .line 870
    :goto_58
    move-object v12, v11

    .line 871
    .local v12, "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_59
    if-eqz v12, :cond_7a

    .line 872
    invoke-virtual {v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 873
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v12, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 875
    invoke-virtual {v12, v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v12

    .line 876
    goto :goto_59

    .line 866
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v12    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_71
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v13

    goto :goto_58

    .line 878
    .restart local v12    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_7a
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v18

    .line 879
    .local v18, "mainResult":I
    packed-switch v18, :pswitch_data_1b2

    .line 894
    if-nez p1, :cond_fc

    const-string v23, "null"

    .line 895
    .local v23, "viewString":Ljava/lang/String;
    :goto_87
    const-string v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown main extraction result value : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " / View = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 902
    .end local v23    # "viewString":Ljava/lang/String;
    :goto_b4
    :pswitch_b4
    and-int/lit16 v0, v13, 0x100

    move/from16 v24, v0

    if-eqz v24, :cond_101

    const/16 v21, 0x1

    .line 903
    .local v21, "skipExtractionFromChildView":Z
    :goto_bc
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v24, v0

    if-eqz v24, :cond_104

    if-nez v21, :cond_104

    move-object/from16 v22, p1

    .line 904
    check-cast v22, Landroid/view/ViewGroup;

    .line 905
    .local v22, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 907
    .local v6, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_cf
    if-ge v15, v6, :cond_104

    .line 908
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 910
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v11}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 912
    .local v4, "bFound":Z
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_e8

    .line 914
    const/4 v14, 0x1

    .line 907
    :cond_e8
    add-int/lit8 v15, v15, 0x1

    goto :goto_cf

    .line 885
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v21    # "skipExtractionFromChildView":Z
    .end local v22    # "vg":Landroid/view/ViewGroup;
    :pswitch_eb
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_b4

    .line 889
    :pswitch_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    const/4 v14, 0x1

    .line 891
    goto :goto_b4

    .line 894
    :cond_fc
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_87

    .line 902
    :cond_101
    const/16 v21, 0x0

    goto :goto_bc

    .line 920
    .restart local v21    # "skipExtractionFromChildView":Z
    :cond_104
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v24

    if-nez v24, :cond_10f

    .line 921
    const/4 v14, 0x1

    .line 925
    :cond_10f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v24

    if-nez v24, :cond_142

    .line 926
    sget-boolean v24, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v24, :cond_180

    .line 927
    const-string v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "traverseView : Contains meta data : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_142
    :goto_142
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_1b1

    .line 935
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v24, v0

    if-nez v24, :cond_158

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    move/from16 v24, v0

    if-eqz v24, :cond_1ac

    .line 937
    :cond_158
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 938
    .local v7, "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/16 v19, 0x0

    .line 943
    .local v19, "opaqueRect":Landroid/graphics/Rect;
    :cond_15e
    :goto_15e
    if-eqz v7, :cond_1ac

    .line 944
    const/16 v16, 0x0

    .line 945
    .local v16, "isCurElementRemoved":Z
    move-object v8, v7

    .line 946
    .local v8, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 949
    if-eqz v19, :cond_171

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    move-result v16

    .line 954
    :cond_171
    if-nez v16, :cond_15e

    .line 955
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getOpaqueBackgroundRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;

    move-result-object v9

    .line 956
    .local v9, "curOpaqueRect":Landroid/graphics/Rect;
    if-eqz v9, :cond_15e

    .line 957
    if-nez v19, :cond_1a6

    .line 958
    move-object/from16 v19, v9

    goto :goto_15e

    .line 929
    .end local v7    # "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v8    # "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "curOpaqueRect":Landroid/graphics/Rect;
    .end local v16    # "isCurElementRemoved":Z
    .end local v19    # "opaqueRect":Landroid/graphics/Rect;
    :cond_180
    const-string v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "traverseView : Contains meta data : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_142

    .line 960
    .restart local v7    # "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v8    # "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v9    # "curOpaqueRect":Landroid/graphics/Rect;
    .restart local v16    # "isCurElementRemoved":Z
    .restart local v19    # "opaqueRect":Landroid/graphics/Rect;
    :cond_1a6
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_15e

    .line 970
    .end local v7    # "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v8    # "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "curOpaqueRect":Landroid/graphics/Rect;
    .end local v16    # "isCurElementRemoved":Z
    .end local v19    # "opaqueRect":Landroid/graphics/Rect;
    :cond_1ac
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 975
    .end local v10    # "defaultViewTags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .end local v11    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v12    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v13    # "extractionResult":I
    .end local v17    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .end local v18    # "mainResult":I
    .end local v20    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v21    # "skipExtractionFromChildView":Z
    :cond_1b1
    return v14

    .line 879
    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_b4
        :pswitch_ef
    .end packed-switch
.end method

.method private traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .registers 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p4, "parentSlookSmartClipDataElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 979
    const/4 v10, 0x0

    .line 981
    .local v10, "haveCroppedView":Z
    if-eqz p1, :cond_fe

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_fe

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    if-lez v19, :cond_fe

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    if-lez v19, :cond_fe

    .line 982
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v15

    .line 984
    .local v15, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_fe

    .line 987
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1, v15}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 990
    .local v7, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/4 v9, 0x0

    .line 991
    .local v9, "extractionResult":I
    const/4 v14, 0x0

    .line 992
    .local v14, "needToCallListener":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipDataExtractionListener()Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    move-result-object v12

    .line 994
    .local v12, "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    if-eqz v12, :cond_4b

    .line 995
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/SurfaceView;

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    .line 996
    const/4 v14, 0x1

    .line 1000
    :cond_4b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_72

    .line 1001
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v7, v1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v9

    .line 1008
    :goto_59
    move-object v8, v7

    .line 1009
    .local v8, "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_5a
    if-eqz v8, :cond_7b

    .line 1010
    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1011
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v8, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 1013
    invoke-virtual {v8, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v8

    .line 1014
    goto :goto_5a

    .line 1004
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_72
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v9

    goto :goto_59

    .line 1016
    .restart local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_7b
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v13

    .line 1017
    .local v13, "mainResult":I
    packed-switch v13, :pswitch_data_11c

    .line 1032
    if-nez p1, :cond_110

    const-string v18, "null"

    .line 1033
    .local v18, "viewString":Ljava/lang/String;
    :goto_88
    const-string v19, "SmartClipDataCropperImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown main extraction result value : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / View = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 1040
    .end local v18    # "viewString":Ljava/lang/String;
    :goto_b3
    :pswitch_b3
    and-int/lit16 v0, v9, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_116

    const/16 v16, 0x1

    .line 1041
    .local v16, "skipExtractionFromChildView":Z
    :goto_bb
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_e8

    if-nez v16, :cond_e8

    move-object/from16 v17, p1

    .line 1042
    check-cast v17, Landroid/view/ViewGroup;

    .line 1043
    .local v17, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1045
    .local v6, "childCount":I
    add-int/lit8 v11, v6, -0x1

    .local v11, "i":I
    :goto_cf
    if-ltz v11, :cond_e8

    .line 1046
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1048
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v7}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 1050
    .local v4, "bFound":Z
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_119

    .line 1052
    const/4 v10, 0x1

    .line 1059
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v17    # "vg":Landroid/view/ViewGroup;
    :cond_e8
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v19

    if-nez v19, :cond_f3

    .line 1060
    const/4 v10, 0x1

    .line 1063
    :cond_f3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_fe

    .line 1064
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 1069
    .end local v7    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "extractionResult":I
    .end local v12    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .end local v13    # "mainResult":I
    .end local v14    # "needToCallListener":Z
    .end local v15    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v16    # "skipExtractionFromChildView":Z
    :cond_fe
    return v10

    .line 1023
    .restart local v7    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v9    # "extractionResult":I
    .restart local v12    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .restart local v13    # "mainResult":I
    .restart local v14    # "needToCallListener":Z
    .restart local v15    # "screenRectOfView":Landroid/graphics/Rect;
    :pswitch_ff
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_b3

    .line 1027
    :pswitch_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    const/4 v10, 0x1

    .line 1029
    goto :goto_b3

    .line 1032
    :cond_110
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_88

    .line 1040
    :cond_116
    const/16 v16, 0x0

    goto :goto_bb

    .line 1045
    .restart local v4    # "bFound":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v11    # "i":I
    .restart local v16    # "skipExtractionFromChildView":Z
    .restart local v17    # "vg":Landroid/view/ViewGroup;
    :cond_119
    add-int/lit8 v11, v11, -0x1

    goto :goto_cf

    .line 1017
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_b3
        :pswitch_103
    .end packed-switch
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "filePathName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 797
    const/4 v4, 0x1

    .line 798
    .local v4, "ret":Z
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 803
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_22
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_58
    .catchall {:try_start_22 .. :try_end_27} :catchall_95

    .line 804
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_27
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_bb
    .catchall {:try_start_27 .. :try_end_2e} :catchall_b8

    .line 809
    if-eqz v3, :cond_be

    .line 811
    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_3b

    move-object v2, v3

    .line 819
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 820
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 822
    return v4

    .line 812
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_3b
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File close failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v4, 0x0

    move-object v2, v3

    .line 815
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_34

    .line 805
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_58
    move-exception v0

    .line 806
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_59
    :try_start_59
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File write failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_95

    .line 807
    const/4 v4, 0x0

    .line 809
    if-eqz v2, :cond_34

    .line 811
    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_34

    .line 812
    :catch_79
    move-exception v0

    .line 813
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File close failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v4, 0x0

    .line 815
    goto :goto_34

    .line 809
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_95
    move-exception v5

    :goto_96
    if-eqz v2, :cond_9b

    .line 811
    :try_start_98
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 815
    :cond_9b
    :goto_9b
    throw v5

    .line 812
    :catch_9c
    move-exception v0

    .line 813
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeStringToFile : File close failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v4, 0x0

    goto :goto_9b

    .line 809
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_b8
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_96

    .line 805
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_bb
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_59

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_be
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_34
.end method


# virtual methods
.method protected addAppMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)V
    .registers 6
    .param p1, "element"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_c

    .line 195
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "addAppMetaTag : mContext is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_b
    return-void

    .line 199
    :cond_c
    const-string v1, "SmartClipDataCropperImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppMetaTag : package name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string v1, "app_launch_info"

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v0, "intentTag":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    goto :goto_b
.end method

.method public doExtractSmartClipData(Landroid/view/View;)Z
    .registers 12
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-nez v6, :cond_e

    .line 150
    const-string v5, "SmartClipDataCropperImpl"

    const-string v6, "doExtractSmartClipData : extractionRequest is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_d
    return v4

    .line 154
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    .line 156
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget-object v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;-><init>(Landroid/graphics/Rect;)V

    .line 158
    .local v1, "croppedArea":Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 159
    .local v0, "cropRect":Landroid/graphics/Rect;
    if-nez v0, :cond_a1

    const-string v2, "null"

    .line 160
    .local v2, "rectAreaStr":Ljava/lang/String;
    :goto_25
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doExtractSmartClipData : Extraction start! reqId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v8, v8, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Cropped area = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-boolean v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 164
    new-instance v6, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    iget v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 165
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    move-result-object v3

    .line 167
    .local v3, "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 168
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a6

    .line 169
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1, v1, v6, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    .line 173
    :goto_7d
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 178
    invoke-virtual {p0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->addAppMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)V

    .line 181
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setAppPackageName(Ljava/lang/String;)V

    .line 183
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 185
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9e

    .line 186
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    :cond_9e
    move v4, v5

    .line 190
    goto/16 :goto_d

    .line 159
    .end local v2    # "rectAreaStr":Ljava/lang/String;
    .end local v3    # "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_a1
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 171
    .restart local v2    # "rectAreaStr":Ljava/lang/String;
    .restart local v3    # "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_a6
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1, v1, v6, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    goto :goto_7d
.end method

.method public extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 372
    if-nez p2, :cond_c

    .line 373
    const-string v3, "SmartClipDataCropperImpl"

    const-string v4, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_b
    return v2

    .line 377
    :cond_c
    if-nez p3, :cond_16

    .line 378
    const-string v3, "SmartClipDataCropperImpl"

    const-string v4, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 383
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "viewClassName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    const-string v4, "com.google.android.youtube"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "PlayerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_35

    .line 385
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_b

    .line 387
    :cond_35
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_4d

    .line 388
    const-string v2, "SmartClipDataCropperImpl"

    const-string v4, "extractDefaultSmartClipData : Has chrome view"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_b

    .line 391
    :cond_4d
    const-string v2, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_5a

    .line 392
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_b

    .line 394
    :cond_5a
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_63

    .line 395
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_b

    .line 397
    :cond_63
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_6c

    .line 398
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_b

    .line 403
    :cond_6c
    instance-of v2, p1, Landroid/view/TextureView;

    if-eqz v2, :cond_9b

    .line 404
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    :try_end_73
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_73} :catch_75

    move-result v2

    goto :goto_b

    .line 406
    .end local v1    # "viewClassName":Ljava/lang/String;
    :catch_75
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassCastException in traverseView : target class is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 410
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_9b
    move v2, v3

    .line 413
    goto/16 :goto_b
.end method

.method public extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 526
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "extractSmartClipData"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 527
    .local v5, "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "setSmartClipResultHandler"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/os/Handler;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 529
    .local v10, "setSmartClipResultHandlerMethod":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_e2

    if-eqz v10, :cond_e2

    .line 530
    const-string v13, "SmartClipDataCropperImpl"

    const-string v14, "Extracting meta data from Chrome view..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v8, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v8, v0, v1, v2, v10}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V

    .line 596
    .local v8, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/graphics/Rect;

    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 597
    .local v3, "cropRect":Landroid/graphics/Rect;
    const/4 v13, 0x2

    new-array v9, v13, [I

    .line 598
    .local v9, "screenPosOfView":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 599
    const/4 v13, 0x0

    aget v13, v9, v13

    neg-int v13, v13

    const/4 v14, 0x1

    aget v14, v9, v14

    neg-int v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 601
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-boolean v13, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v13, :cond_a8

    .line 604
    const-string v13, "SmartClipDataCropperImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Converting coordinate : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_a8
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d8} :catch_da

    .line 608
    const/4 v13, 0x2

    .line 634
    .end local v3    # "cropRect":Landroid/graphics/Rect;
    .end local v5    # "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "screenPosOfView":[I
    .end local v10    # "setSmartClipResultHandlerMethod":Ljava/lang/reflect/Method;
    :goto_d9
    return v13

    .line 610
    :catch_da
    move-exception v4

    .line 611
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "SmartClipDataCropperImpl"

    const-string v14, "Current chrome view does not support smartclip"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e2
    :try_start_e2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getUrl"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 617
    .local v7, "getUrlMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 618
    .local v12, "url":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v14, "url"

    invoke-direct {v13, v14, v12}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 620
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getTitle"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 621
    .local v6, "getTitleMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 622
    .local v11, "title":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v14, "title"

    invoke-direct {v13, v14, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v13, :cond_143

    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v13, v13, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v13, :cond_145

    .line 626
    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 634
    .end local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_143
    :goto_143
    const/4 v13, 0x1

    goto :goto_d9

    .line 627
    .restart local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .restart local v11    # "title":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v13, v13, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_14b} :catch_14f

    const/4 v14, 0x2

    if-ne v13, v14, :cond_143

    goto :goto_143

    .line 631
    .end local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_14f
    move-exception v4

    .line 632
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_143
.end method

.method public extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 492
    const-string/jumbo v1, "plain_text"

    invoke-virtual {p2, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v1

    if-nez v1, :cond_29

    move-object v0, p1

    .line 493
    check-cast v0, Landroid/widget/ImageView;

    .line 494
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 495
    :cond_1c
    new-instance v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v2, "plain_text"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 498
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_29
    const/4 v1, 0x1

    return v1
.end method

.method public extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 453
    const-string/jumbo v9, "plain_text"

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v9

    if-nez v9, :cond_81

    move-object v7, p1

    .line 454
    check-cast v7, Landroid/widget/TextView;

    .line 455
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v8

    .line 457
    .local v8, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v8, :cond_1a

    instance-of v9, v8, Landroid/text/method/PasswordTransformationMethod;

    if-nez v9, :cond_81

    .line 459
    :cond_1a
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 460
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_22

    .line 461
    const-string v0, ""

    .line 465
    :cond_22
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v9, :cond_72

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v9, v9, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_72

    .line 467
    invoke-interface {p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 468
    .local v6, "spanRect":Landroid/graphics/Rect;
    if-eqz v6, :cond_3c

    .line 469
    invoke-virtual {p2, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 470
    const-string v0, ""

    .line 473
    :cond_3c
    invoke-virtual {v7}, Landroid/widget/TextView;->hasSelection()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_72

    .line 474
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 475
    .local v4, "selStart":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 476
    .local v3, "selEnd":I
    const/4 v9, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 477
    .local v2, "min":I
    const/4 v9, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 479
    .local v1, "max":I
    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 480
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_72

    .line 481
    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "text_selection"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 485
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    .end local v6    # "spanRect":Landroid/graphics/Rect;
    :cond_72
    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "plain_text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 488
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "transformationMethod":Landroid/text/method/TransformationMethod;
    :cond_81
    const/4 v9, 0x1

    return v9
.end method

.method public extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 517
    const-string/jumbo v0, "plain_text"

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 518
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "plain_text"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 520
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 419
    const/4 v1, 0x1

    const-string v2, "Director"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v6

    .line 420
    .local v6, "directors":[Ljava/lang/Object;
    array-length v0, v6

    if-nez v0, :cond_20

    .line 421
    const-string v0, "SmartClipDataCropperImpl"

    const-string v1, "extractDefaultSmartClipData_YoutubePlayerView : Cannot find D. Retrying..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, 0x1

    const-string v2, "Director"

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v6

    .line 425
    :cond_20
    array-length v0, v6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b6

    const/4 v0, 0x0

    aget-object v0, v6, v0

    if-eqz v0, :cond_b6

    .line 426
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v1, 0x1

    const-string v2, "Video"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v9

    .line 427
    .local v9, "videos":[Ljava/lang/Object;
    array-length v0, v9

    if-nez v0, :cond_4d

    .line 428
    const-string v0, "SmartClipDataCropperImpl"

    const-string v1, "extractDefaultSmartClipData_YoutubePlayerView : Cannot find V. Retrying..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v1, 0x1

    const-string v2, "Video"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v9

    .line 432
    :cond_4d
    array-length v0, v9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9c

    const/4 v0, 0x0

    aget-object v0, v9, v0

    if-eqz v0, :cond_9c

    .line 433
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 434
    .local v8, "videoId":Ljava/lang/String;
    if-eqz v8, :cond_81

    .line 435
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 438
    :cond_81
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 439
    .local v7, "title":Ljava/lang/String;
    if-eqz v7, :cond_9a

    .line 440
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "title"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 449
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "videoId":Ljava/lang/String;
    .end local v9    # "videos":[Ljava/lang/Object;
    :cond_9a
    :goto_9a
    const/4 v0, 0x1

    return v0

    .line 443
    .restart local v9    # "videos":[Ljava/lang/Object;
    :cond_9c
    const-string v0, "SmartClipDataCropperImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The count of V is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 446
    .end local v9    # "videos":[Ljava/lang/Object;
    :cond_b6
    const-string v0, "SmartClipDataCropperImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The count of D is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a
.end method

.method protected findElementIndexFromPendingList(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)I
    .registers 5
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 255
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 256
    .local v1, "pendingCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_15

    .line 257
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_12

    .line 261
    .end local v0    # "i":I
    :goto_11
    return v0

    .line 256
    .restart local v0    # "i":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 261
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public getExtractionLevel()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    return v0
.end method

.method public getExtractionMode()I
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v0, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    .line 282
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getParentList(Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 236
    .local v0, "cur":Landroid/view/ViewParent;
    instance-of v2, p1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    move-object v0, p1

    .line 237
    check-cast v0, Landroid/view/ViewParent;

    .line 243
    :goto_e
    if-eqz v0, :cond_27

    .line 244
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1a

    move-object v2, v0

    .line 246
    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1a
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_e

    .line 239
    :cond_1f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_e

    .line 251
    :cond_27
    return-object v1
.end method

.method public getSmartClipDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepository;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method protected sendExtractionResultToSmartClipService()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 266
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "Cannot send the extraction result due to it still have pending element!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_10
    return v0

    .line 270
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v1, :cond_1c

    .line 271
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    move-result v0

    goto :goto_10

    .line 273
    :cond_1c
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "Cannot send the extraction result due to it is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .registers 12
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 291
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-nez v4, :cond_e

    .line 292
    const-string v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : extractionRequest is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v4, 0x0

    .line 334
    :goto_d
    return v4

    .line 297
    :cond_e
    if-eqz p1, :cond_1d

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v4, :cond_1d

    .line 298
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->filterMetaTagForBrowserViews(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 302
    :cond_1d
    if-eqz p1, :cond_b3

    .line 303
    const-string v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : -- Extracted SmartClip data information --"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Request Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Extraction mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-boolean v4, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    invoke-virtual {p1, v4}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->dump(Z)Z

    .line 313
    :goto_66
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "spengestureservice"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 314
    .local v3, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget-object v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-direct {v2, v4, v5, p1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;-><init>(IILcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 317
    .local v2, "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    if-eqz p1, :cond_8d

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    if-ltz v4, :cond_8d

    .line 318
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    invoke-virtual {p1, v4}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setWindowLayer(I)V

    .line 322
    :cond_8d
    :try_start_8d
    invoke-virtual {v3, v2}, Lcom/samsung/android/smartclip/SpenGestureManager;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_90} :catch_bc

    .line 332
    :goto_90
    const-string v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Elapsed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v4, 0x1

    goto/16 :goto_d

    .line 309
    .end local v2    # "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .end local v3    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :cond_b3
    const-string v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : The repository is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 323
    .restart local v2    # "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .restart local v3    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :catch_bc
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Failed to send the result! e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : Send empty response..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget-object v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;-><init>(IILcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 329
    .local v1, "emptyResponse":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    invoke-virtual {v3, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    goto :goto_90
.end method

.method public setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-virtual {p0, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->findElementIndexFromPendingList(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)I

    move-result v1

    .line 208
    .local v1, "elementIndex":I
    if-ltz v1, :cond_6e

    .line 209
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, p2

    .line 212
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 213
    .local v0, "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 214
    sget-boolean v2, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v2, :cond_50

    .line 215
    const-string v2, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPendingExtractionResult : Contains meta data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4e

    iget-boolean v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    if-nez v2, :cond_4e

    .line 222
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    :cond_4e
    move v2, v3

    .line 227
    .end local v0    # "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_4f
    return v2

    .line 217
    .restart local v0    # "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_50
    const-string v2, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPendingExtractionResult : Contains meta data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .end local v0    # "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_6e
    move v2, v4

    .line 227
    goto :goto_4f
.end method
