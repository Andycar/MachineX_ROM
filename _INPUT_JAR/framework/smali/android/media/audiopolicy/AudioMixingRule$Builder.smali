.class public Landroid/media/audiopolicy/AudioMixingRule$Builder;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    .line 78
    return-void
.end method


# virtual methods
.method public addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 10
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 91
    if-nez p1, :cond_c

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioAttributes argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_c
    if-eq p2, v5, :cond_29

    if-eq p2, v6, :cond_29

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal rule value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_29
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    monitor-enter v3

    .line 98
    :try_start_2c
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    .line 101
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    if-eq p2, v5, :cond_42

    if-ne p2, v6, :cond_32

    .line 104
    :cond_42
    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    if-ne v2, v4, :cond_32

    .line 105
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    if-ne v2, p2, :cond_54

    .line 107
    monitor-exit v3

    .line 119
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :goto_53
    return-object p0

    .line 110
    .restart local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contradictory rule exists for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :catchall_6d
    move-exception v2

    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_2c .. :try_end_6f} :catchall_6d

    throw v2

    .line 117
    .restart local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    :cond_70
    :try_start_70
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    invoke-direct {v4, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_70 .. :try_end_7b} :catchall_6d

    goto :goto_53
.end method

.method public build()Landroid/media/audiopolicy/AudioMixingRule;
    .registers 4

    .prologue
    .line 128
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(Ljava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule$1;)V

    return-object v0
.end method
