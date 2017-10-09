.class public Lcom/android/settings/toolbox/ToolboxMenu;
.super Landroid/app/Fragment;
.source "ToolboxMenu.java"


# static fields
.field static ACTION_MEMO:Ljava/lang/String;

.field static FLASH_ANNOTATE:Ljava/lang/String;

.field static MAGNIFIER:Ljava/lang/String;

.field static PHOTO_EDITOR:Ljava/lang/String;

.field static QUICK_CONNECT:Ljava/lang/String;

.field static SCRAPBOOK:Ljava/lang/String;

.field static S_FINDER:Ljava/lang/String;

.field static TOUCH_LIGHT:Ljava/lang/String;

.field private static isFromQuickPanel:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private KIDS:Ljava/lang/String;

.field private KNOX:Ljava/lang/String;

.field private TYPE_ALL:I

.field private applicationLayout:Landroid/widget/RelativeLayout;

.field private editBtn:Landroid/widget/Button;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAllAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentOrientation:I

.field private mEditButtonListener:Landroid/view/View$OnClickListener;

.field private mFragment:Landroid/app/Fragment;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

.field private mToolboxIcon:Landroid/widget/ImageView;

.field private mToolboxListLayout:Landroid/widget/LinearLayout;

.field private final mToolboxObserver:Landroid/database/ContentObserver;

.field private mToolboxSettingsView:Landroid/view/View;

