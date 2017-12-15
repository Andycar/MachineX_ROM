.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    }
.end annotation


# static fields
.field static final CROSSFADE:Z = false

.field static final FADE_DURATION:I = 0x3e8

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I

.field static final sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field mFadeStartTime:J

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field mLayoutId:I

.field mOld:Landroid/graphics/Bitmap;

.field mOldPaint:Landroid/graphics/Paint;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Landroid/appwidget/AppWidgetHostView$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationIn"    # I
    .param p3, "animationOut"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mFadeStartTime:J

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOldPaint:Landroid/graphics/Paint;

    .line 116
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 102
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 103
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 104
    return-void
.end method

.method private generateId()I
    .registers 3

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    .line 217
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .end local v0    # "id":I
    :cond_9
    return v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 173
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez p2, :cond_44

    .line 174
    new-instance p2, Landroid/graphics/Rect;

    .end local p2    # "padding":Landroid/graphics/Rect;
    invoke-direct {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 180
    .restart local p2    # "padding":Landroid/graphics/Rect;
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_48

    move-result-object v0

    .line 186
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_43

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 188
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x105004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 190
    const v4, 0x105004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 192
    const v4, 0x105004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 194
    const v4, 0x105004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 197
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_43
    :goto_43
    return-object p2

    .line 176
    :cond_44
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c

    .line 181
    :catch_48
    move-exception v1

    .line 183
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_43
.end method

.method private getRemoteContext()Landroid/content/Context;
    .registers 5

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    .line 470
    :goto_d
    return-object v1

    .line 468
    :catch_e
    move-exception v0

    .line 469
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AppWidgetHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_d
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 224
    .local v2, "parcelable":Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 225
    .local v1, "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    if-eqz v2, :cond_14

    instance-of v3, v2, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    if-eqz v3, :cond_14

    move-object v1, v2

    .line 226
    check-cast v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .line 229
    :cond_14
    if-nez v1, :cond_1c

    new-instance v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .end local v1    # "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 232
    .restart local v1    # "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    :cond_1c
    :try_start_1c
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 237
    :goto_1f
    return-void

    .line 233
    :catch_20
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v3, :cond_4c

    const-string v3, "null"

    :goto_40
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :cond_4c
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    goto :goto_40
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 211
    .local v0, "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 212
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 509
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 320
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v1, :cond_c

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 321
    .local v0, "context":Landroid/content/Context;
    :goto_6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1

    .line 320
    .end local v0    # "context":Landroid/content/Context;
    :cond_c
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_6
.end method

.method public getAppWidgetId()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .registers 14

    .prologue
    .line 536
    const/4 v1, 0x0

    .line 537
    .local v1, "defaultView":Landroid/view/View;
    const/4 v3, 0x0

    .line 540
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_2
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v10, :cond_7c

    .line 541
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    move-result-object v9

    .line 542
    .local v9, "theirContext":Landroid/content/Context;
    iput-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 543
    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 545
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v4, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 546
    sget-object v10, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v4, v10}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 547
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    .line 548
    .local v7, "manager":Landroid/appwidget/AppWidgetManager;
    iget v10, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v7, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v8

    .line 550
    .local v8, "options":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 551
    .local v6, "layoutId":I
    const-string v10, "appWidgetCategory"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 552
    const-string v10, "appWidgetCategory"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, "category":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_44

    .line 554
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 557
    .local v5, "kgLayoutId":I
    if-nez v5, :cond_7a

    .line 560
    .end local v0    # "category":I
    .end local v5    # "kgLayoutId":I
    :cond_44
    :goto_44
    const/4 v10, 0x0

    invoke-virtual {v4, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_48} :catch_84

    move-result-object v1

    .line 568
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "layoutId":I
    .end local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v9    # "theirContext":Landroid/content/Context;
    :goto_49
    if-eqz v3, :cond_73

    .line 569
    const-string v10, "AppWidgetHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error inflating AppWidget "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_73
    if-nez v1, :cond_79

    .line 574
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v1

    .line 577
    :cond_79
    return-object v1

    .restart local v0    # "category":I
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "kgLayoutId":I
    .restart local v6    # "layoutId":I
    .restart local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .restart local v8    # "options":Landroid/os/Bundle;
    .restart local v9    # "theirContext":Landroid/content/Context;
    :cond_7a
    move v6, v5

    .line 557
    goto :goto_44

    .line 562
    .end local v0    # "category":I
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "kgLayoutId":I
    .end local v6    # "layoutId":I
    .end local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v9    # "theirContext":Landroid/content/Context;
    :cond_7c
    :try_start_7c
    const-string v10, "AppWidgetHostView"

    const-string v11, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_83} :catch_84

    goto :goto_49

    .line 564
    :catch_84
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v3, v2

    goto :goto_49
.end method

.method protected getErrorView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 584
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 585
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x1040533

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 587
    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 588
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 593
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 594
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 595
    return-void
.end method

