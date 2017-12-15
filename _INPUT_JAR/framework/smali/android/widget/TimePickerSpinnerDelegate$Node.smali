.class Landroid/widget/TimePickerSpinnerDelegate$Node;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TimePickerSpinnerDelegate$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method public varargs constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V
    .registers 4
    .param p2, "legalKeys"    # [I

    .prologue
    .line 1203
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    iput-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mLegalKeys:[I

    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    .line 1206
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V
    .registers 3
    .param p1, "child"    # Landroid/widget/TimePickerSpinnerDelegate$Node;

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    return-void
.end method

.method public canReach(I)Landroid/widget/TimePickerSpinnerDelegate$Node;
    .registers 6
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 1222
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    move-object v0, v2

    .line 1230
    :goto_6
    return-object v0

    .line 1225
    :cond_7
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .line 1226
    .local v0, "child":Landroid/widget/TimePickerSpinnerDelegate$Node;
    invoke-virtual {v0, p1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    .end local v0    # "child":Landroid/widget/TimePickerSpinnerDelegate$Node;
    :cond_20
    move-object v0, v2

    .line 1230
    goto :goto_6
.end method

.method public containsKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 1213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 1214
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 1215
    const/4 v1, 0x1

    .line 1218
    :goto_d
    return v1

    .line 1213
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1218
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method
