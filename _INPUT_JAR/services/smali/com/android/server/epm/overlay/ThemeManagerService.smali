.class public Lcom/android/server/epm/overlay/ThemeManagerService;
.super Lcom/android/server/epm/overlay/OverlayManagerService;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;,
        Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;
    }
.end annotation


# static fields
.field private static final COMPONENT_PREFERENCES:Ljava/lang/String; = "samsung.andorid.themes.component_preference"

.field private static final DEBUG_ELASTIC:Z = false

.field private static final PREF_ACTIVE_COMPONENTS:Ljava/lang/String; = "samsung.andorid.themes.pref_active_component"

.field private static final TAG:Ljava/lang/String;

.field static isVisible:Z


# instance fields
.field final ACTION_EVENT_ENDED:Ljava/lang/String;

.field final ACTION_EVENT_OCCUR:Ljava/lang/String;

.field private KEY_VALUE:Ljava/lang/String;

.field private final SCROLL_THRESHOLD:F

.field private activeComponentMasterPackageArr:[Ljava/lang/String;

.field private activeComponentPackageArr:[Ljava/lang/String;

.field buggy:Z

.field private componentOrder:[Ljava/lang/String;

.field public componentPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentPackageToBeInstalled:Ljava/lang/String;

.field eventIndex:I

.field eventMasterPackageName:Ljava/lang/String;

.field private expiryTime:I

.field inProgress:Z

.field private isLiveWallpaper:Z

.field private mComponentCount:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

.field mFloatingViewClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitX:F

.field private mInitY:F

.field private mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

.field private mMasterPackageName:Ljava/lang/String;

.field private mNoOfOverlays:I

.field private mOverlay:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

.field private mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

.field private mTimer:Ljava/util/Timer;

.field private mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

.field private mView:Landroid/view/View;

.field private mViewClicked:Z

.field mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private masterDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;",
            ">;"
        }
    .end annotation
.end field

.field private masterEventTimeDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private masterPackageName:Ljava/lang/String;

.field private masterStatus:Z

.field private masterThemesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private masterVersion:Ljava/lang/String;

.field private overlayCount:I

.field private overlaysForuninstall:I

.field private trialMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private trialPackage:Ljava/lang/String;

.field private wallManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const-class v0, Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    .line 1587
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;-><init>(Landroid/content/Context;)V

    .line 104
    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    .line 114
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "themes"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "lock"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "wallpaper"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "appicon"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "font"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "sound"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "appstyle"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "home"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    .line 119
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    .line 120
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    .line 122
    const-string/jumbo v1, "theme.installer.action"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_OCCUR:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "theme.uninstaller.action"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_ENDED:Ljava/lang/String;

    .line 128
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mNoOfOverlays:I

    .line 129
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlayCount:I

    .line 131
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    .line 139
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->SCROLL_THRESHOLD:F

    .line 142
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterPackageName:Ljava/lang/String;

    .line 143
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterVersion:Ljava/lang/String;

    .line 144
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    .line 145
    const-string/jumbo v1, "value"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->KEY_VALUE:Ljava/lang/String;

    .line 146
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlaysForuninstall:I

    .line 148
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 271
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 272
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    .line 1585
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    .line 1586
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    .line 1674
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$4;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mFloatingViewClickListener:Landroid/view/View$OnClickListener;

    .line 1717
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$5;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1894
    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 1895
    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    .line 159
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    .line 160
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 163
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    if-nez v1, :cond_9f

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    .line 166
    :cond_9f
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    if-nez v1, :cond_aa

    .line 167
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    .line 171
    :cond_aa
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->setStoredActiveComponents()V

    .line 172
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    if-nez v1, :cond_b8

    .line 173
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    .line 176
    :cond_b8
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    if-nez v1, :cond_c3

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    .line 182
    :cond_c3
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    if-nez v1, :cond_ce

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    .line 186
    :cond_ce
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_de

    .line 187
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 191
    :cond_de
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    if-nez v1, :cond_e9

    .line 192
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    .line 196
    :cond_e9
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    if-nez v1, :cond_f4

    .line 197
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    .line 200
    :cond_f4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, "eventFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "theme.installer.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "theme.uninstaller.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/epm/overlay/ThemeManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->showEventBubble()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/epm/overlay/ThemeManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/epm/overlay/ThemeManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/epm/overlay/ThemeManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/epm/overlay/ThemeManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/epm/overlay/ThemeManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/epm/overlay/ThemeManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/epm/overlay/ThemeManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return p1
.end method

.method static synthetic access$2310(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V

    return-void
.end method

.method private applyDefaultWallpaper()V
    .registers 7

    .prologue
    .line 1819
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 1820
    .local v4, "wallManager":Landroid/app/WallpaperManager;
    iget-boolean v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    if-eqz v5, :cond_1c

    .line 1821
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1823
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1835
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1b
    :goto_1b
    return-void

    .line 1825
    :cond_1c
    const-string v3, "/data/overlays/defalut.png"

    .line 1826
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1828
    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1b

    .line 1829
    :try_start_24
    invoke-virtual {v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_1b

    .line 1831
    :catch_28
    move-exception v0

    .line 1832
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method private applyNewWallpaper()V
    .registers 7

    .prologue
    .line 1764
    :try_start_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    if-nez v2, :cond_c

    .line 1765
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    .line 1767
    :cond_c
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 1768
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1771
    .local v1, "id":I
    if-eqz v1, :cond_27

    .line 1772
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 1781
    .end local v1    # "id":I
    :cond_27
    :goto_27
    return-void

    .line 1778
    :catch_28
    move-exception v0

    .line 1779
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method private deleteRingtoneEntry(Ljava/lang/String;Landroid/net/Uri;)I
    .registers 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 463
    const/4 v2, -0x1

    .line 464
    .local v2, "result":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v0

    .line 467
    .local v0, "lRingToneId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1a

    .line 471
    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 474
    :cond_1a
    return v2
.end method

.method private disableComponent(IZ)Z
    .registers 16
    .param p1, "order"    # I
    .param p2, "isTrial"    # Z

    .prologue
    .line 1216
    :try_start_0
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v9, v9, p1

    if-eqz v9, :cond_15

    .line 1217
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v10, v9, p1

    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_17a

    :cond_12
    :goto_12
    packed-switch v9, :pswitch_data_19c

    .line 1298
    :cond_15
    :goto_15
    :pswitch_15
    const/4 v9, 0x0

    :goto_16
    return v9

    .line 1217
    :sswitch_17
    const-string v11, "home"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x0

    goto :goto_12

    :sswitch_21
    const-string v11, "lock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x1

    goto :goto_12

    :sswitch_2b
    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x2

    goto :goto_12

    :sswitch_36
    const-string v11, "appstyle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x3

    goto :goto_12

    :sswitch_40
    const-string v11, "font"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x4

    goto :goto_12

    :sswitch_4a
    const-string v11, "appicon"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x5

    goto :goto_12

    :sswitch_54
    const-string/jumbo v11, "sound"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x6

    goto :goto_12

    :sswitch_5f
    const-string v11, "event"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x7

    goto :goto_12

    .line 1220
    :pswitch_69
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1221
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_home_theme_package"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1224
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1226
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_92

    .line 1227
    const-string v9, "com.sec.android.app.launcher"

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1229
    :cond_92
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    .line 1230
    const/4 v9, 0x1

    goto/16 :goto_16

    .line 1233
    .end local v0    # "am":Landroid/app/ActivityManager;
    :pswitch_9a
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1234
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    .line 1235
    const/4 v9, 0x1

    goto/16 :goto_16

    .line 1237
    :pswitch_ad
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1238
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_wallpaper_theme_package"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c5} :catch_ee

    .line 1242
    :try_start_c5
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wallpaper"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/WallpaperManager;

    .line 1243
    .local v8, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->clear()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d3} :catch_e9

    .line 1248
    .end local v8    # "wpm":Landroid/app/WallpaperManager;
    :goto_d3
    :try_start_d3
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path"

    const-string v11, ""

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1249
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    .line 1250
    const/4 v9, 0x1

    goto/16 :goto_16

    .line 1245
    :catch_e9
    move-exception v3

    .line 1246
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_ed} :catch_ee

    goto :goto_d3

    .line 1295
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_ee
    move-exception v3

    .line 1296
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 1253
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_f4
    const/4 v7, 0x0

    .line 1254
    .local v7, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :try_start_f5
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v9, v9, p1

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "appStyleCurrentArr":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1256
    .local v2, "currentInd":I
    if-eqz p2, :cond_132

    .line 1257
    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    .line 1261
    :goto_10a
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_11e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1262
    .local v6, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_11e

    .line 1259
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_132
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v7, Landroid/util/SparseArray;

    .restart local v7    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    goto :goto_10a

    .line 1264
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_13e
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    .line 1265
    const/4 v9, 0x1

    goto/16 :goto_16

    .line 1267
    .end local v1    # "appStyleCurrentArr":[Ljava/lang/String;
    .end local v2    # "currentInd":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :pswitch_146
    new-instance v5, Landroid/content/Intent;

    const-string v9, "FONT_THEME_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v5, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1269
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    .line 1270
    const/4 v9, 0x1

    goto/16 :goto_16

    .line 1272
    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_15a
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1273
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_appicon_theme_package"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1281
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_177} :catch_ee

    .line 1282
    const/4 v9, 0x1

    goto/16 :goto_16

    .line 1217
    :sswitch_data_17a
    .sparse-switch
        -0x2f4941e6 -> :sswitch_4a
        0x300c4f -> :sswitch_40
        0x30f4df -> :sswitch_17
        0x32c52b -> :sswitch_21
        0x5c6729a -> :sswitch_5f
        0x688c90f -> :sswitch_54
        0x46b5d030 -> :sswitch_36
        0x57e60e02 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_69
        :pswitch_9a
        :pswitch_ad
        :pswitch_f4
        :pswitch_146
        :pswitch_15a
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .registers 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1ff

    const/4 v5, -0x1

    .line 556
    const/4 v0, 0x0

    .line 558
    .local v0, "fileToBeCopied":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "fileToBeCopied":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .restart local v0    # "fileToBeCopied":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 563
    .local v1, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, p2, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 564
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 565
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 566
    invoke-static {p3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2

    .line 570
    .local v2, "stat":I
    invoke-static {v0, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v2

    .line 573
    return-object v0
.end method

.method private enableComponent(Ljava/lang/String;IIZ)Z
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "order"    # I
    .param p3, "index"    # I
    .param p4, "isTrial"    # Z

    .prologue
    .line 1302
    if-eqz p1, :cond_26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_26

    .line 1304
    const/16 v16, 0x0

    .line 1305
    .local v16, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-eqz p4, :cond_29

    .line 1306
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    .line 1311
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v19, v18, p2

    const/16 v18, -0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_4d0

    :cond_23
    :goto_23
    packed-switch v18, :pswitch_data_4f2

    .line 1448
    .end local v16    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_26
    :goto_26
    :pswitch_26
    const/16 v18, 0x0

    :goto_28
    return v18

    .line 1308
    .restart local v16    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/util/SparseArray;

    move-object/from16 v16, v0

    goto :goto_12

    .line 1311
    :sswitch_3e
    const-string v20, "home"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x0

    goto :goto_23

    :sswitch_49
    const-string v20, "lock"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x1

    goto :goto_23

    :sswitch_54
    const-string/jumbo v20, "wallpaper"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x2

    goto :goto_23

    :sswitch_60
    const-string v20, "appstyle"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x3

    goto :goto_23

    :sswitch_6b
    const-string v20, "font"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x4

    goto :goto_23

    :sswitch_76
    const-string v20, "appicon"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x5

    goto :goto_23

    :sswitch_81
    const-string/jumbo v20, "sound"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x6

    goto :goto_23

    :sswitch_8d
    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v18, 0x7

    goto :goto_23

    .line 1313
    :pswitch_98
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 1314
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1315
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "current_sec_home_theme_package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1322
    .local v3, "am":Landroid/app/ActivityManager;
    if-eqz v3, :cond_10d

    .line 1323
    const-string v18, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1325
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    .line 1327
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1331
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v13    # "pkg":Ljava/lang/String;
    :pswitch_119
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 1332
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1333
    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    .line 1336
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1340
    .end local v13    # "pkg":Ljava/lang/String;
    :pswitch_170
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 1342
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1343
    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "current_sec_wallpaper_theme_package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1345
    const-string v18, "homescreen_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/android/server/epm/overlay/ThemeManagerService;->getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "."

    const-string v20, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".png"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1347
    .local v17, "wallName":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/lockwallpaper/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v11, "locWall":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_22f

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lockscreen_wallpaper_path"

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1354
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    .line 1356
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1360
    .end local v11    # "locWall":Ljava/io/File;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "wallName":Ljava/lang/String;
    :pswitch_23b
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 1361
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_26f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_295

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1362
    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_28e} :catch_28f

    goto :goto_26f

    .line 1443
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_28f
    move-exception v4

    .line 1444
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_26

    .line 1364
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_295
    :try_start_295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, p2

    .line 1365
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1370
    .end local v9    # "i$":Ljava/util/Iterator;
    :pswitch_2c0
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 1371
    new-instance v10, Landroid/content/Intent;

    const-string v18, "FONT_THEME_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2fd
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3ec

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1373
    .local v15, "str":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1374
    .local v7, "fontPath":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1375
    .local v6, "fontArr":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v6, v18

    const-string/jumbo v19, "system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_383

    .line 1376
    const-string/jumbo v18, "system"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const-string/jumbo v18, "sip"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/DroidSans.ttf"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    :cond_364
    :goto_364
    sget-object v18, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sending Broadcast..confirmed...."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2fd

    .line 1379
    :cond_383
    const/16 v18, 0x0

    aget-object v18, v6, v18

    const-string v19, "clock"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3b6

    .line 1381
    const-string v18, "clock"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_364

    .line 1383
    :cond_3b6
    const/16 v18, 0x0

    aget-object v18, v6, v18

    const-string/jumbo v19, "numeric"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_364

    .line 1385
    const-string/jumbo v18, "numeric"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_364

    .line 1398
    .end local v6    # "fontArr":[Ljava/lang/String;
    .end local v7    # "fontPath":Ljava/lang/String;
    .end local v15    # "str":Ljava/lang/String;
    :cond_3ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, p2

    .line 1401
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1406
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_41a
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 1407
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1408
    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "current_sec_appicon_theme_package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    .line 1420
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1428
    .end local v13    # "pkg":Ljava/lang/String;
    :pswitch_484
    const/4 v12, 0x0

    .line 1429
    .local v12, "pendingIndex":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_486
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_4cb

    .line 1430
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    const-string/jumbo v19, "starttime"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1431
    .local v14, "startTime":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    const-string v19, "endtime"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1432
    .local v5, "endTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v5, v12}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4c6
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_4c6} :catch_28f

    .line 1433
    add-int/lit8 v12, v12, 0x1

    .line 1429
    add-int/lit8 v8, v8, 0x1

    goto :goto_486

    .line 1437
    .end local v5    # "endTime":Ljava/lang/String;
    .end local v14    # "startTime":Ljava/lang/String;
    :cond_4cb
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1311
    nop

    :sswitch_data_4d0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_76
        0x300c4f -> :sswitch_6b
        0x30f4df -> :sswitch_3e
        0x32c52b -> :sswitch_49
        0x5c6729a -> :sswitch_8d
        0x688c90f -> :sswitch_81
        0x46b5d030 -> :sswitch_60
        0x57e60e02 -> :sswitch_54
    .end sparse-switch

    :pswitch_data_4f2
    .packed-switch 0x0
        :pswitch_98
        :pswitch_119
        :pswitch_170
        :pswitch_23b
        :pswitch_2c0
        :pswitch_41a
        :pswitch_26
        :pswitch_484
    .end packed-switch
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .registers 15
    .param p1, "aRingToneAbsolutePath"    # Ljava/lang/String;
    .param p2, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 511
    const-wide/16 v8, -0x1

    .line 512
    .local v8, "lRingToneEntryId":J
    const/4 v7, 0x0

    .line 513
    .local v7, "lCursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 515
    .local v10, "token":J
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "lWhereClause":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 522
    if-eqz v7, :cond_45

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 523
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 524
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_44} :catch_4f
    .catchall {:try_start_7 .. :try_end_44} :catchall_5d

    move-result-wide v8

    .line 529
    :cond_45
    if-eqz v7, :cond_4b

    .line 530
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v7, 0x0

    .line 533
    :cond_4b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    .end local v3    # "lWhereClause":Ljava/lang/String;
    :goto_4e
    return-wide v8

    .line 526
    :catch_4f
    move-exception v6

    .line 527
    .local v6, "e":Ljava/lang/Exception;
    :try_start_50
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5d

    .line 529
    if-eqz v7, :cond_59

    .line 530
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v7, 0x0

    .line 533
    :cond_59
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4e

    .line 529
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_5d
    move-exception v0

    if-eqz v7, :cond_64

    .line 530
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v7, 0x0

    .line 533
    :cond_64
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private onEventOccur()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1639
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 1640
    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    .line 1641
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1643
    invoke-direct {p0, v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1644
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    .line 1639
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1650
    :cond_33
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    .line 1651
    return-void
.end method

.method private onEventPassed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1626
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_27

    .line 1627
    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 1629
    invoke-direct {p0, v0, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1630
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1631
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    .line 1626
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1634
    :cond_27
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    .line 1637
    return-void
.end method

.method private onMasterInstalled(Ljava/lang/String;Z)V
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isTrial"    # Z

    .prologue
    .line 275
    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMasterInstalled , thread id is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "--->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    if-nez v3, :cond_47

    .line 279
    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    .line 282
    :cond_47
    new-instance v18, Ljava/io/File;

    const-string v3, "/data/overlays"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v18, "overlayDir":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_59

    .line 284
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 286
    :cond_59
    new-instance v22, Ljava/io/File;

    const-string v3, "/data/overlays/lockwallpaper"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v22, "wallPaperDir":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_74

    .line 288
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdir()Z

    .line 289
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 293
    :cond_74
    new-instance v17, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v17, "jsonDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_86

    .line 295
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    .line 298
    :cond_86
    new-instance v14, Ljava/io/File;

    const-string v3, "/data/overlays/fonts"

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v14, "fontsDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 300
    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    .line 301
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-static {v14, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 303
    :cond_9d
    new-instance v20, Ljava/io/File;

    const-string v3, "/data/overlays/sound"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v20, "soundDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_af

    .line 305
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 307
    :cond_af
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 309
    const/4 v10, 0x0

    .line 311
    .local v10, "aInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_b9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 312
    .local v5, "masterContext":Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 313
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    .line 314
    .local v11, "am":Landroid/content/res/AssetManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "themes.json"

    invoke-virtual {v11, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "/data/overlays/jsonfiles"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 315
    const/16 v21, 0x0

    .line 316
    .local v21, "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-nez p2, :cond_1e2

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v21, Landroid/util/SparseArray;

    .line 331
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :goto_109
    if-eqz p2, :cond_13f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_13f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 333
    :cond_13f
    if-eqz p2, :cond_172

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_172

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    :cond_172
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_174
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_1e1

    .line 336
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 337
    .local v7, "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move/from16 v9, v16

    .line 338
    .local v9, "index":I
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_190
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_217

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 339
    .local v8, "str":Ljava/lang/String;
    if-eqz p2, :cond_1c9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 341
    :cond_1c9
    new-instance v23, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$1;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/epm/overlay/ThemeManagerService$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V
    :try_end_1dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b9 .. :try_end_1dc} :catch_1dd
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_1dc} :catch_212
    .catch Lorg/json/JSONException; {:try_start_b9 .. :try_end_1dc} :catch_21b

    goto :goto_190

    .line 350
    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "j":I
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_1dd
    move-exception v13

    .line 351
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 360
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1e1
    :goto_1e1
    return-void

    .line 321
    .restart local v5    # "masterContext":Landroid/content/Context;
    .restart local v11    # "am":Landroid/content/res/AssetManager;
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_1e2
    :try_start_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0
    :try_end_1e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e2 .. :try_end_1e8} :catch_1dd
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1e8} :catch_212
    .catch Lorg/json/JSONException; {:try_start_1e2 .. :try_end_1e8} :catch_21b

    .line 323
    :try_start_1e8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 324
    .local v12, "ct":Landroid/content/Context;
    const-string/jumbo v3, "samsung.andorid.themes.component_preference"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 325
    .local v19, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "TrialPackage"

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_20a} :catch_20c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e8 .. :try_end_20a} :catch_1dd
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_20a} :catch_212
    .catch Lorg/json/JSONException; {:try_start_1e8 .. :try_end_20a} :catch_21b

    goto/16 :goto_109

    .line 326
    .end local v12    # "ct":Landroid/content/Context;
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :catch_20c
    move-exception v13

    .line 327
    .local v13, "e":Ljava/lang/Exception;
    :try_start_20d
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_210
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20d .. :try_end_210} :catch_1dd
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_210} :catch_212
    .catch Lorg/json/JSONException; {:try_start_20d .. :try_end_210} :catch_21b

    goto/16 :goto_109

    .line 353
    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_212
    move-exception v13

    .line 354
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e1

    .line 335
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v5    # "masterContext":Landroid/content/Context;
    .restart local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "index":I
    .restart local v11    # "am":Landroid/content/res/AssetManager;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "j":I
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_217
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_174

    .line 355
    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "index":I
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "j":I
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_21b
    move-exception v13

    .line 356
    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e1