.method protected prepareView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 520
    .local v0, "requested":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_e

    .line 521
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "requested":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 525
    .restart local v0    # "requested":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 526
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 329
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 332
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 8
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 139
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 140
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 144
    if-eqz p2, :cond_1f

    .line 146
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 147
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 148
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_1f
    return-void
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 2
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 131
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 11
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    .line 342
    const/4 v4, 0x0

    .line 343
    .local v4, "recycled":Z
    const/4 v0, 0x0

    .line 344
    .local v0, "content":Landroid/view/View;
    const/4 v2, 0x0

    .line 365
    .local v2, "exception":Ljava/lang/Exception;
    if-nez p1, :cond_3d

    .line 366
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-ne v5, v6, :cond_c

    .line 435
    :cond_b
    :goto_b
    return-void

    .line 370
    :cond_c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 371
    const/4 v5, -0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 372
    iput v6, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 406
    :goto_15
    if-nez v0, :cond_29

    .line 407
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-eq v5, v8, :cond_b

    .line 411
    const-string v5, "AppWidgetHostView"

    const-string/jumbo v6, "updateAppWidget couldn\'t find any view, using error view"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 413
    iput v8, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 416
    :cond_29
    if-nez v4, :cond_31

    .line 417
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 418
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 421
    :cond_31
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v5, v0, :cond_b

    .line 422
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 423
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    goto :goto_b

    .line 376
    :cond_3d
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 377
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    .line 381
    .local v3, "layoutId":I
    if-nez v0, :cond_59

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    if-ne v3, v5, :cond_59

    .line 383
    :try_start_4d
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p1, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 384
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_58} :catch_69

    .line 385
    const/4 v4, 0x1

    .line 393
    :cond_59
    :goto_59
    if-nez v0, :cond_63

    .line 395
    :try_start_5b
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p1, v5, p0, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_62} :catch_6c

    move-result-object v0

    .line 402
    :cond_63
    :goto_63
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 403
    const/4 v5, 0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto :goto_15

    .line 387
    :catch_69
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_59

    .line 397
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_6c
    move-exception v1

    .line 398
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_63
.end method

.method public updateAppWidgetOptions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 311
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .registers 13
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .prologue
    .line 256
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    .line 257
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .registers 20
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "ignorePadding"    # Z

    .prologue
    .line 264
    if-nez p1, :cond_7

    .line 265
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "newOptions":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 268
    .restart local p1    # "newOptions":Landroid/os/Bundle;
    :cond_7
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 269
    .local v7, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v11, :cond_1a

    .line 270
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v11, v12, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 272
    :cond_1a
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    .line 274
    .local v0, "density":F
    iget v11, v7, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v0

    float-to-int v9, v11

    .line 275
    .local v9, "xPaddingDips":I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v0

    float-to-int v10, v11

    .line 277
    .local v10, "yPaddingDips":I
    if-eqz p6, :cond_90

    const/4 v11, 0x0

    :goto_37
    sub-int v5, p2, v11

    .line 278
    .local v5, "newMinWidth":I
    if-eqz p6, :cond_92

    const/4 v11, 0x0

    :goto_3c
    sub-int v4, p3, v11

    .line 279
    .local v4, "newMinHeight":I
    if-eqz p6, :cond_41

    const/4 v9, 0x0

    .end local v9    # "xPaddingDips":I
    :cond_41
    sub-int v3, p4, v9

    .line 280
    .local v3, "newMaxWidth":I
    if-eqz p6, :cond_46

    const/4 v10, 0x0

    .end local v10    # "yPaddingDips":I
    :cond_46
    sub-int v2, p5, v10

    .line 282
    .local v2, "newMaxHeight":I
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 285
    .local v8, "widgetManager":Landroid/appwidget/AppWidgetManager;
    iget v11, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v8, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v6

    .line 286
    .local v6, "oldOptions":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 287
    .local v1, "needsUpdate":Z
    const-string v11, "appWidgetMinWidth"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v5, v11, :cond_75

    const-string v11, "appWidgetMinHeight"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v4, v11, :cond_75

    const-string v11, "appWidgetMaxWidth"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v3, v11, :cond_75

    const-string v11, "appWidgetMaxHeight"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eq v2, v11, :cond_76

    .line 291
    :cond_75
    const/4 v1, 0x1

    .line 294
    :cond_76
    if-eqz v1, :cond_8f

    .line 295
    const-string v11, "appWidgetMinWidth"

    invoke-virtual {p1, v11, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v11, "appWidgetMinHeight"

    invoke-virtual {p1, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    const-string v11, "appWidgetMaxWidth"

    invoke-virtual {p1, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v11, "appWidgetMaxHeight"

    invoke-virtual {p1, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 301
    :cond_8f
    return-void

    .end local v1    # "needsUpdate":Z
    .end local v2    # "newMaxHeight":I
    .end local v3    # "newMaxWidth":I
    .end local v4    # "newMinHeight":I
    .end local v5    # "newMinWidth":I
    .end local v6    # "oldOptions":Landroid/os/Bundle;
    .end local v8    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v9    # "xPaddingDips":I
    .restart local v10    # "yPaddingDips":I
    :cond_90
    move v11, v9

    .line 277
    goto :goto_37

    .restart local v5    # "newMinWidth":I
    :cond_92
    move v11, v10

    .line 278
    goto :goto_3c
.end method

.method viewDataChanged(I)V
    .registers 7
    .param p1, "viewId"    # I

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 443
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1b

    instance-of v4, v3, Landroid/widget/AdapterView;

    if-eqz v4, :cond_1b

    move-object v1, v3

    .line 444
    check-cast v1, Landroid/widget/AdapterView;

    .line 445
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 446
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1c

    move-object v2, v0

    .line 447
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 448
    .local v2, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 456
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "baseAdapter":Landroid/widget/BaseAdapter;
    :cond_1b
    :goto_1b
    return-void

    .line 449
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1c
    if-nez v0, :cond_1b

    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v4, :cond_1b

    .line 453
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_1b
.end method
