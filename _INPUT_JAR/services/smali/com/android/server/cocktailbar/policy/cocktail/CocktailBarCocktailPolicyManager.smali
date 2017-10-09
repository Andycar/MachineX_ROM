.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;
.super Ljava/lang/Object;
.source "CocktailBarCocktailPolicyManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;


# instance fields
.field private mCocktailPolicys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatableCocktailMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 35
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 36
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPrivatePolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPrivatePolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 37
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 38
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 39
    return-void
.end method

.method private findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    .registers 8
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    .line 121
    .local v1, "p":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    invoke-interface {v1, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 123
    sget-object v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMatchedPolicy: find policy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->getCocktailType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move-object v2, v1

    .line 129
    .end local v1    # "p":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    :cond_36
    return-object v2
.end method

.method public static getInstance()Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;-><init>()V

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    .line 30
    :cond_b
    sget-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mInstance:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    return-object v0
.end method

.method private setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V
    .registers 3
    .param p1, "policy"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method


# virtual methods
.method public canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .registers 9
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .prologue
    const/4 v1, 0x0

    .line 106
    if-nez p1, :cond_b

    .line 107
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canCloseCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_a
    :goto_a
    return v1

    .line 110
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 111
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_a

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    invoke-interface {v0, p1, p3, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z

    move-result v1

    goto :goto_a
.end method

.method public canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .registers 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .registers 9
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_b

    .line 93
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canShowCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_a
    :goto_a
    return v1

    .line 96
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 97
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_a

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    invoke-interface {v0, p1, p3, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z

    move-result v1

    goto :goto_a
.end method

.method public canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .registers 11
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p1, :cond_b

    .line 79
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canUpdateCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_a
    :goto_a
    return v1

    .line 82
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 83
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_a

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z

    move-result v1

    goto :goto_a
.end method

.method public disableUpdatableCocktail(II)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    .line 56
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
    if-eqz v0, :cond_d

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->disableUpdate(I)V

    .line 59
    :cond_d
    return-void
.end method

.method public enableUpdatableCocktail(II)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    .line 47
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
    if-nez v0, :cond_14

    .line 48
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    .end local v0    # "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
    invoke-direct {v0, p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;I)V

    .line 49
    .restart local v0    # "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_14
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->enableUpdate(I)V

    .line 52
    return-void
.end method

.method public isUpdatedCocktail(II)Z
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;

    .line 63
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
    if-eqz v0, :cond_f

    .line 64
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result v1

    .line 66
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public onDisableUpdatableCocktail(II)V
    .registers 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 140
    return-void
.end method

.method public onEanbleUpdatableCocktail(II)V
    .registers 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;->enableUpdatableCocktail(II)V

    .line 135
    return-void
.end method
