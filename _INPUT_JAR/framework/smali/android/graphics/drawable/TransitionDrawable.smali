.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$1;,
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 89
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/graphics/drawable/TransitionDrawable$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/content/res/Resources$Theme;
    .param p4, "x3"    # Landroid/graphics/drawable/TransitionDrawable$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 97
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 98
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    .end local p1    # "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v12, 0xff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 168
    const/4 v4, 0x1

    .line 170
    .local v4, "done":Z
    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    packed-switch v8, :pswitch_data_8c

    .line 188
    :cond_c
    :goto_c
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 189
    .local v0, "alpha":I
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 190
    .local v2, "crossFade":Z
    iget-object v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 192
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-eqz v4, :cond_64

    .line 195
    if-eqz v2, :cond_1a

    if-nez v0, :cond_21

    .line 196
    :cond_1a
    aget-object v7, v1, v7

    iget-object v7, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    :cond_21
    if-ne v0, v12, :cond_2a

    .line 199
    aget-object v6, v1, v6

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    :cond_2a
    :goto_2a
    return-void

    .line 172
    .end local v0    # "alpha":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "crossFade":Z
    :pswitch_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 173
    const/4 v4, 0x0

    .line 174
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_c

    .line 178
    :pswitch_35
    iget-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_c

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    iget v9, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 181
    .local v5, "normalized":F
    cmpl-float v8, v5, v13

    if-ltz v8, :cond_62

    move v4, v6

    .line 182
    :goto_4f
    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 183
    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v8, v8

    iget v9, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v10, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_c

    :cond_62
    move v4, v7

    .line 181
    goto :goto_4f

    .line 205
    .end local v5    # "normalized":F
    .restart local v0    # "alpha":I
    .restart local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v2    # "crossFade":Z
    :cond_64
    aget-object v7, v1, v7

    iget-object v3, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6f

    .line 207
    rsub-int v7, v0, 0xff

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    :cond_6f
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    if-eqz v2, :cond_77

    .line 211
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 214
    :cond_77
    if-lez v0, :cond_86

    .line 215
    aget-object v6, v1, v6

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 221
    :cond_86
    if-nez v4, :cond_2a

    .line 222
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    goto :goto_2a

    .line 170
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_35
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 126
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 127
    return-void
.end method

.method public reverseTransition(I)V
    .registers 12
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 140
    .local v0, "time":J
    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_32

    .line 141
    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v5, :cond_29

    .line 142
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 143
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 144
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 145
    iput-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 152
    :goto_1f
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 153
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 164
    :goto_28
    return-void

    .line 147
    :cond_29
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 148
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 149
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 150
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_1f

    .line 158
    :cond_32
    iget-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-nez v5, :cond_51

    :goto_36
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 159
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 160
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_53

    move v2, v3

    :goto_41
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 161
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_55

    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v4

    :goto_4b
    long-to-int v2, v4

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 163
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_28

    :cond_51
    move v2, v3

    .line 158
    goto :goto_36

    :cond_53
    move v2, v4

    .line 160
    goto :goto_41

    .line 161
    :cond_55
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v4, v2

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    goto :goto_4b
.end method

.method public setCrossFadeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 236
    return-void
.end method

.method public startTransition(I)V
    .registers 4
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v1, 0x0

    .line 111
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 112
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 113
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 114
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 115
    iput-boolean v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 116
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 118
    return-void
.end method
