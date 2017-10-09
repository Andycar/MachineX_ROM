.class Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "CocktailPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

.field final synthetic val$bEnable:Z

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;ZI)V
    .registers 4

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;->val$bEnable:Z

    iput p3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 595
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_11

    .line 596
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;->val$bEnable:Z

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;->val$keyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->wakeupCocktailBar(ZI)V

    .line 598
    :cond_11
    return-void
.end method