.end method

.method private removeTrialPackage(Z)V
    .registers 5
    .param p1, "switchToNormal"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1535
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 1536
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    .line 1538
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1539
    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1540
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    .line 1536
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1543
    :cond_2b
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    .line 1544
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 1546
    .end local v0    # "i":I
    :cond_33
    return-void
.end method

.method private saveDefaultWallpaper()V
    .registers 4

    .prologue
    .line 1786
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 1787
    .local v0, "wallManager":Landroid/app/WallpaperManager;
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 1788
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService$6;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/WallpaperManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1814
    :goto_19
    return-void

    .line 1812
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    goto :goto_19
.end method

.method private setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startEventThemeTime"    # Ljava/lang/String;
    .param p3, "endEventThemeTime"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1550
    const-string v8, "USER_EVENT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USER_EVENT -- startTimerForEventThemeUninstall pkgName= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1552
    .local v7, "startTimeCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1553
    .local v2, "endTimeCalendar":Ljava/util/Calendar;
    const-string v8, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1554
    .local v6, "splitsStartTime":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 1555
    .local v4, "month_start":I
    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "value of splits year--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Month --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Day-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",hours --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",minutes--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 1558
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1559
    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1560
    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1561
    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1562
    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1563
    const-string v8, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1564
    .local v5, "splitsEndTime":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 1565
    .local v3, "month_end":I
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 1566
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1567
    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1568
    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1569
    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1570
    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1571
    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "endTimecalendar value of splits year--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Month --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Day --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Hours -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",minutes-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1ca

    .line 1575
    sget-object v9, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting alarmaa "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1577
    add-int/lit8 p4, p4, 0x1

    .line 1578
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1584
    :cond_1ca
    return-void
