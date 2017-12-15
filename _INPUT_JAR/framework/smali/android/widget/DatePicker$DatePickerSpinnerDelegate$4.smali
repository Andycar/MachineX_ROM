.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 2

    .prologue
    .line 840
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 843
    const-string v2, ""

    .line 844
    .local v2, "curDate":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_60

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "day":Ljava/lang/String;
    :goto_18
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_63

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 846
    .local v5, "month":Ljava/lang/String;
    :goto_2e
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_66

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "year":Ljava/lang/String;
    :goto_44
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 848
    .local v1, "cnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v1, :cond_da

    .line 849
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 850
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_69

    .line 848
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 844
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "cnt":I
    .end local v3    # "day":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "month":Ljava/lang/String;
    .end local v6    # "year":Ljava/lang/String;
    :cond_60
    const-string v3, "01"

    goto :goto_18

    .line 845
    .restart local v3    # "day":Ljava/lang/String;
    :cond_63
    const-string v5, "01"

    goto :goto_2e

    .line 846
    .restart local v5    # "month":Ljava/lang/String;
    :cond_66
    const-string v6, "2013"

    goto :goto_44

    .line 853
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "cnt":I
    .restart local v4    # "i":I
    .restart local v6    # "year":Ljava/lang/String;
    :cond_69
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 862
    :goto_86
    add-int/lit8 v7, v1, -0x1

    if-eq v4, v7, :cond_5d

    .line 863
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    .line 855
    :cond_9e
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_86

    .line 857
    :cond_bc
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 858
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_86

    .line 866
    .end local v0    # "child":Landroid/view/View;
    :cond_da
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
