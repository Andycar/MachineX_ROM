.class public Lcom/android/systemui/recents/Constants$DebugFlags$App;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Constants$DebugFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation


# static fields
.field public static final DisableBackgroundCache:Z = false

.field public static final EnableDebugMode:Z = false

.field public static final EnableDevAppInfoOnLongPress:Z = true

.field public static final EnableScreenshotAppTransition:Z = false

.field public static final EnableSearchLayout:Z = false

.field public static final EnableSimulatedTaskGroups:Z = false

.field public static final EnableSystemServicesProxy:Z = false

.field public static final EnableTaskBarTouchEvents:Z = true

.field public static final EnableTaskFiltering:Z = false

.field public static final EnableTaskStackClipping:Z = true

.field public static final EnableThumbnailAlphaOnFrontmost:Z = false

.field public static final EnableTransitionThumbnailDebugMode:Z = false

.field public static final SystemServicesProxyMockPackageCount:I = 0x3

.field public static final SystemServicesProxyMockTaskCount:I = 0x64

.field public static final TaskAffiliationsGroupCount:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