.end method

.method private setStoredActiveComponents()V
    .registers 8

    .prologue
    .line 237
    :try_start_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 238
    .local v0, "ct":Landroid/content/Context;
    const-string/jumbo v4, "samsung.andorid.themes.component_preference"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 240
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_4b

    .line 241
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 242
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_47

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 244
    .end local v0    # "ct":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_47
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4b
    return-void
.end method

.method private setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 478
    const/4 v12, 0x0

    const/16 v13, 0x2e

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "title":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "fileAbsPath":Ljava/lang/String;
    if-lez p4, :cond_a0

    .line 481
    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 482
    .local v10, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 483
    .local v6, "newUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 485
    .local v8, "token":J
    :try_start_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->deleteRingtoneEntry(Ljava/lang/String;Landroid/net/Uri;)I

    .line 486
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "_data"

    invoke-virtual {v11, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string/jumbo v12, "title"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v12, "_size"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 490
    const-string v12, "mime_type"

    const-string v13, "audio/*"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v12, "artist"

    const-string v13, "elastic"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v13, "is_ringtone"

    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_a1

    const/4 v12, 0x1

    :goto_56
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 493
    const-string v13, "is_notification"

    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_a3

    const/4 v12, 0x1

    :goto_65
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 494
    const-string v13, "is_alarm"

    const/4 v12, 0x4

    move/from16 v0, p4

    if-ne v0, v12, :cond_a5

    const/4 v12, 0x1

    :goto_74
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 495
    const-string v12, "is_music"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_8c} :catch_a7
    .catchall {:try_start_1e .. :try_end_8c} :catchall_af

    move-result-object v6

    .line 500
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_90
    if-eqz v6, :cond_a0

    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 504
    .local v4, "ident":J
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 505
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    .end local v4    # "ident":J
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v8    # "token":J
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_a0
    return-void

    .line 492
    .restart local v6    # "newUri":Landroid/net/Uri;
    .restart local v8    # "token":J
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_a1
    const/4 v12, 0x0

    goto :goto_56

    .line 493
    :cond_a3
    const/4 v12, 0x0

    goto :goto_65

    .line 494
    :cond_a5
    const/4 v12, 0x0

    goto :goto_74

    .line 497
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_a7
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_af

    .line 500
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_90

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_af
    move-exception v12

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method private showEventBubble()V
    .registers 9

    .prologue
    const/16 v1, 0x96

    .line 1655
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 1656
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x7d3

    const v6, 0x40028

    const/4 v7, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1662
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1663
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "EventTheme"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1665
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    .line 1666
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1667
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mFloatingViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1669
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1670
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    .line 1672
    return-void
