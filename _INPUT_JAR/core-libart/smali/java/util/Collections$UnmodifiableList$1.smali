.class Ljava/util/Collections$UnmodifiableList$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$UnmodifiableList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/Collections$UnmodifiableList;

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Ljava/util/Collections$UnmodifiableList;I)V
    .registers 5

    .prologue
    .line 1070
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableList$1;->this$0:Ljava/util/Collections$UnmodifiableList;

    iput p2, p0, Ljava/util/Collections$UnmodifiableList$1;->val$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->this$0:Ljava/util/Collections$UnmodifiableList;

    iget-object v0, v0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    iget v1, p0, Ljava/util/Collections$UnmodifiableList$1;->val$location:I

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1074
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1078
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 1082
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1086
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 1090
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 1098
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1102
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList.1;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
