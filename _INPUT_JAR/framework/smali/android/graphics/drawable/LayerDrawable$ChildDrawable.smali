.class Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mId:I

.field public mInsetB:I

.field public mInsetL:I

.field public mInsetR:I

.field public mInsetT:I

.field public mThemeAttrs:[I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 962
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 965
    if-eqz p3, :cond_53

    .line 966
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 970
    :goto_14
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 971
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 972
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 973
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 974
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 975
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 976
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 977
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 978
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 979
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 980
    return-void

    .line 968
    :cond_53
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_14
.end method
