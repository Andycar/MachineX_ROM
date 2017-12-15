.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


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
    .line 869
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 872
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, "numString":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x3

    if-ge v9, v10, :cond_f

    .line 908
    :goto_e
    return-void

    .line 876
    :cond_f
    const/4 v8, -0x1

    .line 877
    .local v8, "year":I
    const/4 v2, -0x1

    .line 878
    .local v2, "month":I
    const/4 v0, -0x1

    .line 879
    .local v0, "day":I
    const-string v7, ""

    .line 880
    .local v7, "tmpStr":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string/jumbo v10, "yyyyMMMdd"

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 882
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v4

    .line 883
    .local v4, "order":[C
    array-length v6, v4

    .line 884
    .local v6, "spinnerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v6, :cond_71

    .line 885
    aget-char v9, v4, v1

    sparse-switch v9, :sswitch_data_b2

    .line 884
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 887
    :sswitch_2f
    aget-object v9, v3, v1

    if-eqz v9, :cond_42

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 888
    :goto_39
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/16 v10, 0x64

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I

    move-result v0

    .line 889
    goto :goto_2c

    .line 887
    :cond_42
    const-string v7, ""

    goto :goto_39

    .line 891
    :sswitch_45
    aget-object v9, v3, v1

    if-eqz v9, :cond_58

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 892
    :goto_4f
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/16 v10, 0x4d

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I

    move-result v2

    .line 893
    goto :goto_2c

    .line 891
    :cond_58
    const-string v7, ""

    goto :goto_4f

    .line 895
    :sswitch_5b
    aget-object v9, v3, v1

    if-eqz v9, :cond_6e

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 896
    :goto_65
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/16 v10, 0x79

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I

    move-result v8

    .line 897
    goto :goto_2c

    .line 895
    :cond_6e
    const-string v7, ""

    goto :goto_65

    .line 902
    :cond_71
    iget-object v10, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    if-lez v8, :cond_8e

    .end local v8    # "year":I
    :goto_75
    if-lez v2, :cond_9a

    add-int/lit8 v9, v2, -0x1

    :goto_79
    if-lez v0, :cond_a6

    .end local v0    # "day":I
    :goto_7b
    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V
    invoke-static {v10, v8, v9, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    .line 905
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 906
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 907
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    goto :goto_e

    .line 902
    .restart local v0    # "day":I
    .restart local v8    # "year":I
    :cond_8e
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_75

    .end local v8    # "year":I
    :cond_9a
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    goto :goto_79

    :cond_a6
    iget-object v11, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v11}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_7b

    .line 885
    :sswitch_data_b2
    .sparse-switch
        0x4d -> :sswitch_45
        0x64 -> :sswitch_2f
        0x79 -> :sswitch_5b
    .end sparse-switch
.end method
