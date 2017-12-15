.class public abstract Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;,
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    }
.end annotation


# static fields
.field public static final LOADABLE_CONTENT_CLASS:Ljava/lang/String; = "content"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final PANEL_STATE_HIDE:I = 0x1

.field public static final PANEL_STATE_VISIBLE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCocktailContext:Landroid/content/Context;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

.field private mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 90
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "cocktailContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 90
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 110
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-object v0
.end method

.method public getOnCocktailClickHander()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onChangedDisplayPolicy(I)V
    .registers 2
    .param p1, "newDisplayPolicy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    return-void
.end method

.method public onChangedReversedView(Z)V
    .registers 2
    .param p1, "isReversedViewMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    return-void
.end method

.method public abstract onClosePanel()V
.end method

.method public onOrientationChanged(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 184
    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 166
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 175
    return-void
.end method

.method public setListener(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 119
    return-void
.end method

.method public setOnCocktailClickHander(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .registers 2
    .param p1, "onCocktailClickHandler"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 134
    return-void
.end method
