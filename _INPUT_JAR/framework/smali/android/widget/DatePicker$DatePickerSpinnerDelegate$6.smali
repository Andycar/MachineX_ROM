.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
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
    .line 1516
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1518
    const/16 v0, 0x270f

    if-ne p2, v0, :cond_11

    .line 1519
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const-string v1, "EditorAction 9999 arrived"

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$2300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    .line 1520
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/4 v1, 0x1

    # setter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isMonthJan:Z
    invoke-static {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$2402(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Z)Z

    .line 1522
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
