.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackQueue"
.end annotation


# instance fields
.field private mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor <init>(Landroid/view/Choreographer;)V
    .registers 2

    .prologue
    .line 782
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/Choreographer;
    .param p2, "x1"    # Landroid/view/Choreographer$1;

    .prologue
    .line 782
    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .prologue
    .line 810
    iget-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    # invokes: Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/Choreographer;->access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    .line 811
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 812
    .local v1, "entry":Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_d

    .line 813
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 829
    :goto_c
    return-void

    .line 816
    :cond_d
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1a

    .line 817
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 818
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_c

    .line 826
    :cond_18
    iget-object v1, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 821
    :cond_1a
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v2, :cond_2a

    .line 822
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v2, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_18

    .line 823
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 828
    :cond_2a
    iput-object v0, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_c
.end method

.method public extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .registers 10
    .param p1, "now"    # J

    .prologue
    const/4 v3, 0x0

    .line 790
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 791
    .local v0, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v0, :cond_b

    iget-wide v4, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_d

    :cond_b
    move-object v0, v3

    .line 806
    .end local v0    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :goto_c
    return-object v0

    .line 795
    .restart local v0    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :cond_d
    move-object v1, v0

    .line 796
    .local v1, "last":Landroid/view/Choreographer$CallbackRecord;
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 797
    .local v2, "next":Landroid/view/Choreographer$CallbackRecord;
    :goto_10
    if-eqz v2, :cond_1a

    .line 798
    iget-wide v4, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1d

    .line 799
    iput-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 805
    :cond_1a
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_c

    .line 802
    :cond_1d
    move-object v1, v2

    .line 803
    iget-object v2, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_10
.end method

.method public hasDueCallbacksLocked(J)Z
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 786
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 832
    const/4 v2, 0x0

    .line 833
    .local v2, "predecessor":Landroid/view/Choreographer$CallbackRecord;
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_3
    if-eqz v0, :cond_23

    .line 834
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 835
    .local v1, "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz p1, :cond_d

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    if-ne v3, p1, :cond_21

    :cond_d
    if-eqz p2, :cond_13

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    if-ne v3, p2, :cond_21

    .line 837
    :cond_13
    if-eqz v2, :cond_1e

    .line 838
    iput-object v1, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 842
    :goto_17
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    # invokes: Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    invoke-static {v3, v0}, Landroid/view/Choreographer;->access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    .line 846
    :goto_1c
    move-object v0, v1

    .line 847
    goto :goto_3

    .line 840
    :cond_1e
    iput-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_17

    .line 844
    :cond_21
    move-object v2, v0

    goto :goto_1c

    .line 848
    .end local v1    # "next":Landroid/view/Choreographer$CallbackRecord;
    :cond_23
    return-void
.end method
