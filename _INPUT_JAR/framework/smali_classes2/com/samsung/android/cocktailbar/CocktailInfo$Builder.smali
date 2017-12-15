.class public Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "CocktailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:I

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDisplayPolicy:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 48
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 50
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 52
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 54
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    .line 89
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$002(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 90
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$102(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 91
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$202(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 92
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$302(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 93
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$402(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 94
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$502(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 95
    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "category"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 74
    return-object p0
.end method

.method public setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    .line 84
    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 79
    return-object p0
.end method

.method public setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "displayPolicy"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 69
    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 64
    return-object p0
.end method
