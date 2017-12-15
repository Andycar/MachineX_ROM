.class public Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
.super Ljava/lang/Object;
.source "SlookAirButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    }
.end annotation


# instance fields
.field private mEmptyText:Ljava/lang/CharSequence;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->addItem(Ljava/util/ArrayList;)I

    .line 38
    return-void
.end method


# virtual methods
.method public addItem(Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    :cond_9
    iput-object p1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public addItem(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;)V
    .registers 3
    .param p1, "item"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getEmptyText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mEmptyText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .registers 3
    .param p1, "idx"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 145
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    .line 147
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public insertItem(ILcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 79
    if-nez p1, :cond_a

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->addItem(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;)V

    .line 87
    :goto_9
    return-void

    .line 82
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9
.end method

.method public onDismiss(Landroid/view/View;)V
    .registers 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 211
    return-void
.end method

.method public onHide(Landroid/view/View;)V
    .registers 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 202
    return-void
.end method

.method public onHoverEnter(Landroid/view/View;)Z
    .registers 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public onHoverExit(Landroid/view/View;)V
    .registers 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 184
    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .registers 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 193
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mEmptyText:Ljava/lang/CharSequence;

    .line 157
    return-void
.end method

.method public updateItem(ILcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
