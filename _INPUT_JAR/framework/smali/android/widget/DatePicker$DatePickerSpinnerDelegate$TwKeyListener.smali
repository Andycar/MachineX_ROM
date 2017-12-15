.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;I)V
    .registers 3
    .param p2, "next_id"    # I

    .prologue
    .line 1595
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput p2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;->mNext:I

    .line 1597
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1599
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$2300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_12

    .line 1612
    :cond_11
    :goto_11
    return v1

    .line 1601
    :cond_12
    sparse-switch p2, :sswitch_data_2a

    goto :goto_11

    .line 1603
    :sswitch_16
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v3, v3, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1604
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_27
    move v1, v2

    .line 1610
    goto :goto_11

    .line 1601
    nop

    :sswitch_data_2a
    .sparse-switch
        0x17 -> :sswitch_16
        0x3d -> :sswitch_27
        0x42 -> :sswitch_27
    .end sparse-switch
.end method
