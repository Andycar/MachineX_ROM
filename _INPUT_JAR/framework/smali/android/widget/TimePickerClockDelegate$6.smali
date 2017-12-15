.class Landroid/widget/TimePickerClockDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2

    .prologue
    .line 342
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const v8, 0x10203f7

    const/4 v7, 0x0

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "curTime":Ljava/lang/String;
    const/4 v4, 0x0

    .line 348
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 349
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_aa

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "hour":Ljava/lang/String;
    :goto_1c
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$500(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 352
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_ae

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "minute":Ljava/lang/String;
    :goto_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v5}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_a5

    .line 357
    const-string v0, "AM"

    .line 358
    .local v0, "ampm":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$600(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_b1

    .line 359
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$600(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_6f
    :goto_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v5, v5, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    if-eqz v5, :cond_a5

    .line 368
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$000(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 369
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v5, v5, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 376
    .end local v0    # "ampm":Ljava/lang/String;
    :cond_a5
    :goto_a5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 349
    .end local v2    # "hour":Ljava/lang/String;
    .end local v3    # "minute":Ljava/lang/String;
    :cond_aa
    const-string v2, "00"

    goto/16 :goto_1c

    .line 352
    .restart local v2    # "hour":Ljava/lang/String;
    :cond_ae
    const-string v3, "00"

    goto :goto_32

    .line 360
    .restart local v0    # "ampm":Ljava/lang/String;
    .restart local v3    # "minute":Ljava/lang/String;
    :cond_b1
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    if-eqz v5, :cond_6f

    .line 361
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 362
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_cf

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_cf
    goto :goto_6f

    .line 371
    :cond_d0
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v5, v5, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_a5
.end method