.field private mv:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.samsung.android.app.galaxyfinder"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->S_FINDER:Ljava/lang/String;

    .line 50
    const-string v0, "com.samsung.android.sconnect"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->QUICK_CONNECT:Ljava/lang/String;

    .line 51
    const-string v0, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderAssistiveLight"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->TOUCH_LIGHT:Ljava/lang/String;

    .line 52
    const-string v0, "com.samsung.android.app.pinboard"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->SCRAPBOOK:Ljava/lang/String;

    .line 53
    const-string v0, "com.samsung.android.widgetapp.actionmemo"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->ACTION_MEMO:Ljava/lang/String;

    .line 54
    const-string v0, "com.sec.android.mimage.photoretouching"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->PHOTO_EDITOR:Ljava/lang/String;

    .line 55
    const-string v0, "com.sec.spen.flashannotate"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->FLASH_ANNOTATE:Ljava/lang/String;

    .line 56
    const-string v0, "com.sec.android.app.magnifier"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->MAGNIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    .line 81
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    .line 85
    const-string v0, "com.sec.android.app.kidshome"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KIDS:Ljava/lang/String;

    .line 86
    const-string v0, "sec.knox"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KNOX:Ljava/lang/String;

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    .line 99
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    .line 100
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    .line 101
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    .line 127
    new-instance v0, Lcom/android/settings/toolbox/ToolboxMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/toolbox/ToolboxMenu$1;-><init>(Lcom/android/settings/toolbox/ToolboxMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxObserver:Landroid/database/ContentObserver;

    .line 296
    new-instance v0, Lcom/android/settings/toolbox/ToolboxMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/toolbox/ToolboxMenu$2;-><init>(Lcom/android/settings/toolbox/ToolboxMenu;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/toolbox/ToolboxMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxMenu;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/toolbox/ToolboxMenu;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/toolbox/ToolboxMenu;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "iconResId"    # I
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 308
    const-string v7, "ToolboxMenu"

    const-string v8, "loadAppIcon (2)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 311
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 317
    .local v0, "activityName":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 318
    .local v1, "appRes":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 320
    .local v5, "iconDpi":I
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v7, v5}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v7

    invoke-virtual {v1, p1, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 321
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v7, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 332
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconDpi":I
    :cond_0
    :goto_0
    return-object v4

    .line 324
    :catch_0
    move-exception v3

    .line 325
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ToolboxMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAppIcon : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 327
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "ToolboxMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v7, "ToolboxMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAppIcon : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "appInfoDB"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 338
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    if-nez v2, :cond_0

    .line 340
    const/4 v5, 0x0

    .line 348
    :goto_0
    return-object v5

    :cond_0
    move-object v3, v2

    .line 341
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 342
    .local v3, "iconBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f02ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 344
    .local v1, "height":I
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    invoke-static {v0, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 345
    .local v4, "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v2, v4

    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v3    # "iconBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    move-object v5, v2

    .line 348
    goto :goto_0
.end method

.method private restoreToolboxAppsIconinfo()V
    .locals 13

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mPm:Landroid/content/pm/PackageManager;

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "LauncherIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "toolbox_apps"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "savedApplist":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "savedAppInfos":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 236
    .local v6, "tempTopolBox":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x20

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    .line 237
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_DEFAULT_TOOLBOX"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 241
    .local v2, "iconDpi":I
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget-object v8, Lcom/android/settings/toolbox/ToolboxMenu;->S_FINDER:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v8, "S Finder/index0"

    iget-object v9, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205f2

    iget-object v12, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v12, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget-object v8, Lcom/android/settings/toolbox/ToolboxMenu;->QUICK_CONNECT:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 246
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v8, "Quick connect/index1"

    iget-object v9, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205f1

    iget-object v12, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v12, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_1
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v8, "Torch/index2"

    iget-object v9, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205f4

    iget-object v12, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v12, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget-object v8, Lcom/android/settings/toolbox/ToolboxMenu;->PHOTO_EDITOR:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget-object v8, Lcom/android/settings/toolbox/ToolboxMenu;->FLASH_ANNOTATE:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    :cond_2
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v8, "Screen write/index3"

    iget-object v9, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205f3

    iget-object v12, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v12, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget-object v8, Lcom/android/settings/toolbox/ToolboxMenu;->MAGNIFIER:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 256
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v8, "Magnifier/index4"

    iget-object v9, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205f0

    iget-object v12, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v12, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v2    # "iconDpi":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_7

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 262
    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KIDS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KNOX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 263
    aget-object v8, v4, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 264
    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v10

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v10, v7}, Lcom/android/settings/toolbox/ToolboxMenu;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 261
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 271
    .end local v1    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method public addBlankView(Landroid/widget/LinearLayout;I)V
    .locals 5
    .param p1, "mLayout"    # Landroid/widget/LinearLayout;
    .param p2, "i"    # I

    .prologue
    const/4 v4, -0x2

    .line 423
    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 424
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    .line 425
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 428
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public createUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 376
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_3

    .line 377
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 382
    const v6, 0x7f040220

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    .line 383
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 384
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    const v7, 0x7f100405

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    .line 385
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    const v7, 0x7f1004c8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->applicationLayout:Landroid/widget/RelativeLayout;

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toolbox_apps"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "savedApplist":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "savedAppInfos":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_2

    .line 394
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    const v7, 0x7f1004ca

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    .line 395
    const v6, 0x7f040221

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 396
    .local v5, "toolboxIconLayout":Landroid/view/View;
    const v6, 0x7f100059

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    .line 397
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 398
    aget-object v6, v3, v1

    invoke-direct {p0, v6}, Lcom/android/settings/toolbox/ToolboxMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 399
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v1}, Lcom/android/settings/toolbox/ToolboxMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    .line 400
    if-nez v0, :cond_0

    .line 401
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 405
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 411
    .end local v5    # "toolboxIconLayout":Landroid/view/View;
    :cond_2
    iget v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    invoke-virtual {p0, v6}, Lcom/android/settings/toolbox/ToolboxMenu;->refreshUI(I)V

    .line 412
    .end local v1    # "i":I
    .end local v3    # "savedAppInfos":[Ljava/lang/String;
    .end local v4    # "savedApplist":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method initToolboxswitchBtn()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 353
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    .line 356
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 358
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 359
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0205e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0205e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 365
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 370
    new-instance v2, Lcom/android/settings/toolbox/ToolboxEnabler;

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/toolbox/ToolboxEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    .line 372
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 416
    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 417
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->createUI()V

    .line 420
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    .line 107
    iput-object p0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mFragment:Landroid/app/Fragment;

    .line 109
    new-instance v1, Lcom/android/settings/lockscreenshortcut/IconResizer;

    sget-object v2, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/toolbox/ToolboxMenu;->isFromQuickPanel:Z

    .line 114
    sget-boolean v1, Lcom/android/settings/toolbox/ToolboxMenu;->isFromQuickPanel:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    :cond_0
    sget-object v1, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mResolver:Landroid/content/ContentResolver;

    .line 120
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "toolbox_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 122
    .local v0, "ToolboxState":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->initToolboxswitchBtn()V

    .line 124
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    .line 183
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->createUI()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 173
    sget-boolean v0, Lcom/android/settings/toolbox/ToolboxMenu;->isFromQuickPanel:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_quickpanel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->pause()V

    .line 167
    :cond_0
    sget-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 169
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->restoreToolboxAppsIconinfo()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toolbox_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "savedApplist":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "savedAppInfos":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    .line 143
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 144
    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lcom/android/settings/toolbox/ToolboxMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 146
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 150
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v4, :cond_3

    .line 154
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v4}, Lcom/android/settings/toolbox/ToolboxEnabler;->resume()V

    .line 155
    :cond_3
    sget-object v4, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toolbox_onoff"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->createUI()V

    .line 159
    return-void
.end method

.method public refreshUI(I)V
    .locals 8
    .param p1, "checkedItem"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 273
    iget v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    if-ne p1, v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "toolbox_onoff"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v3

    .line 275
    .local v0, "ToolboxState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 279
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->applicationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "ToolboxState":Z
    .end local v1    # "i":I
    :cond_0
    move v0, v4

    .line 274
    goto :goto_0

    .line 285
    .restart local v0    # "ToolboxState":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 287
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->applicationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 288
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 290
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    .end local v0    # "ToolboxState":Z
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