.end method

.method private startExpiryTimerForUninstall(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1512
    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$3;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    .line 1531
    .local v0, "mTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1532
    return-void
.end method

.method private storeActiveComponents()V
    .registers 8

    .prologue
    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, "ct":Landroid/content/Context;
    const-string/jumbo v4, "samsung.andorid.themes.component_preference"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 223
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_57

    .line 224
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_53

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 227
    .end local v0    # "ct":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_53
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_57
    return-void
.end method


# virtual methods
.method public changeThemeState(Ljava/lang/String;IIZ)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "order"    # I
    .param p4, "isTrial"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1135
    if-nez p4, :cond_60

    .line 1136
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 1137
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1138
    invoke-direct {p0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    .line 1140
    :cond_12
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v2, v2, p3

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1141
    :cond_22
    if-nez p3, :cond_49

    .line 1142
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_25
    if-ge v1, v4, :cond_3c

    .line 1144
    invoke-direct {p0, v1, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1145
    invoke-direct {p0, p1, v1, v3, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1146
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, v1

    .line 1142
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1150
    :cond_37
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object v5, v2, v1

    goto :goto_34

    .line 1155
    :cond_3c
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, v3

    .line 1189
    .end local v1    # "i":I
    :cond_40
    :goto_40
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    .line 1191
    :try_start_43
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    invoke-interface {v2, p1}, Landroid/app/epm/IPluginManagerCallback;->onStateChangeCompleted(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_8a

    .line 1195
    :goto_48
    return-void

    .line 1158
    :cond_49
    invoke-direct {p0, p3, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1159
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, p3

    .line 1160
    invoke-direct {p0, p1, p3, v3, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1161
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, p3

    goto :goto_40

    .line 1163
    :cond_5b
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object v5, v2, p3

    goto :goto_40

    .line 1172
    :cond_60
    if-eqz p1, :cond_40

    .line 1173
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v2, :cond_6e

    .line 1174
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1175
    invoke-direct {p0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    .line 1177
    :cond_6e
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 1178
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_71
    if-ge v1, v4, :cond_7f

    .line 1179
    const/4 v2, 0x4

    if-eq v1, v2, :cond_7c

    .line 1180
    invoke-direct {p0, v1, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1181
    invoke-direct {p0, p1, v1, v3, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    .line 1178
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 1184
    :cond_7f
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    .line 1185
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->startExpiryTimerForUninstall(Ljava/lang/String;)V

    goto :goto_40

    .line 1192
    .end local v1    # "i":I
    :catch_8a
    move-exception v0

    .line 1193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method public copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 545
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 546
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 548
    :cond_10
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 549
    return-void
.end method

.method public extractWallpaper()V
    .registers 1

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->saveDefaultWallpaper()V

    .line 1757
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->applyNewWallpaper()V

    .line 1758
    return-void
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 1203
    const/16 v2, 0x9

    new-array v1, v2, [Ljava/lang/String;

    .line 1204
    .local v1, "returnArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_44

    .line 1205
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_40

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v2, v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1204
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1208
    :cond_40
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_3d

    .line 1210
    :cond_44
    return-object v1
.end method

.method public getCategory()I
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public getComponentPackageMap()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1095
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1096
    .local v5, "tempComponentPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1097
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v3, "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1099
    .local v4, "pkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v6, v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v6, v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1101
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_71
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1103
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_75
    return-object v5
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "bitmapId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 1455
    .local v7, "appContext":Landroid/content/Context;
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 1456
    .local v6, "wpm":Landroid/app/WallpaperManager;
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1457
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1458
    .local v5, "hl":Landroid/os/Handler;
    if-eqz v2, :cond_35

    .line 1459
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/epm/overlay/ThemeManagerService$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/app/WallpaperManager;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 1504
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v5    # "hl":Landroid/os/Handler;
    .end local v6    # "wpm":Landroid/app/WallpaperManager;
    .end local v7    # "appContext":Landroid/content/Context;
    :cond_35
    :goto_35
    return-void

    .line 1499
    :catch_36
    move-exception v8

    .line 1500
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .registers 9
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "isTrial"    # Z

    .prologue
    const/4 v5, 0x0

    .line 901
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    .line 902
    if-eqz p2, :cond_13

    .line 903
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 914
    :goto_12
    return-void

    .line 905
    :cond_13
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 908
    :catch_1d
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 910
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method protected installThemes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .registers 29
    .param p1, "masterContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "str"    # Ljava/lang/String;
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 366
    .local v5, "am":Landroid/content/res/AssetManager;
    const/16 v18, -0x1

    :try_start_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_676

    :cond_d
    :goto_d
    packed-switch v18, :pswitch_data_698

    .line 460
    :cond_10
    :goto_10
    :pswitch_10
    return-void

    .line 366
    :sswitch_11
    const-string v19, "home"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x0

    goto :goto_d

    :sswitch_20
    const-string v19, "lock"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x1

    goto :goto_d

    :sswitch_2f
    const-string/jumbo v19, "wallpaper"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x2

    goto :goto_d

    :sswitch_3f
    const-string v19, "appstyle"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x3

    goto :goto_d

    :sswitch_4e
    const-string v19, "font"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x4

    goto :goto_d

    :sswitch_5d
    const-string v19, "appicon"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x5

    goto :goto_d

    :sswitch_6c
    const-string/jumbo v19, "sound"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x6

    goto :goto_d

    :sswitch_7c
    const-string v19, "event"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v18, 0x7

    goto :goto_d

    .line 368
    :pswitch_8b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10c} :catch_10e

    goto/16 :goto_10

    .line 450
    :catch_10e
    move-exception v6

    .line 451
    .local v6, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "exception in component :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 453
    .local v13, "msg":Landroid/os/Message;
    const-string v18, "appstyle"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_66e

    .line 454
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 457
    :goto_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 372
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "msg":Landroid/os/Message;
    :pswitch_154
    :try_start_154
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_10

    .line 376
    :pswitch_1d7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_10

    .line 380
    :pswitch_25a
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_25b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_10

    .line 381
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 380
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_25b

    .line 386
    .end local v11    # "i":I
    :pswitch_2e0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 387
    .local v10, "fontPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v9, "fontDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_30d

    .line 389
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 391
    :cond_30d
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_311
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_38a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 392
    .local v7, "font":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "fontArr":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v8, v18

    const-string/jumbo v19, "system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_36b

    .line 394
    const-string v18, "DroidSans.ttf"

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 395
    const-string v18, "DroidSans-Bold.ttf"

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto :goto_311

    .line 398
    :cond_36b
    const/16 v18, 0x1

    aget-object v18, v8, v18

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto :goto_311

    .line 404
    .end local v7    # "font":Ljava/lang/String;
    .end local v8    # "fontArr":[Ljava/lang/String;
    :cond_38a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    .line 407
    .end local v9    # "fontDir":Ljava/io/File;
    .end local v10    # "fontPath":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    :pswitch_397
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_10

    .line 411
    :pswitch_41a
    const-string v17, "/data/overlays/sound"

    .line 412
    .local v17, "soundPath":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v16, "soundDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_42a

    .line 414
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 416
    :cond_42a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_42e
    :goto_42e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_661

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 417
    .local v14, "sound":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "soundArr":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string/jumbo v19, "ringtone"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_49d

    .line 419
    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_42e

    .line 421
    :cond_49d
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string/jumbo v19, "notification"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4f9

    .line 422
    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_42e

    .line 424
    :cond_4f9
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_554

    .line 425
    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_42e

    .line 427
    :cond_554
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string/jumbo v19, "sceen_touch"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5a7

    .line 428
    const-string v18, "TW_Touch.ogg"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_touch_sound"

    const-string v20, "/data/overlays/sound"

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_42e

    .line 432
    :cond_5a7
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "hw_touch"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5f9

    .line 433
    const-string v18, "S_HW_Touch.ogg"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_touch_sound"

    const-string v20, "/data/overlays/sound"

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_42e

    .line 437
    :cond_5f9
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "keyboard"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_42e

    .line 438
    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "default_key_sound_path"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/data/overlays/sound/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_42e

    .line 443
    .end local v14    # "sound":Ljava/lang/String;
    .end local v15    # "soundArr":[Ljava/lang/String;
    :cond_661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_66c
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_66c} :catch_10e

    goto/16 :goto_10

    .line 456
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "soundDir":Ljava/io/File;
    .end local v17    # "soundPath":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "msg":Landroid/os/Message;
    :cond_66e
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->arg1:I

    goto/16 :goto_144

    .line 366
    :sswitch_data_676
    .sparse-switch
        -0x2f4941e6 -> :sswitch_5d
        0x300c4f -> :sswitch_4e
        0x30f4df -> :sswitch_11
        0x32c52b -> :sswitch_20
        0x5c6729a -> :sswitch_7c
        0x688c90f -> :sswitch_6c
        0x46b5d030 -> :sswitch_3f
        0x57e60e02 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_698
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_154
        :pswitch_1d7
        :pswitch_25a
        :pswitch_2e0
        :pswitch_397
        :pswitch_41a
        :pswitch_10
    .end packed-switch
.end method

.method public normalMasterInstallation(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V

    .line 268
    :cond_8
    return-void
.end method

.method public onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 261
    return-void
.end method

.method public onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 943
    return-void
.end method

.method public parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 49
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isTrial"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 642
    const/16 v18, 0x0

    .line 643
    .local v18, "is":Ljava/io/InputStream;
    const/16 v38, 0x0

    .line 644
    .local v38, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 645
    if-eqz p1, :cond_37

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "themes.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 647
    new-instance v38, Ljava/io/BufferedReader;

    .end local v38    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 655
    .restart local v38    # "reader":Ljava/io/BufferedReader;
    :goto_24
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v27, "jsonData":Ljava/lang/StringBuilder;
    :goto_29
    invoke-virtual/range {v38 .. v38}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    .local v29, "line":Ljava/lang/String;
    if-eqz v29, :cond_69

    .line 658
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 650
    .end local v27    # "jsonData":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    :cond_37
    new-instance v13, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/overlays/jsonfiles/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    .local v13, "fl":Ljava/io/File;
    new-instance v38, Ljava/io/BufferedReader;

    .end local v38    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v38    # "reader":Ljava/io/BufferedReader;
    goto :goto_24

    .line 662
    .end local v13    # "fl":Ljava/io/File;
    .restart local v27    # "jsonData":Ljava/lang/StringBuilder;
    .restart local v29    # "line":Ljava/lang/String;
    :cond_69
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 664
    .local v33, "parsedJson":Ljava/lang/String;
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 666
    .local v21, "jObject":Lorg/json/JSONObject;
    new-instance v32, Landroid/util/SparseArray;

    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    .line 667
    .local v32, "packsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const-string v2, "header"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 668
    .local v23, "jObjectHeader":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    const-string/jumbo v3, "title"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "version"

    const/16 v44, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d1

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_d1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f8

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_f8
    const/16 v34, 0x0

    .line 677
    .local v34, "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "isTrial"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 678
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 681
    :cond_10a
    const-string/jumbo v2, "themes"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 682
    .local v24, "jObjectThemeArr":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_114
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_6e9

    .line 685
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 687
    .local v11, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 689
    .local v22, "jObject1":Lorg/json/JSONObject;
    const-string v2, "lock"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 690
    .local v12, "element":Ljava/lang/String;
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v40, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_191

    .line 692
    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    const-string v2, "lock"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15b

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :cond_15b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_180

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_180
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_191

    .line 701
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 703
    :cond_191
    const-string v2, "home"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 704
    if-eqz v12, :cond_1f8

    .line 705
    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    const-string v2, "home"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c2

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e7

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_1e7
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1f8

    .line 714
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 716
    :cond_1f8
    const-string v2, "appstyle"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 717
    .local v25, "jPhoneStyleObject":Lorg/json/JSONObject;
    if-eqz v25, :cond_290

    .line 718
    const-string v2, "applications"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 719
    .local v9, "appArr":Lorg/json/JSONArray;
    if-eqz v9, :cond_226

    .line 720
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_20e
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_226

    .line 721
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 722
    .local v37, "pstylePackage":Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v19, v19, 0x1

    goto :goto_20e

    .line 726
    .end local v19    # "j":I
    .end local v37    # "pstylePackage":Ljava/lang/String;
    :cond_226
    const-string v2, "framework"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 727
    .local v14, "fwkPackage":Ljava/lang/String;
    if-eqz v14, :cond_236

    .line 728
    move-object/from16 v0, v40

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_236
    const-string v2, "appstyle"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_257

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27c

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_27c
    if-eqz p1, :cond_28b

    .line 737
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 738
    :cond_28b
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .end local v9    # "appArr":Lorg/json/JSONArray;
    .end local v14    # "fwkPackage":Ljava/lang/String;
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_290
    const-string/jumbo v2, "wallpaper"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 743
    if-eqz v12, :cond_2fd

    .line 744
    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    const-string/jumbo v2, "wallpaper"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2c5

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ec

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_2ec
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2fd

    .line 753
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 755
    :cond_2fd
    const-string v2, "appicon"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 756
    if-eqz v12, :cond_364

    .line 757
    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const-string v2, "appicon"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32e

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_32e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_353

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_353
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_364

    .line 766
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 768
    :cond_364
    const-string v2, "font"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 769
    .local v20, "jFontsObject":Lorg/json/JSONObject;
    if-eqz v20, :cond_436

    .line 770
    const-string/jumbo v2, "system"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 771
    .local v41, "sysFont":Ljava/lang/String;
    if-eqz v41, :cond_393

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 773
    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_393
    const-string v2, "clock"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 777
    .local v10, "clockFont":Ljava/lang/String;
    if-eqz v10, :cond_3b6

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clock#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 779
    move-object/from16 v0, v40

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_3b6
    const-string/jumbo v2, "numeric"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 782
    .local v31, "numFont":Ljava/lang/String;
    if-eqz v31, :cond_3df

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 784
    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_3df
    const-string v2, "font"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_400

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_425

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_425
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_436

    .line 794
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 796
    .end local v10    # "clockFont":Ljava/lang/String;
    .end local v31    # "numFont":Ljava/lang/String;
    .end local v41    # "sysFont":Ljava/lang/String;
    :cond_436
    const-string/jumbo v2, "sound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 797
    .local v26, "jSoundObject":Lorg/json/JSONObject;
    if-eqz v26, :cond_589

    .line 798
    const-string/jumbo v2, "ringtone"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 799
    .local v39, "ringSound":Ljava/lang/String;
    if-eqz v39, :cond_46a

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtone#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 801
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_46a
    const-string/jumbo v2, "notification"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 804
    .local v30, "notiSound":Ljava/lang/String;
    if-eqz v30, :cond_493

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 806
    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_493
    const-string v2, "alarm"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 809
    .local v8, "alarmSound":Ljava/lang/String;
    if-eqz v8, :cond_4b6

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 811
    move-object/from16 v0, v40

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_4b6
    const-string/jumbo v2, "sceen_touch"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 814
    .local v42, "touchSound":Ljava/lang/String;
    if-eqz v42, :cond_4df

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sceen_touch#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 816
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_4df
    const-string v2, "hw_touch"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 819
    if-eqz v42, :cond_506

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw_touch#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 821
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_506
    const-string v2, "keyboard"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 824
    if-eqz v42, :cond_52d

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyboard#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 826
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_52d
    const-string/jumbo v2, "sound"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "sound"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_551

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "sound"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "sound"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_578

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "sound"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_578
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_589

    .line 836
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 839
    .end local v8    # "alarmSound":Ljava/lang/String;
    .end local v30    # "notiSound":Ljava/lang/String;
    .end local v39    # "ringSound":Ljava/lang/String;
    .end local v42    # "touchSound":Ljava/lang/String;
    :cond_589
    const-string/jumbo v2, "thirdparty"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .line 840
    .local v28, "jsonElementArr":Lorg/json/JSONArray;
    if-eqz v28, :cond_5ca

    .line 841
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_596
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5ae

    .line 842
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    add-int/lit8 v19, v19, 0x1

    goto :goto_596

    .line 844
    :cond_5ae
    const-string/jumbo v2, "thirdparty"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    if-eqz p1, :cond_5c5

    .line 846
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 847
    :cond_5c5
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .end local v19    # "j":I
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5ca
    if-eqz v15, :cond_6e0

    .line 850
    const-string/jumbo v2, "notifyuser"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 851
    if-eqz v12, :cond_5e9

    .line 852
    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    const-string/jumbo v2, "notifyuser"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_603

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_628

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_628
    new-instance v34, Ljava/util/ArrayList;

    .end local v34    # "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .restart local v34    # "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v2, "starttime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 864
    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const-string/jumbo v2, "starttime"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v2, "theme.installer.action"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .local v17, "i1_start":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const-string v2, "index"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v36

    .line 870
    .local v36, "pi_start":Landroid/app/PendingIntent;
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "endtime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 873
    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    const-string v2, "endtime"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v2, "theme.uninstaller.action"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .local v16, "i1_end":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v2, "index"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v35

    .line 879
    .local v35, "pi_end":Landroid/app/PendingIntent;
    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v16    # "i1_end":Landroid/content/Intent;
    .end local v17    # "i1_start":Landroid/content/Intent;
    .end local v35    # "pi_end":Landroid/app/PendingIntent;
    .end local v36    # "pi_start":Landroid/app/PendingIntent;
    :cond_6e0
    move-object/from16 v0, v32

    invoke-virtual {v0, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_114

    .line 884
    .end local v11    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "element":Ljava/lang/String;
    .end local v20    # "jFontsObject":Lorg/json/JSONObject;
    .end local v22    # "jObject1":Lorg/json/JSONObject;
    .end local v25    # "jPhoneStyleObject":Lorg/json/JSONObject;
    .end local v26    # "jSoundObject":Lorg/json/JSONObject;
    .end local v28    # "jsonElementArr":Lorg/json/JSONArray;
    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6e9
    if-eqz p3, :cond_6f2

    .line 885
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    .line 892
    :goto_6f1
    return-void

    .line 888
    :cond_6f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f1
.end method

.method public parsePlugins()V
    .registers 24

    .prologue
    .line 1855
    :try_start_0
    new-instance v11, Ljava/io/File;

    const-string v20, "/data/overlays/jsonfiles"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v11, "masterFiles":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.samsung.android.themecenter"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1857
    .local v4, "ct":Landroid/content/Context;
    const-string/jumbo v20, "samsung.andorid.themes.component_preference"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1858
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const-string v20, "TrialPackage"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1859
    .local v19, "trialPkg":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_84

    .line 1860
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 1861
    .local v7, "files":[Ljava/lang/String;
    move-object v3, v7

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3d
    if-ge v9, v10, :cond_84

    aget-object v17, v3, v9

    .line 1862
    .local v17, "str":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, ".json"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1863
    .local v14, "pkgName":Ljava/lang/String;
    if-eqz v19, :cond_71

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_71

    .line 1864
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1861
    :goto_6e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 1867
    :cond_71
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_6e

    .line 1887
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "ct":Landroid/content/Context;
    .end local v7    # "files":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "masterFiles":Ljava/io/File;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v17    # "str":Ljava/lang/String;
    .end local v19    # "trialPkg":Ljava/lang/String;
    :catch_7f
    move-exception v5

    .line 1888
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1892
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    return-void

    .line 1871
    .restart local v4    # "ct":Landroid/content/Context;
    .restart local v11    # "masterFiles":Ljava/io/File;
    .restart local v15    # "prefs":Landroid/content/SharedPreferences;
    .restart local v19    # "trialPkg":Ljava/lang/String;
    :cond_84
    :try_start_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v20, v20, v21

    if-eqz v20, :cond_f7

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v12, v20, v21

    .line 1873
    .local v12, "packageName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1874
    .local v13, "pendingIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 1875
    .local v18, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_b2
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_f7

    .line 1876
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    const-string/jumbo v21, "starttime"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1877
    .local v16, "startTime":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    const-string v21, "endtime"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1878
    .local v6, "endTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1, v6, v13}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1879
    add-int/lit8 v13, v13, 0x1

    .line 1875
    add-int/lit8 v8, v8, 0x1

    goto :goto_b2

    .line 1882
    .end local v6    # "endTime":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "pendingIndex":I
    .end local v16    # "startTime":Ljava/lang/String;
    .end local v18    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_f7
    if-eqz v19, :cond_83

    .line 1883
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 1884
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_108} :catch_7f

    goto/16 :goto_83
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v19, v0

    if-nez v19, :cond_1b

    .line 957
    new-instance v19, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    .line 959
    :cond_1b
    if-nez p1, :cond_1e

    .line 1087
    :goto_1d
    return-void

    .line 961
    :cond_1e
    new-instance v5, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/overlays/jsonfiles/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".json"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    .local v5, "fl":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4b

    .line 963
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 970
    :cond_4b
    const/16 v17, 0x0

    .line 971
    .local v17, "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_166

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_166

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    .line 979
    :goto_6b
    if-eqz v17, :cond_7cf

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-lez v19, :cond_7cf

    .line 980
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_74
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_6f1

    .line 981
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 982
    .local v4, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8c
    :goto_8c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6ed

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 983
    .local v16, "str":Ljava/lang/String;
    const/16 v19, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_7d4

    :cond_a1
    :goto_a1
    packed-switch v19, :pswitch_data_7f2

    goto :goto_8c

    .line 985
    :pswitch_a5
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 986
    .local v14, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    if-eqz v19, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e1

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 988
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    if-eqz v19, :cond_10c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10c

    .line 989
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 990
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 974
    .end local v4    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "i":I
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v17, Landroid/util/SparseArray;

    .restart local v17    # "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    goto/16 :goto_6b

    .line 983
    .restart local v4    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "i":I
    .restart local v16    # "str":Ljava/lang/String;
    :sswitch_178
    const-string v20, "lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a1

    const/16 v19, 0x0

    goto/16 :goto_a1

    :sswitch_188
    const-string v20, "home"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a1

    const/16 v19, 0x1

    goto/16 :goto_a1

    :sswitch_198
    const-string/jumbo v20, "wallpaper"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a1

    const/16 v19, 0x2

    goto/16 :goto_a1

    :sswitch_1a9
    const-string v20, "appstyle"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a1

    const/16 v19, 0x3

    goto/16 :goto_a1

    :sswitch_1b9
    const-string v20, "font"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a1

    const/16 v19, 0x4

    goto/16 :goto_a1

    :sswitch_1c9
    const-string v20, "appicon"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a1

    const/16 v19, 0x5

    goto/16 :goto_a1

    :sswitch_1d9
    const-string/jumbo v20, "sound"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a1

    const/16 v19, 0x6

    goto/16 :goto_a1

    .line 995
    :pswitch_1ea
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 996
    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    if-eqz v19, :cond_226

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_226

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 998
    :cond_226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    if-eqz v19, :cond_251

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_251

    .line 999
    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1000
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 1005
    .end local v14    # "pkg":Ljava/lang/String;
    :pswitch_2ab
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1006
    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    if-eqz v19, :cond_2e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e7

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 1008
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    if-eqz v19, :cond_312

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_312

    .line 1009
    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1010
    :cond_312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1011
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "."

    const-string v21, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1012
    .local v18, "wallName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/overlays/lockwallpaper/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v13, "locWall":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_36f

    .line 1014
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 1016
    :cond_36f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 1020
    .end local v13    # "locWall":Ljava/io/File;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v18    # "wallName":Ljava/lang/String;
    :pswitch_3b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    if-eqz v19, :cond_3de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3de

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 1022
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    if-eqz v19, :cond_424

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_424

    .line 1023
    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1024
    :cond_424
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_430
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_454

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1025
    .local v15, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_430

    .line 1027
    .end local v15    # "pkgName":Ljava/lang/String;
    :cond_454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 1031
    .end local v11    # "i$":Ljava/util/Iterator;
    :pswitch_497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    if-eqz v19, :cond_4c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4c3

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 1033
    :cond_4c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    if-eqz v19, :cond_501

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_501

    .line 1034
    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1035
    :cond_501
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/overlays/fonts/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1036
    .local v7, "fontPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v6, "fontDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_53c

    .line 1038
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, "arr$":[Ljava/io/File;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_52f
    if-ge v11, v12, :cond_539

    aget-object v8, v3, v11

    .line 1039
    .local v8, "fs":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1038
    add-int/lit8 v11, v11, 0x1

    goto :goto_52f

    .line 1041
    .end local v8    # "fs":Ljava/io/File;
    :cond_539
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1043
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_53c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 1047
    .end local v6    # "fontDir":Ljava/io/File;
    .end local v7    # "fontPath":Ljava/lang/String;
    :pswitch_57f
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1048
    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    if-eqz v19, :cond_5bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5bb

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 1050
    :cond_5bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    if-eqz v19, :cond_5e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5e6

    .line 1051
    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1052
    :cond_5e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 1057
    .end local v14    # "pkg":Ljava/lang/String;
    :pswitch_640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    if-eqz v19, :cond_66c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_66c

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 1059
    :cond_66c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    if-eqz v19, :cond_6aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6aa

    .line 1060
    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    .line 1061
    :cond_6aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 980
    .end local v16    # "str":Ljava/lang/String;
    :cond_6ed
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_74

    .line 1076
    .end local v4    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget-object v19, v19, v20

    if-eqz v19, :cond_71d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_71d

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 1078
    :cond_71d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_758

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_758

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1080
    :cond_758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    if-eqz v19, :cond_784

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_784

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 1082
    :cond_784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string/jumbo v20, "themes"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_7c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string/jumbo v20, "themes"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7c2

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string/jumbo v20, "themes"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1084
    :cond_7c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    .end local v9    # "i":I
    :cond_7cf
    invoke-direct/range {p0 .. p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    goto/16 :goto_1d

    .line 983
    :sswitch_data_7d4
    .sparse-switch
        -0x2f4941e6 -> :sswitch_1c9
        0x300c4f -> :sswitch_1b9
        0x30f4df -> :sswitch_188
        0x32c52b -> :sswitch_178
        0x688c90f -> :sswitch_1d9
        0x46b5d030 -> :sswitch_1a9
        0x57e60e02 -> :sswitch_198
    .end sparse-switch

    :pswitch_data_7f2
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_1ea
        :pswitch_2ab
        :pswitch_3b2
        :pswitch_497
        :pswitch_57f
        :pswitch_640
    .end packed-switch
.end method

.method public run()V
    .registers 2

    .prologue
    .line 1898
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1899
    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$7;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    .line 2019
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2020
    return-void
.end method

.method public setCallback(Landroid/app/epm/IPluginManagerCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/epm/IPluginManagerCallback;

    .prologue
    .line 1843
    invoke-super {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;->setCallback(Landroid/app/epm/IPluginManagerCallback;)V

    .line 1844
    return-void
.end method
