.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarStateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    return-void
.end method


# virtual methods
.method public onCocktailBarBackgroundTypeChanged(I)V
    .registers 2
    .param p1, "bgType"    # I

    .prologue
    .line 1048
    return-void
.end method

.method public onCocktailBarPositionChanged(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 1051
    return-void
.end method

.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .registers 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 1042
    return-void
.end method

.method public onCocktailBarVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 1045
    return-void
.end method
