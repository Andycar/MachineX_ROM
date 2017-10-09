.class public Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyPlaceListDelelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/MyPlaceListDelelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPlaceActionModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field isCheckedConfrim:[Z

.field private resource:I

.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;


# direct methods
.method public constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1
    .param p2, "_context"    # Landroid/content/Context;
    .param p3, "_resource"    # I
    .param p4, "_items"    # [Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    .line 216
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 217
    iput-object p2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->context:Landroid/content/Context;

    .line 218
    iput p3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->resource:I

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->isCheckedConfrim:[Z

    .line 221
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 228
    .local v2, "mView":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 230
    .local v0, "mLayoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->resource:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 235
    .end local v0    # "mLayoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 236
    .local v1, "mTwCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {p0, p1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->isCheckedConfrim:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    return-object v2

    .end local v1    # "mTwCheckBox":Landroid/widget/CheckBox;
    .end local v2    # "mView":Landroid/widget/LinearLayout;
    :cond_0
    move-object v2, p2

    .line 232
    check-cast v2, Landroid/widget/LinearLayout;

    .restart local v2    # "mView":Landroid/widget/LinearLayout;
    goto :goto_0
.end method

.method public setChecked(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->isCheckedConfrim:[Z

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->isCheckedConfrim:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->isCheckedConfrim:[Z

    aput-boolean p2, v0, p1

    .line 213
    return-void
.end method
