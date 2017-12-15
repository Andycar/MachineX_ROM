.class final Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareRecentHistoryListInfo"
.end annotation


# instance fields
.field deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .registers 4
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2297
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2299
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 2300
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2301
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2302
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 6
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pExtraInfo"    # Ljava/lang/CharSequence;

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2305
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2306
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2307
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 2308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2309
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .registers 6
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pExtraInfo"    # Ljava/lang/CharSequence;
    .param p5, "pDeviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    .line 2311
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2312
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2313
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2314
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 2315
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2316
    return-void
.end method
