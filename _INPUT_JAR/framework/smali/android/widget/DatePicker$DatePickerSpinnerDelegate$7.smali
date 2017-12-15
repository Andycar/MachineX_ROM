.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;
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
    .line 1526
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

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
    .line 1528
    const/4 v1, 0x6

    if-ne p2, v1, :cond_42

    .line 1529
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1530
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$2500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/CalendarView;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarViewShown()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1531
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 1532
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1533
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 1535
    :cond_31
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1536
    :cond_3d
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 1538
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :cond_42
    const/4 v1, 0x0

    return v1
.end method
