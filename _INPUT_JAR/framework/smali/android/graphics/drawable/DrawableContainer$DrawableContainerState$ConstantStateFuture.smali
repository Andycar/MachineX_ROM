.class Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;
.super Ljava/lang/Object;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstantStateFuture"
.end annotation


# instance fields
.field private final mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "source"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1038
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/DrawableContainer$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x1"    # Landroid/graphics/drawable/DrawableContainer$1;

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public get(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    .line 1048
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1c

    .line 1049
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1055
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :goto_a
    iget v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 1056
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1058
    iget-boolean v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    if-eqz v1, :cond_1b

    .line 1059
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1062
    :cond_1b
    return-object v0

    .line 1050
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1c
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v1, :cond_29

    .line 1051
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_a

    .line 1053
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :cond_29
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    iget-object v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_a
.end method
