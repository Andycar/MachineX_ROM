.class Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Itrs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    }
.end annotation


# static fields
.field private static final LONG_SWEEP_PROBES:I = 0x10

.field private static final SHORT_SWEEP_PROBES:I = 0x4


# instance fields
.field cycles:I

.field private head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field private sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p2, "initial":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 811
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    .line 812
    return-void
.end method


# virtual methods
.method doSomeSweeping(Z)V
    .registers 11
    .param p1, "tryHarder"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v7, 0x0

    .line 825
    if-eqz p1, :cond_18

    const/16 v5, 0x10

    .line 827
    .local v5, "probes":I
    :goto_5
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 830
    .local v6, "sweeper":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-nez v6, :cond_1a

    .line 831
    const/4 v2, 0x0

    .line 832
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 833
    .local v3, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x1

    .line 840
    .local v4, "passedGo":Z
    :goto_d
    if-lez v5, :cond_13

    .line 841
    if-nez v3, :cond_23

    .line 842
    if-eqz v4, :cond_1f

    .line 872
    :cond_13
    if-nez v3, :cond_4d

    :goto_15
    iput-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 873
    :goto_17
    return-void

    .line 825
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v3    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v4    # "passedGo":Z
    .end local v5    # "probes":I
    .end local v6    # "sweeper":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_18
    const/4 v5, 0x4

    goto :goto_5

    .line 835
    .restart local v5    # "probes":I
    .restart local v6    # "sweeper":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_1a
    move-object v2, v6

    .line 836
    .restart local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 837
    .restart local v3    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x0

    .restart local v4    # "passedGo":Z
    goto :goto_d

    .line 844
    :cond_1f
    const/4 v2, 0x0

    .line 845
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 846
    const/4 v4, 0x1

    .line 848
    :cond_23
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 849
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 850
    .local v1, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 852
    :cond_33
    const/16 v5, 0x10

    .line 854
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 855
    iput-object v7, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 856
    if-nez v2, :cond_45

    .line 857
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 858
    if-nez v1, :cond_47

    .line 860
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v7, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    goto :goto_17

    .line 865
    :cond_45
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 869
    :cond_47
    :goto_47
    move-object v3, v1

    .line 840
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    .line 867
    :cond_4b
    move-object v2, v3

    goto :goto_47

    .end local v0    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_4d
    move-object v7, v2

    .line 872
    goto :goto_15
.end method

.method elementDequeued()V
    .registers 2

    .prologue
    .line 963
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v0, :cond_a

    .line 964
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    .line 967
    :cond_9
    :goto_9
    return-void

    .line 965
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-nez v0, :cond_9

    .line 966
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    goto :goto_9
.end method

.method queueIsEmpty()V
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v3, 0x0

    .line 947
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v1, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_3
    if-eqz v1, :cond_16

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 949
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    if-eqz v0, :cond_13

    .line 950
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 951
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    .line 947
    :cond_13
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_3

    .line 954
    .end local v0    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    :cond_16
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 955
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 956
    return-void
.end method

.method register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p1, "itr":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    invoke-direct {v0, p0, p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;-><init>(Ljava/util/concurrent/ArrayBlockingQueue$Itrs;Ljava/util/concurrent/ArrayBlockingQueue$Itr;Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 881
    return-void
.end method

.method removedAt(I)V
    .registers 8
    .param p1, "removedIndex"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v5, 0x0

    .line 918
    const/4 v2, 0x0

    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v3, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_4
    if-eqz v3, :cond_26

    .line 919
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 920
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 921
    .local v1, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->removedAt(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 924
    :cond_16
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 925
    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 926
    if-nez v2, :cond_21

    .line 927
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 933
    :goto_1f
    move-object v3, v1

    .line 934
    goto :goto_4

    .line 929
    :cond_21
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_1f

    .line 931
    :cond_24
    move-object v2, v3

    goto :goto_1f

    .line 935
    .end local v0    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_26
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v4, :cond_2e

    .line 936
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 937
    :cond_2e
    return-void
.end method

.method takeIndexWrapped()V
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v5, 0x0

    .line 890
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 891
    const/4 v2, 0x0

    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v3, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_a
    if-eqz v3, :cond_2c

    .line 892
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 893
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 894
    .local v1, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->takeIndexWrapped()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 897
    :cond_1c
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 898
    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 899
    if-nez v2, :cond_27

    .line 900
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 906
    :goto_25
    move-object v3, v1

    .line 907
    goto :goto_a

    .line 902
    :cond_27
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_25

    .line 904
    :cond_2a
    move-object v2, v3

    goto :goto_25

    .line 908
    .end local v0    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_2c
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v4, :cond_34

    .line 909
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 910
    :cond_34
    return-void
.end method
