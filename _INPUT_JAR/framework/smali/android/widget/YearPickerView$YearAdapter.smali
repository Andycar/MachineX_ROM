.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mItemTextAppearanceResId:I

.field final synthetic this$0:Landroid/widget/YearPickerView;


# direct methods
.method public constructor <init>(Landroid/widget/YearPickerView;Landroid/content/Context;I)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .prologue
    .line 124
    iput-object p1, p0, Landroid/widget/YearPickerView$YearAdapter;->this$0:Landroid/widget/YearPickerView;

    .line 125
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 126
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextViewWithCircularIndicator;

    .line 132
    .local v1, "v":Landroid/widget/TextViewWithCircularIndicator;
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/widget/YearPickerView$YearAdapter;->mItemTextAppearanceResId:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextViewWithCircularIndicator;->setTextAppearance(Landroid/content/Context;I)V

    .line 133
    invoke-virtual {v1}, Landroid/widget/TextViewWithCircularIndicator;->requestLayout()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 135
    .local v2, "year":I
    iget-object v3, p0, Landroid/widget/YearPickerView$YearAdapter;->this$0:Landroid/widget/YearPickerView;

    # getter for: Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;
    invoke-static {v3}, Landroid/widget/YearPickerView;->access$000(Landroid/widget/YearPickerView;)Landroid/widget/DatePickerController;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/DatePickerController;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3c

    .line 136
    .local v0, "selected":Z
    :goto_2d
    invoke-virtual {v1, v0}, Landroid/widget/TextViewWithCircularIndicator;->setDrawIndicator(Z)V

    .line 137
    if-eqz v0, :cond_3b

    .line 138
    iget-object v3, p0, Landroid/widget/YearPickerView$YearAdapter;->this$0:Landroid/widget/YearPickerView;

    # getter for: Landroid/widget/YearPickerView;->mYearSelectedCircleColor:I
    invoke-static {v3}, Landroid/widget/YearPickerView;->access$100(Landroid/widget/YearPickerView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextViewWithCircularIndicator;->setCircleColor(I)V

    .line 140
    :cond_3b
    return-object v1

    .line 135
    .end local v0    # "selected":Z
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public setItemTextAppearance(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 144
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mItemTextAppearanceResId:I

    .line 145
    return-void
.end method
