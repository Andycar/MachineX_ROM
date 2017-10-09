.class public Lcom/android/settings/ToggleImageView;
.super Landroid/widget/ImageView;
.source "ToggleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ToggleImageView$OnToggleListener;
    }
.end annotation


# instance fields
.field private mOffRexID:I

.field private mOnResID:I

.field private mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

.field private mToggleState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v0, p0, Lcom/android/settings/ToggleImageView;->mOnResID:I

    .line 40
    iput v0, p0, Lcom/android/settings/ToggleImageView;->mOffRexID:I

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/ToggleImageView;->mToggleState:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v0, p0, Lcom/android/settings/ToggleImageView;->mOnResID:I

    .line 40
    iput v0, p0, Lcom/android/settings/ToggleImageView;->mOffRexID:I

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/ToggleImageView;->mToggleState:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v0, p0, Lcom/android/settings/ToggleImageView;->mOnResID:I

    .line 40
    iput v0, p0, Lcom/android/settings/ToggleImageView;->mOffRexID:I

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/ToggleImageView;->mToggleState:Z

    .line 53
    return-void
.end method


# virtual methods
.method public setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/ToggleImageView$OnToggleListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/ToggleImageView;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    .line 67
    return-void
.end method

.method public updateToggleState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/ToggleImageView;->mToggleState:Z

    .line 62
    iget-boolean v0, p0, Lcom/android/settings/ToggleImageView;->mToggleState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/ToggleImageView;->mOnResID:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ToggleImageView;->setImageResource(I)V

    .line 63
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lcom/android/settings/ToggleImageView;->mOffRexID:I

    goto :goto_0
.end method
