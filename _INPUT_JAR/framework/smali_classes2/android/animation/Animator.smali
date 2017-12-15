.class public abstract Landroid/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Animator$AnimatorPauseListener;,
        Landroid/animation/Animator$AnimatorListener;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 36
    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 419
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 224
    :cond_b
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .prologue
    .line 260
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 263
    :cond_b
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public canReverse()Z
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .registers 9

    .prologue
    .line 301
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 302
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_26

    .line 303
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 304
    .local v4, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 305
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 306
    .local v3, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v3, :cond_26

    .line 307
    iget-object v6, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 310
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_26
    iget-object v6, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_4d

    .line 311
    iget-object v5, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 312
    .local v5, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 314
    .restart local v3    # "numListeners":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_38
    if-ge v2, v3, :cond_4d

    .line 315
    iget-object v6, v0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_43} :catch_46

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 319
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    .end local v5    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    :catch_46
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 318
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_4d
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public abstract getDuration()J
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getStartDelay()J
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 5

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    if-nez v3, :cond_2c

    .line 94
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    .line 95
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2c

    .line 96
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 98
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-ge v0, v1, :cond_2c

    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 104
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    :cond_2c
    return-void
.end method

.method public removeAllListeners()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 289
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 292
    :cond_c
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 293
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 296
    :cond_17
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 234
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 241
    :cond_4
    :goto_4
    return-void

    .line 237
    :cond_5
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .prologue
    .line 273
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 280
    :cond_4
    :goto_4
    return-void

    .line 276
    :cond_5
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public resume()V
    .registers 5

    .prologue
    .line 117
    iget-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    if-eqz v3, :cond_26

    .line 118
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    .line 119
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_26

    .line 120
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 122
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 123
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v1, :cond_26

    .line 124
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 128
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    :cond_26
    return-void
.end method

.method public reverse()V
    .registers 3

    .prologue
    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reverse is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .registers 2
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 471
    return-void
.end method

.method public abstract setDuration(J)Landroid/animation/Animator;
.end method

.method public abstract setInterpolator(Landroid/animation/TimeInterpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 357
    return-void
.end method

.method public setupEndValues()V
    .registers 1

    .prologue
    .line 346
    return-void
.end method

.method public setupStartValues()V
    .registers 1

    .prologue
    .line 334
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method
