.class public interface abstract Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
.super Ljava/lang/Object;
.source "CocktailPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;
    }
.end annotation


# static fields
.field public static final COCKTAIL_TYPE_CONTEXTUAL:I = 0x2

.field public static final COCKTAIL_TYPE_CONTEXTUAL_HIGH_PRIORITY:I = 0x3

.field public static final COCKTAIL_TYPE_NATIVE:I = 0x5

.field public static final COCKTAIL_TYPE_NORMAL:I = 0x1

.field public static final COCKTAIL_TYPE_PRIVATE:I = 0x4

.field public static final COCKTAIL_TYPE_UNKNOWN:I


# virtual methods
.method public abstract getCocktailType()I
.end method

.method public abstract isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z
.end method

.method public abstract isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z
.end method

.method public abstract isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
.end method

.method public abstract isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
.end method
