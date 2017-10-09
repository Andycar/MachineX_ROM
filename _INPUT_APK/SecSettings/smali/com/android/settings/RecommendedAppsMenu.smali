.class public Lcom/android/settings/RecommendedAppsMenu;
.super Landroid/app/Fragment;
.source "RecommendedAppsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isFromQuickPanel:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private checkBoxMostUsedDocking:Landroid/widget/CheckBox;

.field private checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

.field private dockingDivider:Landroid/view/View;

.field private editDockingsBtn:Landroid/widget/Button;

.field private editEarphonesBtn:Landroid/widget/Button;

.field private editRoamingBtn:Landroid/widget/Button;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isTablet:Z

.field private layoutMostUsedDocking:Landroid/widget/LinearLayout;

.field private layoutMostUsedRoaming:Landroid/widget/LinearLayout;

.field private mActionBarLayout:Landroid/view/View;

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

.field private mAppNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentOrientation:I

.field private mDockingIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockingLayout:Landroid/widget/LinearLayout;

.field private mEarphonesIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mEarphonesLayout:Landroid/widget/LinearLayout;

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

.field private mIconSize:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

.field private final mRecommendedAppObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRoamingIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mRoamingLayout:Landroid/widget/LinearLayout;

.field private mv:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    .line 71
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    .line 72
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconSize:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    .line 93
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    .line 94
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    .line 127
    new-instance v0, Lcom/android/settings/RecommendedAppsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RecommendedAppsMenu$1;-><init>(Lcom/android/settings/RecommendedAppsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    .line 617
    new-instance v0, Lcom/android/settings/RecommendedAppsMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RecommendedAppsMenu$2;-><init>(Lcom/android/settings/RecommendedAppsMenu;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RecommendedAppsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsMenu;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUIForSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RecommendedAppsMenu;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "iconResId"    # I
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 690
    const/4 v5, 0x0

    .line 691
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 692
    .local v7, "packageName":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 695
    .local v0, "activityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 696
    .local v2, "cscIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 697
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 716
    :cond_0
    :goto_0
    return-object v5

    .line 699
    :cond_1
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 700
    .local v1, "appRes":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 702
    .local v6, "iconDpi":I
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v1, p1, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 703
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    goto :goto_0

    .line 706
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "iconDpi":I
    :catch_0
    move-exception v4

    .line 707
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 709
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v5, 0x0

    .line 715
    goto :goto_0

    .line 712
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v4

    .line 713
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 714
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "appInfoDB"    # Ljava/lang/String;

    .prologue
    .line 721
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 723
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 724
    if-nez v2, :cond_0

    .line 725
    const/4 v5, 0x0

    .line 733
    :goto_0
    return-object v5

    :cond_0
    move-object v3, v2

    .line 727
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 728
    .local v3, "iconBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 729
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f02ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 730
    .local v1, "height":I
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    invoke-static {v0, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 731
    .local v4, "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v2, v4

    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v3    # "iconBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    move-object v5, v2

    .line 733
    goto :goto_0
.end method

.method private loadAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appInfoDB"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 738
    .local v0, "appname":Ljava/lang/String;
    return-object v0
.end method

.method private refreshUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 535
    iget-boolean v1, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v1, :cond_2

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 538
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 543
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 546
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 547
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 548
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 552
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private refreshUIForSwitch()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 556
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "recommended_apps_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v3

    .line 558
    .local v0, "RecommendeAppState":Z
    :goto_0
    if-nez v0, :cond_3

    .line 560
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 561
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 564
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "RecommendeAppState":Z
    .end local v1    # "i":I
    :cond_0
    move v0, v4

    .line 556
    goto :goto_0

    .line 566
    .restart local v0    # "RecommendeAppState":Z
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 568
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 570
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 572
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 574
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 575
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 576
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 579
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 580
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 581
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 582
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 583
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 585
    :cond_4
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 586
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 587
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 588
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 589
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 591
    :cond_5
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 592
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 593
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 594
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 595
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 598
    :cond_6
    return-void
.end method

.method private restoreAllAppsIconInfo()V
    .locals 6

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "LauncherIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    .line 528
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 532
    :cond_0
    return-void
.end method

.method private showEarPhoneDrawable([Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 8
    .param p1, "savedAppInfoEarphones"    # [Ljava/lang/String;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "recommendedSettingsView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 494
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 495
    if-eqz p3, :cond_0

    .line 496
    const v5, 0x7f100406

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    .line 499
    :cond_0
    const v5, 0x7f040103

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 500
    .local v3, "earphonesIconLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f02ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v7, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 501
    const v5, 0x7f10024b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 502
    .local v2, "earphonesIcon":Landroid/widget/ImageView;
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 503
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lcom/android/settings/RecommendedAppsMenu;->loadAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "appname":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 494
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    :cond_1
    if-eqz v0, :cond_2

    .line 508
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 509
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 512
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    .line 514
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    .end local v0    # "appname":Ljava/lang/String;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "earphonesIcon":Landroid/widget/ImageView;
    .end local v3    # "earphonesIconLayout":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public addBlankView(Landroid/widget/LinearLayout;I)V
    .locals 5
    .param p1, "mLayout"    # Landroid/widget/LinearLayout;
    .param p2, "i"    # I

    .prologue
    const/4 v4, -0x2

    .line 787
    iget v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 788
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    .line 789
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 792
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    .line 793
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public createUI()V
    .locals 30

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const-string v27, "layout_inflater"

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 266
    .local v13, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 271
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 272
    const v16, 0x7f0401cc

    .line 276
    .local v16, "resId":I
    :goto_0
    const/16 v26, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 277
    .local v14, "recommendedSettings":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    .line 280
    .local v15, "recommendedSettingsView":Landroid/view/View;
    const v26, 0x7f100407

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->dockingDivider:Landroid/view/View;

    .line 281
    const v26, 0x7f100405

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v26, 0x7f10040b

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v26, 0x7f100410

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 288
    const v26, 0x7f100413

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/CheckBox;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    .line 289
    const v26, 0x7f100415

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/CheckBox;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    .line 290
    const v26, 0x7f100412

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    .line 291
    const v26, 0x7f100414

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    sget-object v26, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "recommended_apps_automatically_dockings"

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    const/16 v26, 0x1

    :goto_1
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    sget-object v26, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "recommended_apps_automatically_roaming"

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_earphones"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 311
    .local v24, "savedApplistEarphones":Ljava/lang/String;
    const-string v26, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 312
    .local v21, "savedAppInfoEarphones":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13, v15}, Lcom/android/settings/RecommendedAppsMenu;->showEarPhoneDrawable([Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 316
    const v26, 0x7f100408

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 317
    .local v7, "dockingLayout":Landroid/widget/FrameLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_dockings"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 318
    .local v23, "savedApplistDockings":Ljava/lang/String;
    const-string v26, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 319
    .local v20, "savedAppInfoDockings":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_7

    .line 320
    const v26, 0x7f10040c

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    .line 321
    const v26, 0x7f040103

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 322
    .local v9, "dockingsIconLayout":Landroid/view/View;
    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f02ac

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 323
    const v26, 0x7f10024b

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 324
    .local v8, "dockingsIcon":Landroid/widget/ImageView;
    aget-object v26, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 325
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    aget-object v26, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "appname":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 319
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 274
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "dockingLayout":Landroid/widget/FrameLayout;
    .end local v8    # "dockingsIcon":Landroid/widget/ImageView;
    .end local v9    # "dockingsIconLayout":Landroid/view/View;
    .end local v12    # "i":I
    .end local v14    # "recommendedSettings":Landroid/view/View;
    .end local v15    # "recommendedSettingsView":Landroid/view/View;
    .end local v16    # "resId":I
    .end local v20    # "savedAppInfoDockings":[Ljava/lang/String;
    .end local v21    # "savedAppInfoEarphones":[Ljava/lang/String;
    .end local v23    # "savedApplistDockings":Ljava/lang/String;
    .end local v24    # "savedApplistEarphones":Ljava/lang/String;
    :cond_1
    const v16, 0x7f0401cb

    .restart local v16    # "resId":I
    goto/16 :goto_0

    .line 293
    .restart local v14    # "recommendedSettings":Landroid/view/View;
    .restart local v15    # "recommendedSettingsView":Landroid/view/View;
    :cond_2
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 294
    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 302
    :cond_4
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    .line 303
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    .line 304
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    .line 305
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    goto/16 :goto_3

    .line 329
    .restart local v5    # "appname":Ljava/lang/String;
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "dockingLayout":Landroid/widget/FrameLayout;
    .restart local v8    # "dockingsIcon":Landroid/widget/ImageView;
    .restart local v9    # "dockingsIconLayout":Landroid/view/View;
    .restart local v12    # "i":I
    .restart local v20    # "savedAppInfoDockings":[Ljava/lang/String;
    .restart local v21    # "savedAppInfoEarphones":[Ljava/lang/String;
    .restart local v23    # "savedApplistDockings":Ljava/lang/String;
    .restart local v24    # "savedApplistEarphones":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 330
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 331
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 334
    :cond_6
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 341
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "dockingsIcon":Landroid/widget/ImageView;
    .end local v9    # "dockingsIconLayout":Landroid/view/View;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/high16 v27, 0x7f0d0000

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    if-eqz v26, :cond_8

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 342
    :cond_8
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    :cond_9
    const v26, 0x7f10040d

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    .line 351
    .local v19, "roamingLayout":Landroid/widget/FrameLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_roaming"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 352
    .local v25, "savedApplistRoaming":Ljava/lang/String;
    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 353
    .local v22, "savedAppInfoRoaming":[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_c

    .line 354
    const v26, 0x7f100411

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    .line 355
    const v26, 0x7f040103

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 356
    .local v18, "roamingIconLayout":Landroid/view/View;
    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f02ac

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 357
    const v26, 0x7f10024b

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 358
    .local v17, "roamingIcon":Landroid/widget/ImageView;
    aget-object v26, v22, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 359
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    aget-object v26, v22, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .restart local v5    # "appname":Ljava/lang/String;
    if-nez v6, :cond_a

    .line 353
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 363
    :cond_a
    if-eqz v5, :cond_b

    .line 364
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 365
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 368
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 375
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v17    # "roamingIcon":Landroid/widget/ImageView;
    .end local v18    # "roamingIconLayout":Landroid/view/View;
    :cond_c
    const/16 v26, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    .end local v7    # "dockingLayout":Landroid/widget/FrameLayout;
    .end local v19    # "roamingLayout":Landroid/widget/FrameLayout;
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUI()V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUIForSwitch()V

    .line 490
    :goto_9
    return-void

    .line 383
    .end local v12    # "i":I
    .end local v20    # "savedAppInfoDockings":[Ljava/lang/String;
    .end local v21    # "savedAppInfoEarphones":[Ljava/lang/String;
    .end local v22    # "savedAppInfoRoaming":[Ljava/lang/String;
    .end local v23    # "savedApplistDockings":Ljava/lang/String;
    .end local v24    # "savedApplistEarphones":Ljava/lang/String;
    .end local v25    # "savedApplistRoaming":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_earphones"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 384
    .restart local v24    # "savedApplistEarphones":Ljava/lang/String;
    const-string v26, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 385
    .restart local v21    # "savedAppInfoEarphones":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v12, v0, :cond_11

    .line 386
    const v26, 0x7f100406

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    .line 387
    const v26, 0x7f040103

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 388
    .local v11, "earphonesIconLayout":Landroid/view/View;
    const v26, 0x7f10024b

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 389
    .local v10, "earphonesIcon":Landroid/widget/ImageView;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_10

    .line 390
    aget-object v26, v21, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 391
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    aget-object v26, v21, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .restart local v5    # "appname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    .line 393
    if-nez v6, :cond_e

    .line 394
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 399
    .restart local v5    # "appname":Ljava/lang/String;
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_e
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    if-eqz v5, :cond_f

    .line 401
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 402
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 408
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 406
    :cond_10
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 413
    .end local v10    # "earphonesIcon":Landroid/widget/ImageView;
    .end local v11    # "earphonesIconLayout":Landroid/view/View;
    :cond_11
    const v26, 0x7f100408

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 414
    .local v7, "dockingLayout":Landroid/widget/RelativeLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_dockings"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 415
    .restart local v23    # "savedApplistDockings":Ljava/lang/String;
    const-string v26, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 416
    .restart local v20    # "savedAppInfoDockings":[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_d
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v12, v0, :cond_15

    .line 417
    const v26, 0x7f10040c

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    .line 418
    const v26, 0x7f040103

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 419
    .restart local v9    # "dockingsIconLayout":Landroid/view/View;
    const v26, 0x7f10024b

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 420
    .restart local v8    # "dockingsIcon":Landroid/widget/ImageView;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_14

    .line 421
    aget-object v26, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 422
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    aget-object v26, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .restart local v5    # "appname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    .line 424
    if-nez v6, :cond_12

    .line 425
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 430
    .restart local v5    # "appname":Ljava/lang/String;
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_12
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    if-eqz v5, :cond_13

    .line 432
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 433
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 439
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_13
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 437
    :cond_14
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 444
    .end local v8    # "dockingsIcon":Landroid/widget/ImageView;
    .end local v9    # "dockingsIconLayout":Landroid/view/View;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/high16 v27, 0x7f0d0000

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    if-eqz v26, :cond_16

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_17

    .line 445
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->dockingDivider:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 446
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    :cond_17
    const v26, 0x7f10040d

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 453
    .local v19, "roamingLayout":Landroid/widget/RelativeLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_roaming"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 454
    .restart local v25    # "savedApplistRoaming":Ljava/lang/String;
    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 455
    .restart local v22    # "savedAppInfoRoaming":[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_10
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v12, v0, :cond_1a

    .line 456
    const v26, 0x7f100411

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    .line 457
    const v26, 0x7f040103

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 458
    .restart local v18    # "roamingIconLayout":Landroid/view/View;
    const v26, 0x7f10024b

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 459
    .restart local v17    # "roamingIcon":Landroid/widget/ImageView;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_19

    .line 460
    aget-object v26, v22, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 461
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    .line 462
    if-nez v6, :cond_18

    .line 463
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :goto_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 468
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_18
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 470
    :cond_19
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 477
    .end local v17    # "roamingIcon":Landroid/widget/ImageView;
    .end local v18    # "roamingIconLayout":Landroid/view/View;
    :cond_1a
    const/16 v26, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 486
    .end local v7    # "dockingLayout":Landroid/widget/RelativeLayout;
    .end local v19    # "roamingLayout":Landroid/widget/RelativeLayout;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUIForSwitch()V

    goto/16 :goto_9
.end method

.method initRecommendedAppswitchBtn()V
    .locals 10

    .prologue
    const v9, 0x800015

    const/4 v8, 0x0

    const/16 v6, 0x10

    const/4 v7, -0x2

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 743
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 744
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    .line 746
    instance-of v4, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_0

    .line 747
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 749
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8, v8, v3, v8}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 750
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 752
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 757
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    .line 774
    .end local v3    # "padding":I
    :cond_0
    :goto_0
    new-instance v4, Lcom/android/settings/RecommendedAppEnabler;

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v1, v5}, Lcom/android/settings/RecommendedAppEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    .line 775
    return-void

    .line 760
    :cond_1
    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 761
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040065

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 763
    .local v0, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    instance-of v4, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_0

    .line 764
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 765
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v7, v7, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 770
    const v4, 0x7f10010e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    .line 771
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 602
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 603
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_dockings"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUI()V

    .line 615
    return-void

    :cond_1
    move v0, v2

    .line 603
    goto :goto_0

    :cond_2
    move v1, v2

    .line 604
    goto :goto_1

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_6

    .line 606
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_roaming"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_5

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v0, v2

    .line 606
    goto :goto_3

    :cond_5
    move v1, v2

    .line 607
    goto :goto_4

    .line 608
    :cond_6
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_8

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_dockings"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_7

    :goto_5
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_5

    .line 610
    :cond_8
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_roaming"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_9

    :goto_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 779
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 780
    iget v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 781
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->createUI()V

    .line 784
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sput-object v3, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    .line 101
    iput-object p0, p0, Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0f02ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconSize:I

    .line 105
    new-instance v3, Lcom/android/settings/lockscreenshortcut/IconResizer;

    sget-object v4, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    .line 107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    .line 108
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->restoreAllAppsIconInfo()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_quickpanel"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/RecommendedAppsMenu;->isFromQuickPanel:Z

    .line 111
    sget-boolean v3, Lcom/android/settings/RecommendedAppsMenu;->isFromQuickPanel:Z

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_quickpanel"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    :cond_0
    sget-object v3, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    iput-boolean v0, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    .line 120
    :goto_0
    sget-object v3, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 121
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "recommended_apps_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    .line 122
    .local v0, "RecommendeAppState":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->initRecommendedAppswitchBtn()V

    .line 123
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 125
    return-void

    .line 118
    .end local v0    # "RecommendeAppState":Z
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 121
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    .line 256
    iput-object p1, p0, Lcom/android/settings/RecommendedAppsMenu;->inflater:Landroid/view/LayoutInflater;

    .line 257
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->createUI()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 246
    sget-boolean v0, Lcom/android/settings/RecommendedAppsMenu;->isFromQuickPanel:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_quickpanel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 230
    iget-boolean v0, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    invoke-virtual {v0}, Lcom/android/settings/RecommendedAppEnabler;->pause()V

    .line 240
    :cond_1
    sget-object v0, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 139
    iget-boolean v8, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v8, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_earphones"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "savedApplistEarphones":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "savedAppInfoEarphones":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    array-length v8, v3

    iget-object v11, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-eq v8, v11, :cond_0

    .line 146
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 147
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v3, v8, v12}, Lcom/android/settings/RecommendedAppsMenu;->showEarPhoneDrawable([Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 207
    :cond_0
    iget-boolean v8, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v8, :cond_2

    .line 208
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 209
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 212
    :cond_1
    iget-object v11, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    sget-object v8, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "recommended_apps_setting"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 216
    :cond_2
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    if-eqz v8, :cond_3

    .line 217
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    invoke-virtual {v8}, Lcom/android/settings/RecommendedAppEnabler;->resume()V

    .line 219
    :cond_3
    sget-object v8, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "recommended_apps_setting"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v10, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->createUI()V

    .line 224
    return-void

    .line 152
    .end local v3    # "savedAppInfoEarphones":[Ljava/lang/String;
    .end local v6    # "savedApplistEarphones":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_earphones"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .restart local v6    # "savedApplistEarphones":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 155
    .restart local v3    # "savedAppInfoEarphones":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v13, :cond_7

    .line 156
    array-length v8, v3

    if-ge v1, v8, :cond_6

    .line 157
    aget-object v8, v3, v1

    invoke-direct {p0, v8}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_5

    .line 155
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 166
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 170
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_dockings"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "savedApplistDockings":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "savedAppInfoDockings":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v13, :cond_a

    .line 174
    array-length v8, v2

    if-ge v1, v8, :cond_9

    .line 175
    aget-object v8, v2, v1

    invoke-direct {p0, v8}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    .line 173
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 180
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 184
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 188
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_roaming"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "savedApplistRoaming":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "savedAppInfoRoaming":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_0

    .line 192
    array-length v8, v4

    if-ge v1, v8, :cond_c

    .line 193
    aget-object v8, v4, v1

    invoke-direct {p0, v8}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 195
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_b

    .line 191
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 198
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 202
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_c
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .end local v1    # "i":I
    .end local v2    # "savedAppInfoDockings":[Ljava/lang/String;
    .end local v4    # "savedAppInfoRoaming":[Ljava/lang/String;
    .end local v5    # "savedApplistDockings":Ljava/lang/String;
    .end local v7    # "savedApplistRoaming":Ljava/lang/String;
    :cond_d
    move v8, v10

    .line 212
    goto/16 :goto_0
.end method
