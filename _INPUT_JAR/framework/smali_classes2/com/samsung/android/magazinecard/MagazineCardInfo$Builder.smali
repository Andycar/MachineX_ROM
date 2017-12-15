.class public Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
.super Ljava/lang/Object;
.source "MagazineCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/magazinecard/MagazineCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCardId:I

.field private mCategory:I

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mExpandedContentView:Landroid/widget/RemoteViews;

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private mSecurityLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContext:Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCardId:I

    .line 69
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mSecurityLevel:I

    .line 70
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCategory:I

    .line 71
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 72
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mExpandedContentView:Landroid/widget/RemoteViews;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/magazinecard/MagazineCardInfo;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-direct {v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo;-><init>()V

    .line 108
    .local v0, "card":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    iget v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCardId:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    .line 109
    iget v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mSecurityLevel:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    .line 110
    iget v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCategory:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    .line 111
    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mExpandedContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    .line 113
    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mLaunchIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 117
    return-object v0
.end method

.method public setCardId(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCardId:I

    .line 81
    return-object p0
.end method

.method public setCategory(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "category"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCategory:I

    .line 90
    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 94
    return-object p0
.end method

.method public setExpandedContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mExpandedContentView:Landroid/widget/RemoteViews;

    .line 98
    return-object p0
.end method

.method public setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 102
    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mSecurityLevel:I

    .line 86
    return-object p0
.end method
